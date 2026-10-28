-- =====================================================================
-- MOTOR DE CALCULOS DERIVADOS - Ficha Petrichor
-- Fonte: [2.3] Sistema e Evolucao (compilacao .bib) + Tutorial de Ficha
--
-- Todas as funcoes sao PURAS (recebem uma tabela de entrada, devolvem um
-- numero) para poderem ser chamadas tanto pelo script da ficha quanto
-- testadas isoladamente fora do Firecast. A ficha (ficha.lfm) e responsavel
-- por ler os campos do "sheet", montar o "ctx" e escrever o resultado de
-- volta no campo calculado.
--
-- PREMISSA A VALIDAR COM A MESA: nas formulas do documento fonte que somam
-- "+ Rank" (Deslocamento, Iniciativa, AP, Mochila), assumimos que "Rank"
-- entra como valor numerico E=1, D=2, C=3, B=4, A=5, EX=6 (DadosSistema.
-- ordemRank). Se a intencao da mesa for outra, e so trocar o mapeamento em
-- DadosSistema.ordemRank que todos os calculos acompanham.
-- =====================================================================

local DadosSistema = require("dadosSistema.lua")
local Calculos = {}

local function n(v) return tonumber(v) or 0 end
local function rankNumero(rankLetra) return DadosSistema.ordemRank[rankLetra] or 1 end

-- ---------------------------------------------------------------------
-- Pontos de vida (Hp) = 15 + Dado de vida + (Constituicao/2 * Nivel)
-- "Dado de vida" = maximo do dado de vida da raca (campo manual ate os
-- catalogos de raca serem embutidos na ficha).
-- "progressaoVidaExtra" = soma das rolagens/metades acumuladas a cada level up.
-- ---------------------------------------------------------------------
function Calculos.hp(ctx)
    local base = 15 + n(ctx.dadoVida) + math.floor((n(ctx.constituicao) / 2) * n(ctx.nivel))
    local adicional = 0
    if n(ctx.constituicaoSobrenatural) >= 5 then
        adicional = 4 * n(ctx.nivel)
    elseif n(ctx.constituicaoSobrenatural) >= 3 then
        adicional = 1 * n(ctx.nivel)
    end
    return base + n(ctx.progressaoVidaExtra) + adicional + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Pontos de mana (Mp) - somente para quem tem 'Coracao de mana'.
-- Mp = 15 + (soma acumulada por aniversario, faixa etaria) + (Nivel * 2)
-- Faixas: 1-50 anos = 2.0/ano | 51-99 = 1.5/ano | 100-300 = 0.5/ano | 301+ = 0.25/ano
-- ---------------------------------------------------------------------
function Calculos.baseManaPorIdade(idade)
    idade = math.max(0, math.floor(n(idade)))
    local total = 0.0
    for ano = 1, idade do
        if ano <= 50 then
            total = total + 2.0
        elseif ano <= 99 then
            total = total + 1.5
        elseif ano <= 300 then
            total = total + 0.5
        else
            total = total + 0.25
        end
    end
    return total
end

function Calculos.mp(ctx)
    if not ctx.temCoracaoDeMana then return 0 end
    local baseIdade = Calculos.baseManaPorIdade(ctx.idade)
    local total = 15 + baseIdade + (n(ctx.nivel) * 2)
    return math.floor(total + 0.5) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Pontos de aura (Ap) = [(20 + Sabedoria + Nivel) * Rank] + dado por nivel
-- ---------------------------------------------------------------------
function Calculos.ap(ctx)
    local base = (20 + n(ctx.sabedoria) + n(ctx.nivel)) * rankNumero(ctx.rank)
    return base + n(ctx.dadoPorNivelAcumulado) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Pontos de prana - exclusivo de BRUXAS (qualidade "Linhagem de Unaris").
--
-- ATENCAO A DISTINCAO, que e facil de confundir:
--   * "Coracao de Mana" e o que todo mago tem, e libera MANA. A Aura dele
--     continua existindo e sendo calculada normalmente.
--   * "Linhagem de Unaris" e a bruxa. Nela, Mana e Aura sao somadas numa
--     terceira barra, o PRANA, que e a energia que ela gasta.
-- Nenhuma das duas zera a Aura: a energia continua lá, o que muda e de
-- qual barra a personagem gasta.
-- ---------------------------------------------------------------------
function Calculos.prana(ctx)
    if not ctx.ehBruxa then return 0 end
    return n(ctx.mp) + n(ctx.ap) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Pontos de vitae (Pv) - apenas para vampiros.
--
-- Tutorial de Ficha, verbete "Pontos de vitae (Pv)":
--   "Para os personagens que sao vampiros, o Vitae representa a energia
--    sanguinea que possuem, utilizada para realizar todos os seus feitos
--    NO LUGAR DA AURA E DA MANA. (...) O calculo do maximo de Vitae que
--    estes seres podem se abaster e pela conta:
--    [10 + (Constituicao * 1.5) + (Rank * 30)]"
--
-- VAMPIRA + LINHAGEM DE UNARIS (a "vampibruxa"). O livro nao escreve a
-- combinacao, mas os dois verbetes se encaixam sem sobra:
--
--   Tutorial, "Pontos de mana (Mp)": "Para as personagens com a qualidade
--   Linhagem de Unaris, os Pontos de mana e Pontos de aura serao FUNDIDOS
--   EM UMA COISA SO dentro do MP, enquanto a Aura permanecera sem valor."
--
-- Ou seja: na bruxa nao existem mais duas reservas, existe UMA (o Prana).
-- E no vampiro o Vitae fica "no lugar da Aura e da Mana" - no lugar,
-- portanto, dessa unica reserva. Logo a reserva fundida entra DENTRO do
-- Vitae; ela nao fica ao lado dele.
--
-- DECISAO DA MESA (22/08/2026, mestre): confirmado -
--     Vitae da vampibruxa = 10 + (Con * 1,5) + (Rank * 30) + Prana
-- e o card de Prana some da tela, porque nao ha uma segunda barra para
-- gastar. O Prana continua sendo calculado: ele e uma PARCELA do Vitae.
--
-- Ate a v0.34.3 o Prana era exibido como uma segunda barra ao lado do
-- Vitae. A visibilidade era o sintoma; o erro de verdade era este calculo,
-- que ignorava o Prana.
-- ---------------------------------------------------------------------
-- ---------------------------------------------------------------------
-- DECISAO DA MESA, 06/09/2026 - o mestre, revogando o que estava aqui:
--
--   "para o vampiro tudo que vale e o vitae, e ele pode se beneficiar
--    tanto da qualidade aura expandida, quanto vigor expandido (...)
--    retira o campo de vida dos vampiros, deixa so vitae"
--
--   Vitae = (base + Vigor expandido) + [(Aura + Aura expandida) + Mana]
--
-- O QUE ISSO REVOGA. Ate a v0.48.0 este projeto seguia a leitura literal
-- do livro (3.2.md:74): o Vitae ficava "no lugar da Aura e da Mana", e o
-- vampiro mantinha uma barra de Vida separada; Vigor expandido incidia na
-- Vida e Aura expandida na Aura (decisao de 22/08/2026). O mestre manda
-- sobre o livro, e mandou: o vampiro NAO tem Vida, e as duas qualidades
-- pagam no Vitae.
--
-- O QUE ISSO SIMPLIFICA. O colchete e exatamente o Prana ja existente
-- (mana + aura). Antes, so a vampibruxa somava o Prana ao Vitae; agora
-- TODO vampiro soma Aura e Mana, e por isso ele se beneficia da Aura
-- expandida mesmo sem a Linhagem de Unaris - era ali que o beneficio se
-- perdia calado, porque a Aura do vampiro nao alimentava nada.
--
-- ORDEM DE OPERACOES, conforme a formula do mestre: o percentual do Vigor
-- multiplica SO A BASE. A Aura expandida nao multiplica o Vitae inteiro:
-- ela ja veio somada dentro da Aura, e aplica-la de novo aqui dobraria o
-- mesmo numero.
-- ---------------------------------------------------------------------
--
-- DEVOLVE TRES VALORES: total, base e o ganho das qualidades. Os dois
-- extras existem para a CONTA do card, e nao para calcular nada de novo -
-- e o que impede a linha da tela de recalcular a formula por conta
-- propria e divergir (foi assim que, ate a v0.41.1, a conta do
-- deslocamento mostrava 16 e o card 6).
--
-- O ganho vai para a conta como PARCELA ABSOLUTA, e nao como "x 1,30".
-- Motivo medido: o avaliador da bateria arredonda para baixo TODO grupo
-- entre parenteses, entao "(10 + Con 5 x 1,5 + rank 2 x 30) x 1,3" leria
-- 77 x 1,3 enquanto o codigo faz 77,5 x 1,3 - e a conta deixaria de
-- fechar exatamente nos vampiros de Constituicao impar.
-- PROGRESSAO DE VIDA: livro/por-documento/3.2.md, "Pontos de vida":
-- "cada vez que o personagem passa de nível, poderá ser rolado um dado
-- adicional de vida ou considerado a metade do valor do mesmo, somado
-- a pontuação inicial." O livro nao estende isto ao Vitae explicitamente.
-- DECISAO DA MESA, 19/10/2026: a vida acumulada por nivel entra na BASE
-- do Vitae, ANTES do percentual do Vigor (20 com +30% acrescenta 26).
-- Usa o mesmo campo do Hp; nao soma o Hp inteiro nem multiplica a reserva.
function Calculos.pv(ctx)
    if not ctx.ehVampiro then return 0, 0, 0 end
    local base = 10 + (n(ctx.constituicao) * 1.5) + (rankNumero(ctx.rank) * 30)
        + n(ctx.progressaoVidaExtra)
    local ganho = base * (n(ctx.hpPercent) / 100)
    -- ctx.reserva = mana + aura, a aura ja com o percentual dela dentro.
    -- Calculada ANTES do Vitae em recalcularTudo(); mover o bloco faz o
    -- Vitae sair sem a parcela, e o numero continua "plausivel".
    local total = math.floor(base + ganho + n(ctx.reserva) + 0.5) + n(ctx.ajusteManual)
    return total, base, ganho
end

-- ---------------------------------------------------------------------
-- Deslocamento (metros) = deslocamento base da raca + Destreza + Rank
--
-- Tutorial de Ficha, verbete "Deslocamento (metros)":
--   "[Deslocamento padrao da raca + Destreza + Rank]"
--
-- MODOS. As racas declaram o deslocamento em modos - Aarakocras
-- "10m (terrestre) / 20m (aéreo)", Sereias "8m (terrestre) / 24m
-- (aquático)". O livro escreve a conta uma vez so, no verbete geral, e nao
-- repete para voo e nado.
--
-- REGRA DA MESA (21/08/2026): cada modo usa a MESMA conta, trocando so o
-- valor base. Voo de Aarakocra = 20 + Destreza + Rank.
-- ---------------------------------------------------------------------
function Calculos.deslocamentoModo(ctx)
    return n(ctx.baseModo) + n(ctx.destreza) + rankNumero(ctx.rank) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- NADO e ESCALADA sem base racial = METADE DO DESLOCAMENTO
--
-- O LIVRO NAO TEM REGRA. Varredura completa: natacao e escalada aparecem
-- so como uso da pericia Atletismo ("usado para testes de escalada,
-- natacao, salto, disputas de forca") e na lista do que uma acao de
-- movimento permite ("correndo, realizando saltos, escaladas, vôo etc").
-- Nenhuma velocidade, em lugar nenhum. As unicas velocidades de nado do
-- livro sao as de 5 racas, escritas no bloco de cada uma.
--
-- DECISAO DA MESA (30/08/2026, mestres): o padrao e deslocamento / 2, e a
-- base da raca substitui o padrao quando existe.
--   * metade do deslocamento FINAL (o do card, ja com Destreza e Rank),
--     e nao da base racial;
--   * MEIO METRO E VALIDO: 13 / 2 = 6,5m fica 6,5m, sem arredondar.
--
-- O que entra no numero que e dividido, e por que:
--   * penalidade de armadura pesada  SIM - ja estava embutida no
--     deslocamento quando ele foi dividido, e a mesa ja decidiu (21/08)
--     que o desconto vale para todos os modos;
--   * Passos de vento (Duelista N2)  NAO - a mesma decisao de 21/08 diz
--     que o dobro so vale para o terrestre. Por isso quem chama esta
--     funcao passa o deslocamento capturado ANTES da dobra.
-- ---------------------------------------------------------------------
function Calculos.metadeDeslocamento(ctx)
    local v = n(ctx.deslocamento) / 2 + n(ctx.ajusteManual)
    if v < 0 then return 0 end
    return v
end

-- Mantido pelo nome antigo: e o modo terrestre.
function Calculos.deslocamento(ctx)
    return Calculos.deslocamentoModo({
        baseModo = ctx.deslocamentoBaseRaca, destreza = ctx.destreza,
        rank = ctx.rank, ajusteManual = ctx.ajusteManual,
    })
end

-- ---------------------------------------------------------------------
-- Iniciativa = Destreza + Rank
-- ---------------------------------------------------------------------
function Calculos.iniciativa(ctx)
    return n(ctx.destreza) + rankNumero(ctx.rank) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Defesas fisicas/mentais = base + atributo + bonus de proficiencia + itens/armaduras
-- ---------------------------------------------------------------------
function Calculos.defesaAparar(ctx)
    return 9 + n(ctx.forca) + n(ctx.bonusProficiencia) + n(ctx.bonusItensArmaduras) + n(ctx.ajusteManual)
end

function Calculos.defesaEsquiva(ctx)
    return 9 + n(ctx.destreza) + n(ctx.bonusProficiencia) + n(ctx.bonusItensArmaduras) + n(ctx.ajusteManual)
end

function Calculos.defesaEmpatica(ctx)
    return 10 + n(ctx.manipulacao) + n(ctx.bonusProficiencia) + n(ctx.bonusItensArmaduras) + n(ctx.ajusteManual)
end

function Calculos.defesaTelepatica(ctx)
    return 10 + n(ctx.sabedoria) + n(ctx.bonusProficiencia) + n(ctx.bonusItensArmaduras) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Corrida = o dobro do deslocamento.
-- Excecoes levantadas no documento:
--   * Satiros ("Maratonista"): o TRIPLO, e nao o dobro;
--   * Duelista/Passos de vento nivel 2: deslocamento padrao E corrida
--     dobram passivamente - por isso o multiplicador entra sobre o
--     deslocamento ja dobrado.
--
-- REGRA DA MESA (21/08/2026): a corrida (disparada) vale TAMBEM para voo e
-- nado, sempre pelo dobro. As duas excecoes acima ficam de fora dos modos
-- novos: "Maratonista" fala de corrida e saltos, e "Passos de vento" diz
-- "deslocamento PADRAO". Por isso 'ehSatiro' nao e passado nos modos.
-- ---------------------------------------------------------------------
function Calculos.corrida(ctx)
    local mult = 2
    if ctx.ehSatiro then mult = 3 end
    return n(ctx.deslocamento) * mult
end

-- ---------------------------------------------------------------------
-- Acoes por turno.
--
-- BASE (Tutorial de Ficha, verbetes "Acoes padrao", "Acoes bonus" e
-- "Acoes de reacao"): "Todo personagem comeca com 1 acao padrao / 1 acao
-- bonus / 1 acao de reacao, e ganha mais a medida que avanca de nivel".
-- Existe ainda a acao de MOVIMENTO ("por padrao todos tem uma acao de
-- movimento, uma acao principal e uma acao bonus", Sistema e Evolucao),
-- que nao tem contador porque nada no livro a multiplica.
--
-- EVOLUCAO (Sistema e Evolucao, tabela de niveis), cada tipo num nivel
-- diferente:
--   nivel 10 -> "+1 Acao bonus"
--   nivel 15 -> "+1 ponto de reacao"
--   nivel 19 -> "+1 Acao padrao"
--
-- "extras" traz o que vem de PODER e de CLASSE, ja somado pela ficha
-- (ver ACOES_EXTRAS no ficha.lfm). Fica como parametro, e nao como regra
-- aqui dentro, porque depende de ler a ficha - e estas funcoes sao puras
-- de proposito, para rodarem no lua5.3 sem o Firecast.
-- ---------------------------------------------------------------------
function Calculos.acoesPadrao(ctx)
    local total = 1
    if n(ctx.nivel) >= 19 then total = total + 1 end
    return total + n(ctx.extras) + n(ctx.ajusteManual)
end

function Calculos.acoesBonus(ctx)
    local total = 1
    if n(ctx.nivel) >= 10 then total = total + 1 end
    return total + n(ctx.extras) + n(ctx.ajusteManual)
end

function Calculos.acoesReacao(ctx)
    local total = 1
    if n(ctx.nivel) >= 15 then total = total + 1 end
    return total + n(ctx.extras) + n(ctx.ajusteManual)
end

-- ---------------------------------------------------------------------
-- Capacidade da mochila (numero de slots) = 2 + Forca + Rank
-- ---------------------------------------------------------------------
function Calculos.capacidadeMochila(ctx)
    return 2 + n(ctx.forca) + rankNumero(ctx.rank)
end

return Calculos
