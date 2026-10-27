## v0.53.38

- A aba Qualidades & Defeitos rola como uma página única; as duas listas crescem conforme o número de registros, eliminando as barras internas e os itens cortados.

## v0.53.37

- Linhagem de Gunndana exibe a escolha Primordial/Elemental na aba Qualidades & Defeitos.
- Manipulação da terra entra no nível 1 quando a qualidade é adquirida, sem custo de pontos; ao remover a qualidade, o nível criado automaticamente sai se não houve compras posteriores.
- Se o poder já existia, ele é preservado e seu primeiro nível passa a ser gratuito enquanto a qualidade estiver presente.

## v0.53.34 — auditoria e automações completas de Raças (18/09/2026)

- corrige erros de parsing nos textos do livro (Harpias, Vampiros e Ghiscaris), limpando características fantasmas do catálogo;
- automatiza a concessão das habilidades progressivas raciais para Fadas, Gnomos, Selkies, Aarakocras, Harpias, Ninfas, Lobisomens e Ursaris;
- conecta no motor de concessões os defeitos raciais obrigatórios: Ódio milenar (Lobisomens -> Intolerância), Vício dos Sátiros (Sátiros -> Vício), Código de honra Ursari (Ursaris -> Código de conduta) e a qualidade Nobreza da Linhagem de Dracul (Vampiros);
- adiciona avisos visuais situacionais diretamente na conta das perícias relevantes (Super visão, Olfato aguçado, Audição aguçada, Sentidos de guerra e Rastreamento aprimorado) sem corromper o cálculo matemático base;
- atualiza a exibição de extras em itens de perícia para permitir avisos situacionais independentes de modificadores numéricos fixos.

## v0.53.33 — auditoria completa de Qualidades e Defeitos (17/09/2026)

- confronta as 25 Qualidades e os 25 Defeitos com o capítulo 1.3 do livro; restaura **Fobia** como entrada própria, remove seu texto de **Endividado** e limpa o cabeçalho indevido de **Vontade de ferro**;
- automatiza **Reflexos aprimorados**, **Corajoso**, **Educação funcional**, **Covarde**, **Deformado**, **Doença terminal** e **Presença vulnerável** nas contas e limites correspondentes;
- automatiza o nível gratuito de **Poder oculto**, a escolha pelo mestre de **Poder incontrolável** e as restrições de progressão de ambos;
- aplica o kit de dois poderes e a progressão não consecutiva de **Sangue mortal**, sem inventar tier para a Má Reputação citada pelo texto;
- impede, nos dois sentidos, as combinações Bastardo/Nobreza, Endividado/Riqueza, Sangue mortal/Poder oculto ou Legado desperto e Sangue das raças antigas/linhagens raciais exclusivas;
- faz **Coração de mana** e **Linhagem de Unaris** recusarem poderes ativos incompatíveis, preservando fichas antigas para revisão em vez de apagar escolhas silenciosamente;
- atualiza o painel de automação de cada item para separar efeitos calculados de efeitos situacionais que continuam sob arbitragem da mesa.

## v0.53.32 — Sereias e Tritões são raças distintas (17/09/2026)

- separa a antiga entrada `Sereias e Tritões` em `Sereias` (5
  características) e `Tritões` (3 características), conforme `[1.6] Raças`;
- adiciona brasões próprios e cards independentes nos catálogos de raça e de
  Mestiço;
- concede na aba de Habilidades `Metamorfose sereiana` e `Manipulação das
  memórias` quando essas características realmente fizerem parte da herança;
- mantém o total variável de Mestiço pela maior lista racial: Sereias podem
  elevar a herança a 5 características, enquanto Tritões oferecem 3;
- corrige as concessões raciais de Mestiço para consultarem exclusivamente a
  herança escolhida/sorteada, em vez de concederem também toda a raça
  principal;
- fichas antigas com a entrada combinada recebem uma migração explícita
  `ERA SEREIA` / `ERA TRITÃO`; em heranças já lacradas, o resultado pode ser
  registrado novamente sem rolagem e preservando o tier original.

## v0.53.31 — Divindade própria do Legado Desperto (17/09/2026)

- **Legado desperto** deixa de usar equivocadamente o pai/mãe como origem do poder gratuito;
- ao adquirir a qualidade, exige escolher uma segunda divindade grande, diferente do Aspecto Divino principal;
- a divindade do legado é gravada separadamente e lacrada permanentemente, inclusive contra remover e recomprar a qualidade;
- o kit da divindade escolhida passa a ficar acessível e aparece em um grupo próprio na aba de Poderes;
- o jogador escolhe uma vez um poder desse kit para receber o nível inicial sem gastar ponto; o mestre pode revogar apenas para corrigir a escolha;
- fichas que já possuíam a qualidade podem completar a nova associação sem pagar novamente;
- corrige também poderes repetidos em vários kits: a origem gravada agora é a do card realmente clicado, em vez de recair no pai/mãe.

## v0.53.30 — Quantidade racial e migração de Mestiço (17/09/2026)

- a quantidade de características do mestiço passa a ser a maior quantidade entre suas duas raças, permitindo totais como 4 ou 5;
- no tier 2, as escolhas precisam ser equilibradas entre as duas origens: 2+2 para quatro características e 3+2 para cinco, com o jogador decidindo qual raça fornece as três;
- transforma o upgrade explícito e gratuito de Mestiço 0/1 para 2 pontos em modo de importação de ficha antiga;
- permite reativar esse modo clicando novamente no tier 2 com a opção gratuita, contemplando fichas que já tentaram fazer a migração;
- durante a importação, libera a seleção manual da quantidade correta de características antigas e não executa nenhuma nova rolagem;
- ao confirmar, registra as características, relacra a herança e publica no chat que o resultado foi importado;
- upgrades pagos comuns continuam sem converter automaticamente características sorteadas.

## v0.53.29 — Poder gratuito de Legado Desperto (17/09/2026)

- A qualidade **Legado desperto** agora permite ao mestre selecionar um poder do Aspecto registrado como legado e conceder seu nível inicial sem consumir ponto de poder.
- O nível gratuito permanece identificado no card, não vira saldo genérico e pode ser revogado pelo mestre antes de o poder ser removido.

## v0.53.28 — novo brasão dos Humanos (16/09/2026)

Substitui o antigo brasão de martelo, mão e pena pela nova composição de mãos
erguidas, ramos e símbolo divino. A arte recebida foi limpa dos resíduos
cromáticos, convertida para gradiente dourado, preservada com transparência e
adequada ao ativo `96×96` já utilizado nos dois retratos raciais da ficha.

O caminho do recurso e o layout não mudaram: todas as referências continuam
apontando para `imagens/brasao_raca_humanos.png`.

## v0.53.27 — alinhamento uniforme da durabilidade (16/09/2026)

Itens sem durabilidade passam a exibir `0 / 0` e conservam a mesma largura de
coluna dos equipamentos duráveis. Com isso, quantidade e ações permanecem
alinhadas em todas as linhas dos grupos Equipados, Mochila e Baú.

Os botões de durabilidade continuam protegidos pela regra existente:
`ajustarDurItem` retorna sem alterar o item quando `durMax` é zero. A mudança é
visual e não transforma consumíveis, projéteis ou pergaminhos em itens
duráveis.

## v0.53.26 — inventário separado por local (16/09/2026)

A lista detalhada do inventário passa a ser organizada em três grupos, na
ordem de uso: Equipados, Mochila e Baú. Cada seção possui cabeçalho, contagem
de itens e cor própria; equipar ou mover um item atualiza os grupos no mesmo
recálculo já usado pelos efeitos e pela capacidade da mochila.

A ordenação é estável e acontece sobre a mesma lista serializada que alimenta
os botões. Não foram criadas cópias dos itens nem limites separados por local:
os 40 espaços continuam podendo ser distribuídos livremente entre mochila e
baú, e os índices usados por editar, quantidade, durabilidade, equipar, mover
e remover permanecem coerentes.

## v0.53.25 — capacidade de carga no editor de acessórios (16/09/2026)

O editor de Acessórios e Ferramentas passa a exibir um grupo próprio de
Capacidade de Carga, com o campo Espaços Extras de Mochila. O mesmo grupo
também aparece em Montarias e itens Livres, categorias que já declaravam usar
esse valor.

O dado e a automação já existiam: `espacos` era carregado, salvo e somado à
capacidade enquanto o item estivesse equipado. A interface solicitava o grupo
`espacos`, porém não havia `edIt_grupoespacos` e a tabela de alturas o mantinha
em zero. O controle foi retirado do painel de absorção e ligado ao grupo que
essas categorias realmente exibem. Nenhuma fórmula foi alterada.

Regra preservada: o livro concede +2 espaços à Mochila do Peregrino comum e
+4 à ótima; o catálogo já fornece esses valores.

## v0.53.24 — descrição de item realmente multilinha (16/09/2026)

Corrige a tentativa incompleta da v0.53.23. No Firecast, acrescentar
`wordWrap="true"` a um controle `edit` não o transforma em editor multilinha;
por isso o campo ficou mais alto, mas o texto continuou em uma única linha.

Descrição e Observações agora usa `textEditor`, exatamente como os campos de
descrição e efeito das habilidades e como a descrição das criaturas. O caminho
de leitura e salvamento (`getText`/`setText`) permanece o mesmo, portanto os
textos já gravados são preservados. A verificação agora exige o tipo estrutural
`textEditor`, e não apenas uma propriedade sem efeito no controle errado.

## v0.53.23 — descrições de itens com quebra de linha (16/09/2026)

O campo Descrição e Observações do editor de itens passa a quebrar textos
longos dentro da largura disponível. A área cresce de 62 para 112 pixels para
facilitar a leitura e permanece dentro da rolagem única do popup; o editor não
muda de largura nem de altura por causa do conteúdo.

O controle e o caminho de carregamento e salvamento foram preservados. A
mudança é exclusivamente de apresentação e vale para todas as categorias de
item, inclusive itens livres.

## v0.53.22 — personalização isolada por Q/D (16/09/2026)

Corrige o campo de escolha/personalização das Qualidades e Defeitos. O vínculo
direto `field="personalizacao"` dentro do popup era resolvido pelo Firecast
contra a raiz da ficha; por isso dois registros diferentes exibiam e alteravam
o mesmo texto. O editor agora carrega e grava explicitamente
`personalizacao` no nó individual de cada linha da recordList, inclusive ao
fechar o popup por Esc ou clique externo.

O bloco também deixa a área fixa do cabeçalho e passa a ser o último cartão do
conteúdo rolável, depois de Automação na Ficha. O valor global criado pela
versão anterior é apenas ignorado: ele não é copiado para nenhum item, pois a
ficha não tem como descobrir com segurança a qual Qualidade ou Defeito ele
pertencia.

## v0.53.21 — escolhas de Q/D e encantamentos personalizados (15/09/2026)

O editor de itens passa a aceitar até três encantamentos personalizados,
editáveis pelo mestre. Cada registro exige nome, classe, tipos de equipamento
compatíveis e o efeito validado em mesa, ocupa um slot real do item e permanece
documental: a ficha não inventa uma interpretação numérica para texto livre.

No próprio editor do item, encantamentos de catálogo e personalizados agora
ganham cartões separados com nome e descrição completos. O resumo compacto
continua mostrando os nomes, enquanto a leitura do efeito deixa de depender do
texto pequeno da linha de slots.

Toda Qualidade e todo Defeito ganhou um campo persistente de escolha ou
personalização. Isso cobre tanto opções previstas no livro — Intolerância,
Inimigo e Boa Reputação, entre outras — quanto decisões excepcionais da mesa.
Inepto recebeu também o seletor fechado dos sete atributos: a escolha aplica
−1 na coluna automática, limita o valor base a 6 e impede adquirir ou evoluir
o poder passivo vinculado. Trocar ou remover a escolha recalcula e reverte os
efeitos sem deixar valores residuais.

## v0.53.20 — cura lunar da Forma Bestial (15/09/2026)

A primeira transformação dos Vigilantes da Lua continua recuperando 50% da
vida máxima nas fases comuns, mas passa a recuperar 100% durante a Lua Cheia,
como determina o bônus lunar. O Eclipse Carmesim também recebe os 100%, pois
seu texto concede todos os bônus das outras fases.

O marcador de uso permanece único por descanso longo: trocar de forma outra
vez não repete a cura, e somente um descanso longo reabre o benefício. Filhos
da Fúria continuam com seus 100% próprios e não passam a consumir efeitos de
fase lunar.

Validação local: matriz das cinco fases, isolamento entre as duas facções,
consumo e reabertura por descanso longo, limite na vida máxima, XML válido e
versão sincronizada. A conferência visual permanece no Firecast.

## v0.53.19 — defesas de acessórios e encantamentos integrais (15/09/2026)

O editor da categoria Acessórios e Ferramentas passa a exibir o grupo de
bônus em Aparar, Esquiva, Empática e Telepática. Esses campos já faziam parte
do formato do item, do salvamento e do recálculo de equipamento, mas a tabela
de visibilidade da categoria os mantinha com altura zero. Colar do Resiliente
e Cinto do Gladiador agora podem receber no próprio editor a distribuição
determinada pelo livro e descrita no item.

As descrições do popup de Encantamentos deixam de depender da cópia estática
do XML. Seis das 64 linhas haviam sido gravadas já cortadas no caractere
150, então ativar apenas `wordWrap` não recuperaria o trecho perdido. Cada card
agora busca o texto integral de `catalogoEncantamentos.lua`, quebra linhas e
calcula 40, 56 ou 72 pixels conforme o comprimento. A lista continua usando a
própria rolagem e o popup mantém suas dimensões anteriores.

Validação local: vínculos NDB, controles, permissões e handlers preservados;
quatro defesas carregadas, salvas e somadas ao equipar; 64 descrições ligadas
à fonte integral; caso de regressão maior que 150 caracteres; XML válido e
dimensões do popup inalteradas. A conferência visual permanece no Firecast.

## v0.53.18 — hotfix do painel de mestiçagem (15/09/2026)

Corrige a falha de inicialização `attempt to call a nil value (global
'definirAlturaPod')`. A v0.53.17 chamou um auxiliar `local` antes da linha em
que ele era declarado; pelas regras de escopo do Lua, a referência naquele
ponto era tratada como global e chegava ao Firecast como `nil`.

O painel continua alternando somente entre 0 e 124 pixels conforme a qualidade
Mestiço, mas agora faz o `setHeight` protegido diretamente dentro da rotina
racial. A verificação de pré-lançamento passou a rejeitar chamadas dos
auxiliares locais de dimensão antes de suas declarações, cobrindo também o
irmão desse defeito. Nenhuma regra, campo NDB ou dimensão de popup foi alterada.

## v0.53.17 — revisão de pré-lançamento (15/09/2026)

Mestiçagem deixa de ocupar espaço na aba Raça & Classe quando a ficha não
possui a qualidade Mestiço. O painel usa altura zero em vez de alternar
`visible`, preservando sua posição no fluxo `align="top"` do Firecast e sem
apagar a herança que já esteja lacrada. Ao remover Mestiço na aba de Qualidades
& Defeitos, as características raciais são reconstruídas antes do recálculo,
para que concessões da herança anterior não permaneçam ativas.

A sincronização dos espaços gratuitos de habilidade foi ligada ao recálculo
central. Mudanças de nível, poderes ativos e subclasse agora atualizam os
espaços concedidos imediatamente. Comprar ou devolver nível de poder, salvar a
edição de uma habilidade ativa e excluir uma habilidade também refazem os
valores derivados no mesmo comando, evitando a necessidade de trocar de aba ou
reabrir a ficha.

A revisão preservou as dimensões compactas dos popups e das molduras de arte da
v0.53.16. Meio-Gigante e transformações dos Selkies continuam declarados como
pendências de regra e não receberam comportamento inventado.

Validação local: XML dos LFM, preservação de campos NDB, controles, permissões
e handlers, módulos e imagens referenciados, unicidade das funções principais,
ordem dos recálculos e regressão das dimensões de popup e arte. A compilação e
a conferência visual permanecem no Firecast para Windows.

## v0.53.16 — molduras de arte e criatura compacta (15/09/2026)

Habilidades, itens e criaturas passam a seguir a mesma referência visual para
a arte: aproximadamente 400 × 320 pixels, fundo `#080B0E`, borda roxa discreta
e imagem proporcional inteira. Os campos NDB, o seletor do Firecast e o
salvamento das imagens não mudaram.

O editor de criaturas voltou ao teto de 1000 pixels. “O que ficou para você”
agora abre sempre dentro do formulário e usa a rolagem principal, sem criar uma
coluna lateral e sem alterar a largura do popup. Isso preserva o acesso em telas
menores e evita transformar a correção de estouro em um editor excessivamente
largo nas telas maiores.

Validação local: XML dos LFM, sintaxe Lua, preservação de campos e handlers,
geometria das três molduras e simulações de largura do editor. A conferência
visual permanece no Firecast.

## v0.53.15 — editor de criaturas responsivo (15/09/2026)

O painel “O que ficou para você” não redimensiona mais um popup já aberto. No
Firecast, a largura nova mantinha a borda esquerda parada e crescia somente
para a direita; mesmo limitada a 94% da ficha, parte do editor saía da área
visível em uma tela de 1366×768 cuja ficha recebia cerca de 1279 pixels.

O editor agora abre uma única vez, centralizado na largura final. A partir de
1230 pixels de área da ficha, as observações continuam na coluna lateral; em
janelas menores, aparecem dentro do fluxo vertical e usam a rolagem principal,
sem scroll aninhado. As quatro classificações da linha mais larga conservam no
mínimo seus 816 pixels em ambos os modos.

Campos NDB, handlers, texto das observações, gerador e salvamento permanecem
idênticos à v0.53.14. Validação local: XML dos LFM, sintaxe Lua, preservação
estrutural e simulação das larguras 1074, 1279, 1366 e 1600. A conferência
visual permanece no Firecast.

## v0.53.14 — uma rolagem no construtor de habilidades (15/09/2026)

Configuração deixou de possuir uma barra lateral própria. O construtor agora
usa a mesma rolagem principal para percorrer Configuração, Descrição & Efeito e
Arte; somente o catálogo de tags conserva sua rolagem interna, pois é uma lista
longa e independente.

A linha da configuração cresce dinamicamente entre 420 e 526 pixels conforme
tipo, sustentação, Linhagem de Unaris e quantidade de poderes de origem. Assim,
remover a rolagem interna não corta campos nos estados maiores. A moldura da
arte passou de aproximadamente 2:1 para cerca de 1,15:1 no popup de 1020 pixels,
mantendo a imagem proporcional, inteira e ligada ao mesmo campo NDB.

Campos, permissões, handlers e regras permanecem idênticos à v0.53.13.
Validação local: XML dos LFM, sintaxe Lua, preservação estrutural, exatamente
duas rolagens no popup e geometria mínima de 1366×768. A conferência visual
permanece no Firecast.

## v0.53.13 — equações de atributo alinhadas (15/09/2026)

Base, Bônus e Automático deixaram de colocar o rótulo dentro da própria caixa
numérica. Os quatro termos da equação agora compartilham a mesma hierarquia:
uma coluna externa, o rótulo na faixa superior de 14 pixels e a caixa ocupando
os 28 pixels inferiores. Total conserva a moldura dourada, mas já não quebra o
padrão estrutural dos três termos anteriores.

Os sinais `+`, `+` e `=` receberam a mesma margem superior de 14 pixels. Assim,
em vez de serem centralizados na linha inteira de 42 pixels, passam a dividir o
centro vertical `y=28` com as caixas e seus números. A equação mantém os mesmos
588 pixels de largura, sem afetar o cenário mínimo de 1366×768.

Campos NDB, eventos e cálculos permanecem idênticos à v0.53.12. Validação
local: XML dos LFM, sintaxe Lua, preservação estrutural, 21 rótulos externos e
21 sinais alinhados nos sete atributos. A conferência visual permanece no
Firecast.

## v0.53.12 — perícias reativas ao estado da ficha (12/09/2026)

Perícias que já estavam renderizadas agora acompanham o recálculo global. A
mudança corrige o caso observado com Ferido: o atributo recebia a penalidade,
mas uma perícia existente conservava o total anterior até ser removida e
adicionada novamente. O mesmo redesenho cobre mudanças de nível, proficiência,
itens, concessões e vantagens sem alterar os nós salvos.

Cada item de perícia ganhou uma rotina visual própria por instância, chamada
ao nascer, ao editar o ajuste manual e ao fim de `recalcularTudo`. A rotina
atualiza em conjunto total, memória da conta, origem, vantagem e cores; ao
perder vantagem, a borda base também é restaurada. Os subtítulos "Economia de
pontos" e "Vagas da criação" foram retirados dos cards de resumo por repetirem
informação já expressa pelas métricas.

Validação local: XML de todos os LFM; sintaxe dos blocos Lua; teste executável
que mantém uma perícia existente e reproduz Destreza `+1 → -3`, fazendo Arcos
passar de `+4 → +0`; ajuste manual e entrada/saída de vantagem também cobertos.
A conferência visual permanece no Firecast.

## v0.53.11 — hierarquia visual de Atributos & Perícias (12/09/2026)

O resumo da criação deixou de concentrar as duas economias numa faixa presa à
esquerda. Atributos e Perícias agora possuem cards próprios, de igual largura,
com título, quatro métricas e o respectivo ajuste do mestre. As métricas também
dividem o espaço interno em quatro partes e recalculam ao redimensionar ou ao
retornar à aba, eliminando o vazio crescente em monitores largos.

Nos sete cards de atributo, Base, Bônus, Automático e Total passaram a ter
rótulos visíveis. O Total ganhou caixa com contorno dourado, distinguindo o
resultado das três parcelas sem depender apenas do sinal de igualdade. Os seis
contadores agora dizem explicitamente `PERÍCIAS`, e o estado vazio recebeu
texto mais curto e contraste maior. A altura dinâmica foi ajustada aos novos
rótulos; listas continuam crescendo pelo número real de perícias.

Campos NDB, tipos, handlers, limites, cálculo dos atributos e cálculo das
perícias permanecem os mesmos da v0.53.10. Validação local: XML de todos os
LFM, sintaxe Lua, preservação estrutural e divisão responsiva em 1366, 1600 e
1920 pixels. A conferência visual permanece no Firecast.

## v0.53.10 — descrição simétrica e derivados legíveis (12/09/2026)

O teste visual da v0.53.9 revelou que a largura fixa de Aparência deixava
Personalidade crescer sozinha em monitores largos. A linha agora mede seu
espaço real e desconta a margem central antes de dividi-lo em duas metades.
O cálculo roda ao redimensionar a janela e quando a aba Perfil se torna
visível, evitando medidas antigas após uma troca de seção.

Raça e Classe continuam sendo campos derivados, permanentemente bloqueados e
identificados com `ABA 04`. Valor, borda e selo receberam contraste maior para
que o estado de somente leitura não seja confundido com conteúdo indisponível.

Validação local: XML de todos os LFM; sintaxe dos blocos Lua; igualdade das
duas áreas nas larguras de 1366, 1600 e 1920; campos e handlers anteriores
preservados. A conferência visual permanece no Firecast.

## v0.53.9 — hierarquia visual da aba Perfil (12/09/2026)

A aba Perfil inicia a revisão das cinco primeiras seções após a aprovação do
construtor de habilidades. Identificação conserva a ordem e o retrato já
aprovados. Raça e Classe ganham fundo de resultado, texto secundário e selo
`ABA 04`, tornando visível que são preenchidas pelo catálogo e não por
digitação nesta tela. Os dois campos continuam permanentemente travados.

Progressão foi dividida em dois cards na mesma linha. Nível e Experiência
formam o registro editável com barra dourada; XP do próximo nível, Rank,
Proficiência, Limite de Atributo e eventual aviso formam o resumo calculado
com barra azul. Os campos, eventos e cálculos existentes foram preservados.

Aparência e Personalidade agora dividem uma linha de 132 pixels, economizando
cerca de 100 pixels verticais. No cenário mínimo de 1366×768, o primeiro
editor reserva 600 pixels e o segundo recebe 720 pixels. Progressão deixa
523 pixels livres para o aviso de nível depois dos indicadores fixos.

Validação local: XML de todos os LFM; sintaxe dos 1.845 blocos Lua; campos,
tipos e handlers da aba idênticos à v0.53.8; 14 verificações específicas de
hierarquia, travas e dimensões. A conferência visual permanece no Firecast.

## v0.53.8 — construtor em página única e ativação fixa (12/09/2026)

O teste visual da v0.53.7 aprovou os cards maiores, mas mostrou que dividir o
construtor em três páginas fragmentava demais a leitura. Configuração,
Descrição & Efeito e Arte voltaram a formar uma única página vertical, agora
com títulos e separadores claros. Nome, custo, avisos, cancelar e salvar ficam
fora da rolagem. A configuração mantém catálogo de tags e parâmetros lado a
lado; descrições, efeitos por rank e arte usam a largura total abaixo.

O popup passou de 700 para 660 pixels de altura solicitada. A função comum
continua limitando-o a 94% da ficha e a rolagem principal dá acesso a todo o
conteúdo. Em 1366×768, cenário mínimo decidido pela mesa, ele mede 1020×660;
o painel de parâmetros conserva 762 pixels úteis, contra 498 exigidos pela
linha de tipos e 446 pela linha de alcance.

Nos cards, ATIVA/DESATIVADA ganhou um slot fixo de 156 pixels. O botão interno
ainda some quando a habilidade não possui gatilho, mas origem, remoção e custo
mantêm suas posições. Alternar o estado muda apenas texto, cores e efeitos.

Validação local: 276 verificações estruturais contra v0.53.6; campos NDB e
handlers do construtor preservados; comandos de editar, ativar e remover
preservados; sintaxe de 1.845 blocos Lua da ficha e 4 do template. A inspeção
visual e a bateria do SDK continuam sendo feitas no Windows com o Firecast.

## v0.53.7 — construtor e cards de habilidades (12/09/2026)

Primeira etapa da revisão visual aprovada para as abas 1 a 5. O construtor
agora tem três páginas: Configuração, Descrição & Efeito e Arte. Nome,
custo, avisos e ações permanecem fora da rolagem. As páginas compartilham
os controles existentes, sem recriar o formulário nem recarregar o rascunho
na troca. Uma nova abertura começa em Configuração.

As tags escolhidas ficam acima do seletor e da configuração. Descrição e
efeito ganham campos maiores e largura integral; efeitos por rank continuam
na mesma página. A arte ocupa sua própria área e mantém exibição proporcional
sem recorte. A ordem de docking do rodapé foi corrigida: salvar e cancelar
reservam espaço antes do custo central.

Os cards de habilidades passam de 64 para 116 pixels, com uma faixa inferior
para origem, custo, ativação e remoção. Nome, resumo e tags usam a largura
acima dessa faixa. O estado da forma bestial recebe mais espaço. Template,
recordList e cálculo de altura da lista foram atualizados juntos.

Nenhuma regra, campo NDB ou handler existente de salvar, editar, ativar e
remover foi alterado. As outras abas aguardam aprovação visual desta etapa.

Validação local contra 30a545b: 280 verificações estruturais; sintaxe de
1.848 blocos Lua da ficha e 4 do template; 60 trocas de página com controles
simulados e um índice inválido. Scripts de conferência ficam fora da pasta
do plugin, em analise_visual/verificar_habilidades_v0537.py e .lua.
O SDK e o ferramental privado não estão disponíveis neste ambiente:
verificar, testes, rdk l, rdk i e inspeção visual no Firecast seguem pendentes.

## v0.53.6 — iconografia de Favores Divinos (11/09/2026)

Os quatro cards-resumo da aba Favores Divinos agora exibem símbolos próprios
de 22×22: templo para Divindades, mão com centelha para Favores, bênção
descendente para Bênçãos e máscara para Aspecto Divino. Cada ícone segue a
cor semântica que o card já usava: dourado, violeta, verde e azul.

Os patamares de 1, 2 e 3 Favores e a Hierarquia Divina permanecem
tipográficos; repetir símbolos nesses blocos reduziria a hierarquia visual.
Nenhuma regra, valor, campo NDB, ação ou dimensão de card foi alterada.

São quatro PNGs com transparência real e `style="originalSize"`. Os títulos
foram envolvidos por `layout` da mesma altura dos rótulos anteriores.

## v0.53.5 — iconografia de inventário, qualidades e defeitos (11/09/2026)

Os três cards de resumo do Inventário agora exibem ícones próprios de 22×22:
mochila, escudo absorvendo impacto e bota presa a um peso. As cores seguem a
semântica que os cards já usavam — dourado, verde e vermelho — sem alterar
valores, campos NDB, dimensões ou regras.

Os títulos das colunas Qualidades e Defeitos receberam um par visual: gema
íntegra violeta e gema rachada vermelha. Os cinco indicadores da economia de
pontos permanecem sem ícones, conforme decisão visual desta leva.

São cinco PNGs com transparência real e `style="originalSize"`. Cada título
foi envolvido por um `layout` da mesma altura que o rótulo anterior, portanto
nenhum card ou lista mudou de tamanho.

## v0.53.4 — o descanso da bruxa, e os dois percentuais que somam (09/09/2026)

### A bruxa lia o ganho de duas barras que ela não usa

O card de Descanso anunciava `+N aura · +M mana` para quem tem *Linhagem de
Unaris*. Os dois cards existem na tela dela como **conta visível do Prana**, e
não como barras que ela gasta — decisão da mesa, dita de novo hoje: *"esses
dois cards são inúteis da bruxa mexer, já que ela utiliza apenas o Prana"*.

O card anunciava dois números que ela não usa e escondia o único que ela usa.
Agora a linha da bruxa é `+N vida · +M prana`.

### Os dois percentuais somam, e não se multiplicam

O livro [2.2] diz *"recupere 25% mais desta energia por descanso curto ou
longo"*, e a frase aceita as duas leituras. A ficha lia "25% a mais **do
ganho**": 25% × 1,25 = 31,25% do máximo.

O mestre fechou a leitura, com o exemplo dele:

> *"aura expandida nível 1 (que recupera +25%): Descanso curto: 25% (Padrão) +
> 25% (Qualidade) = +50% do valor de descanso total"*

O percentual da qualidade é somado ao do descanso, em **pontos percentuais do
máximo**. Onde o livro é ambíguo, quem manda é a mesa.

**Uma asserção media a leitura antiga** e passou a acusar — *Vigor expandido*
02 pontos esperava 23 e veio 41. Ela foi corrigida com a citação da decisão ao
lado, e não silenciada. Era a rede fazendo o trabalho dela.

**O piso é zero, e ele importa.** Os percentuais negativos do *Vigor reprimido*
(−25 e −50) descem do mesmo total. Em 02 pontos a soma fica negativa nos dois
descansos, e descanso que **tira** vida seria uma regra que ninguém escreveu.
O efeito colateral dessa leitura está anotado para o mestre decidir: com −50,
a personagem passa a não recuperar nada, nem no longo.

### E o zip pegou uma pasta que não é do plugin

`Claude outputs/PROMPT-MIGRAR-PROJETO-PARA-CHATGPT.md` apareceu dentro da pasta
do plugin e **entrou no `.rpk`**. A checagem 36 acusou assim que o pacote foi
regerado — ela abre o zip, e por isso só vê o que já foi empacotado.

É a regra do `CLAUDE.md` funcionando: *conferir o que você editou não prova
nada sobre o que o usuário instala*. O arquivo foi movido para
`Documentos\Claude outputs`, com autorização, e nada foi apagado.

## v0.53.3 — a conta passa a dizer de onde o número veio (09/09/2026)

Relatado na tela: *"a ficha ainda considera nas contas que os ganhos estão
vindo da 'forma bestial', mas não é bem assim... seria bom a ficha captar o
nome dessas habilidades para demonstrar na conta de modo mais verdadeiro"*.

### O rótulo estava cravado, e virou meia-verdade na v0.52.0

As cinco contas escreviam `forma bestial` literalmente. Isso era verdade
enquanto a única habilidade que somava era a do lobisomem. Deixou de ser na
v0.52.0, quando qualquer habilidade universal passou a poder somar — e o
mestre via `forma bestial 10` num ganho vindo de uma sustentada sem relação
nenhuma com lobisomem.

Agora o rótulo é o **nome da habilidade**. Com duas ou mais somando ele vira
`habilidades ativas`, porque nomear a primeira da lista e esconder o resto
seria trocar uma meia-verdade por outra.

**Deslocamento e iniciativa ganharam rótulo próprio.** Eles nunca vieram de
habilidade: são da fase da lua, e só ela os move. A conta diz `lua Cheia`.

### Nome digitado não entra em conta sem passar por um filtro

A gramática das contas é fixa, e a bateria confere a aritmética delas: números,
sinais, parênteses de conta e palavras soltas. Um nome de habilidade é texto
livre. `Escudo +2` injetaria um `+2` **dentro** da conta e a soma passaria a
não fechar com o valor exibido. Colchete é pior: `[assim]` é anotação que a
bateria ignora, e um pedaço da conta sumiria da leitura.

`rotuloDeConta` deixa passar só letras e espaços, com os bytes 128–255 junto
porque `%a` não alcança acento em UTF-8 e `Absorção` tem de sobreviver inteira.
O corte é por **palavra**, nunca por byte: `#texto` conta bytes, e cortar no
meio de um caractere de dois bytes põe lixo na tela.

### Um `
8` virou quebra de linha no caminho

A primeira versão escrevia a classe do padrão com escape decimal. O escape foi
comido entre a edição e o arquivo, a string terminou no meio, e o `<script>`
inteiro deixou de carregar: **243 das 295 asserções falharam de uma vez**, todas
com `veio None`. A bateria disse a causa na primeira linha — `unfinished string
near '[^%a%s'`.

A classe passou a ser montada com `string.char(128)` e `string.char(255)`. Sem
escape não há o que se perder no caminho.

## v0.53.2 — a escolha do "OU" é da raça que a ofereceu (09/09/2026)

Relatado na tela: *"quando eu mudei de raça, saindo de lobisomem, a habilidade
especial de lobisomem ainda se manteve na aba de habilidades"*.

### Ninguém perguntava de que raça o traço era

`sheet.racaTracoEscolhido` guarda o **nome** do traço escolhido, e só isso.
`habilidadeDaTriboAtual()` procurava esse nome no catálogo de progressivas e
devolvia a habilidade — sem nunca perguntar se a raça de **hoje** oferece
aquele traço.

Um elfo com `Lua Cheia - Vigilantes da Lua` gravado continuava dono da
habilidade do lobisomem. E pior, porque mais calado: `triboRecebeFasesLua()`
lê da mesma função, então esse elfo também estava recebendo os bônus de fase
da lua.

A guarda que faltava já existia. É a mesma que `temCaracRacial` usa para o
"OU" do livro: das alternativas exclusivas, só vale a que a raça atual oferece.
Nenhum campo novo — o que faltava era a pergunta.

### E ninguém sincronizava na troca de raça

`sincronizarHabilidadeDaTribo` só era chamada em dois lugares: o botão da
facção e a abertura da ficha. **Trocar de raça não passa por nenhum dos dois**,
e apagar a raça também não. Agora as duas chamam.

A escolha também é apagada nos dois caminhos, porque ela é da raça que a
ofereceu. Deixada gravada, ela pré-decidia sozinha o "OU" de uma raça futura —
o jogador voltaria a lobisomem com a facção já escolhida sem ter escolhido.

### "Não sei" não autoriza apagar

`sincronizarHabilidadeDaTribo` **deleta** a habilidade quando não há tribo, e
essa habilidade é um registro editável que pode carregar o buff que o mestre
digitou. Se o catálogo de raças não responder, tratar isso como "não tem"
apagaria o texto dele por causa de uma falha transitória.

Por isso `habilidadeDaTriboAtual()` devolve um segundo valor, `medido`, e a
sincronização não encosta em nada quando ele é falso. Ficha **sem raça** é
resposta positiva, e não ignorância: raça nenhuma não oferece traço nenhum.

## v0.53.1 — o campo apareceu, e aí os dois defeitos dele apareceram junto (09/09/2026)

Os dois estavam escritos desde a v0.52.0 e ninguém podia vê-los: o campo do
efeito sustentado nunca chegava à tela. Abrir a porta mostrou o que havia
atrás dela.

### `lerCamposHab()` nunca existiu

`attempt to call a nil value (global 'lerCamposHab')`, na cara de quem digitou.

Os dois widgets do bloco de sustentação — o CUSTO e a caixa do efeito — chamam
uma função no `onChange`, e o nome escrito ali é `lerCamposHab`. A função se
chama **`lerCamposDoConstrutor`**. Em Lua ler um global inexistente devolve
`nil` sem uma palavra, e só a chamada estoura.

**A checagem 59 existe exatamente para isso e não pegou**, porque ela lê o
`<script>` e a chamada mora num `<event>` do XML. Varri os **1.844** `<event>`
do `ficha.lfm` à mão: `lerCamposHab` era o único órfão. A checagem que fecha
essa metade está proposta ao mestre, e não foi feita — ela mexe em
`verifica.py`, e mexer ali obriga a mutação a rodar.

### O extrator não conhecia a forma curta da própria frase

O mestre escreveu `+10% Absorção, +10 Vida` e a ficha respondeu *"não
reconheceu nenhum número aqui"*. Ela estava certa pelo que sabia:

* o padrão da vida pedia `pontos de vida`;
* o da absorção pedia `% de Absorção`, com o **de**;
* e os dois só aceitavam minúscula.

Os padrões nasceram colados do texto do lobisomem, e isso bastou **enquanto o
texto vinha do catálogo**. Deixou de bastar na v0.52.0, quando a habilidade
universal abriu a caixa para o mestre escrever a dele.

Cada chave ganhou as formas curtas da **mesma** frase — `de` opcional,
`pontos` opcional, maiúscula aceita. Nenhum significado novo entrou, e os seis
blocos do catálogo continuam lidos com os mesmos números de antes.

**O `+2 dano` seco continua fora, de propósito.** Ele pode ser dado de dano ou
modificador fixo, e este arquivo não chuta. `+2 dados de dano` e `+2 dados
dano` são reconhecidos; `+2 dano` fica como texto, e o resumo embaixo da caixa
diz isso em voz alta.

## v0.53.0 — três achados da tela, e os três eram mudos (09/09/2026)

Nenhum dos três dava erro. Os três apareceram usando a ficha, e nenhuma das
três redes tinha como vê-los — é a quarta vez nesta história que a tela acha o
que o verde não acha.

### O campo do efeito sustentado nunca existiu na tela

Relatado pelo mestre: *"eu escrevi o texto com '+10% absorção' por exemplo, e
esse dado não foi computado automaticamente na aba de combate"*.

O `bonusHabilidadesAtivas` estava certo, e lia `efeitoSustentado` pelo mesmo
`lerBloco` da progressiva. O que faltava era o campo onde digitar.

`popHab_wrapProgressiva` tem três filhos empilhados: a linha da caixa
PROGRESSIVA (36), a linha da caixa SUSTENTAÇÃO com o CUSTO (36) e o
`popHab_wrapSustentado`, que abre em 96. A altura do pai estava **cravada em
`72`** — a soma só das duas primeiras. Ao marcar SUSTENTAÇÃO o terceiro filho
crescia dentro de um pai que não crescia, e **o que passa da altura do pai é
cortado**: o layout não rola sozinho.

O sintoma parecia sucesso. A caixa marcava `[X]`, o CUSTO aparecia ao lado, e
o campo simplesmente não estava lá. Quem preencheu escreveu o `+10% de
Absorção` na DESCRIÇÃO, que ninguém lê por número, e a aba de Combate não se
mexeu — porque não tinha o que ler.

É a mesma classe do painel que sumiu na v0.51.1, e é o vão que a checagem 43
não alcança: ela mede a altura declarada no **XML**, e aqui quem estoura o pai
é o número que o **Lua** escreve. As três alturas viraram constante, e a do pai
virou a soma delas.

### A habilidade da tribo abria sem o corpo que ela tem

Relatado: *"ao abrir essa habilidade, ela não vem com o formato de uma
habilidade progressiva"*.

`atualizarBlocoProgressivo` abria os seis blocos só para o tipo `universal`. O
tipo `forma` ficou de fora na v0.52.0 com uma justificativa que parecia boa —
*"a forma bestial nasce pronta pela escolha da facção e não passa por aqui"*.

Ela é verdadeira sobre a **instalação** e falsa sobre a **edição**, e essa é a
distinção que eu não fiz. A regra da mesa que criou essa habilidade é que ela
seja um **registro editável**: *"se no futuro os mestres quiserem mexer nessas
habilidades (buff ou nerf ou reformulação), eu não vou precisar mexer no código
da ficha"*. Com o bloco fechado, os seis textos existiam no **dado** e não
existiam na **tela** — editáveis só pelo código, que é exatamente o contrário
do que foi pedido.

O tipo `forma` passou a abrir os mesmos blocos. O CUSTO fica na tela e
**desabilitado** ali, porque `calcularCustoHabilidade` devolve 0 cravado para
`forma` e campo que aceita número e ninguém lê é pior que campo nenhum — quem
digita nele acha que pagou. O zero é verdade: essa habilidade já foi paga na
qualidade *Linhagem da noite [06 pontos]*.

**A primeira tentativa foi escondê-lo, e a checagem 45 recusou.** Encolher o
wrapper pelo Lua tira a folga do irmão `align="client"` ao lado, e espaço que
só o Lua conhece não dá para medir no XML. A trava virou `setEnabled(false)`,
que é a única que este SDK oferece.

### Repor o que nunca chegou, e só isso

Uma habilidade de tribo com os **seis** blocos em branco não é decisão de
ninguém: é instalação que falhou, ou ficha que atravessou uma versão em que os
blocos não existiam. Ela não soma nada em lugar nenhum, e com o construtor
fechado não havia nem por onde perceber.

`reporBlocosVaziosDaTribo` repõe do catálogo **só nesse caso**. Um único bloco
com texto já é sinal de mão humana, e a ficha não encosta. A entrega de uma vez
só continua inteira: o que se repõe é a entrega que não aconteceu, e não o
texto de quem editou.

### O mini-scroll era oito pixels por linha

Relatado: *"tirar aquele mini scroll da barra lateral"*, como já se fez nas
perícias.

O XML declara `itemHeight="64"` e o `frmItemHabilidade` tem `height="64"`. O
Lua reservava `qtd * 56`. Faltavam **8 pixels por habilidade**, e o
`recordList` resolve a falta do jeito dele: abre uma barra de rolagem própria,
dentro da aba que já rola. Com três habilidades a conta dava 172 para 192 de
conteúdo — a terceira aparecia cortada.

A altura virou constante com o nome do que ela é. É o mesmo acerto que
`listaCaracsRaciais` já tinha, e a mesma classe de erro das outras três vezes
nesta história: **um número copiado de um arquivo para outro, que envelhece
calado**.

### Três textos de tela que descreviam a versão passada

O tipo se chama UNIVERSAL desde a v0.52.0 e passou a cobrar o que for digitado
em CUSTO, mas a ajuda do construtor e as duas dicas ainda diziam *"Habilidade
racial: vem da raça ou de uma qualidade já paga, então não custa ponto de
poder"*. As duas metades ficaram falsas na mesma versão. Texto de tela que
descreve a versão anterior é a mesma segunda fonte da verdade de sempre, só que
em português — e é a que o jogador lê.

## v0.52.0 — a habilidade progressiva deixa de ser do lobisomem (09/09/2026)

### Ela era do lobisomem por acidente de origem

Relatado pelo mestre: *"as habilidades progressivas estão muito ligadas
atualmente aos lobisomens, mas elas devem ser uma ferramenta que funcionaria
para todas as raças"*.

A mecânica nasceu na v0.38.0 com um exemplo só — a Forma Bestial Lupina da
mesa — e a modelagem inteira ficou moldada nele. Três amarras, todas
inconscientes:

* `calcularCustoHabilidade` devolvia **0 cravado** para o tipo `racial`, o que
  só funcionava porque a única habilidade desse tipo vinha de graça;
* o `[  ] PROGRESSIVA` só aparecia quando o tipo era `racial`;
* os bônus só entravam com `formaAlternativaAtiva()` — o botão de
  transformação. Uma raça com progressiva própria **não tinha como ligá-la**.

### Três tipos onde havia um

`racial` virou `universal`, e a forma bestial ganhou tipo próprio, `forma`.

A troca é de **chave gravada**, e não de rótulo. Trocar só o rótulo deixaria o
dado dizendo `racial` e a tela dizendo UNIVERSAL — segunda fonte da verdade,
que este projeto já pagou três vezes. A migração roda em `repararNosAntigos`,
ao abrir a ficha, e o mestre autorizou reescrever: *"as fichas estão em teste
ainda, então não tem problema fazer uma mudança brusca"*.

O tipo `forma` **não é oferecido no construtor**: ele nasce só da escolha da
facção. É o "lugar único dos lobisomens" que o pedido descrevia, e é ele que
permite ao resto ficar genérico.

### O interruptor, que é o que faltava

Campo `ativa`, e um botão no card — `ATIVA` / `DESATIVADA`. Ele só aparece para
habilidade que tem o que ligar: progressiva ou sustentação. Botão que não faz
nada treina o olho a ignorar a faixa.

O tipo `forma` mostra o estado (`TRANSFORMADO` / `NA FORMA MORTAL`) e **não é
clicável**: quem liga é o botão de transformação. Clicável aqui daria dois
donos para a mesma propriedade, e o lobisomem podia ficar com o bônus sem estar
transformado. O card lê a raiz da ficha, e não guarda cópia.

`bonusFormaBestial` virou `bonusHabilidadesAtivas`. O nome antigo mentia sobre
o alcance: a mecânica sempre foi genérica, o que faltava era o interruptor.

### Custo, e Sustentação

**Custo:** campo que o jogador digita. Zero é de graça e continua sendo o
padrão; um número desconta do mesmo saldo dos poderes, com a trava que já
existia. Substitui o `return 0` cravado.

**Sustentação:** um bloco único, que vale enquanto a habilidade estiver ativa,
lido pelo **mesmo** `CatalogoProgressiva.lerBloco` da progressiva. O
vocabulário e o *"a ficha entendeu"* vieram de graça — e é o que garante que as
duas mecânicas nunca divirjam na leitura.

As duas **convivem na mesma habilidade**, por decisão da mesa: *"tudo na mesma
habilidade será melhor, pois essa habilidade universal deve englobar todas as
mecânicas"*. Quando as duas estão marcadas, elas **somam** — o "substitui, não
acumula" vale entre RANKS da progressiva, e não entre mecânicas distintas.

Sem custo de manutenção automático, também por decisão da mesa: *"deixa para
descontar manualmente, já que habilidades podem ter descontos variados
dependendo da mecânica exclusiva"*.

### Dois erros meus, e quem os pegou

**Deixei um apelido `bonusFormaBestial()` só para a checagem 64 continuar
passando.** Ela acusou, e estava certa: apelido que existe para agradar
checagem é exatamente o vício que ela deveria impedir. O apelido saiu e os
chamadores foram renomeados.

E a checagem estava errada junto: cravava o **nome** da função em vez do
comportamento. Agora ela procura quem chama `faseLuaAtual()` entre as
candidatas e confere a guarda daquela — no dia da troca de nome, a versão
antiga acusou um apelido em vez do bug.

**O card não repintaria ao ligar.** O `onNodeReady` do template só roda quando
o item é criado, então mudar `ativa` não redesenharia nada. Agora
`alternarHabilidadeAtiva` reconstrói a lista, pelo mesmo motivo que
`salvarHabilidade` já reconstruía ao editar.

### A sonda podre, que o ferramental achou sozinho

A mutação da checagem 64 cravava a linha inteira `if triboRecebeFasesLua()
then`. Quando a guarda ganhou uma condição a mais nesta versão, ela deixou de
casar e saiu como **INVÁLIDA** — parou de testar sem nada ficar vermelho.

O `mutacao.py` distingue *"não pegou"* de *"não testou"*, e reportou
`1 SONDA(s) PODRE(s)`. Sem essa distinção a rodada teria fechado com 217 ok e
passado por verde. É a mesma classe do `0.39.0` literal que apodreceu no outro
ferramental: **sonda presa à forma exata da linha morre calada na próxima
edição**. Passou a mirar por padrão.

### A mutação fechou depois do push, e o commit ficou congelado

O commit `7761895` registrou a mutação em **51 de 218**, e foi honesto: o
mestre precisava do código no outro PC e a rodada ainda estava correndo. Ela
terminou depois, **no mesmo commit** — 218/218, zero inválidas, zero sondas
podres. `verifica.py` fechou 55/55, `testes.py` 295/295 e o `rdk l` verde.

Fica escrito aqui porque a mensagem do commit não se reescreve, e uma dúvida
congelada no histórico vira, meses depois, uma versão que ninguém sabe se foi
medida.

## v0.51.2 — a tribo já tinha mecanismo, e era o dos elfos (09/09/2026)

### O livro já mandava escolher a facção, e eu não tinha lido

A v0.51.0 tratou a escolha de tribo como regra de mesa e construiu maquinaria
própria para ela: campo `sheet.tribo`, lacre com data, painel de botões,
migração. Tudo isso foi apagado nesta versão.

A escolha já está no livro, e já estava **citada dentro do
`catalogoRacas.lua`**, na qualidade *Linhagem da noite [06 pontos]*:

> "Receba a raça 'Lobisomem (Nascido)'. **Escolha uma facção de origem:
> Vigilantes da Lua (controle e disciplina) ou Filhos da Fúria (poder e
> instinto)** e a habilidade progressiva [Forma Bestial Lupina]"

É o mesmo `X OU Y` que a v0.42.0 resolveu para os Elfos — *"Magia inata OU
Conexão com a Natureza"* —, com `escolhaExclusiva` no catálogo,
`sheet.racaTracoEscolhido` guardando a escolha e `temCaracRacial` respondendo
`true` só para a escolhida. Era o segundo caso em 29 raças, não o primeiro.

Relatado na tela: *"por que você não tenta seguir o exemplo do que fizemos com
os elfos? Já temos algo muito parecido programado"*.

### Os três defeitos que a camada própria tinha, e que somem de graça

**O botão só marcava ao trocar de aba.** `escolherTribo` gravava o campo e não
repintava o painel; quem repintava era `atualizarBlocoRaca`, que só roda ao
entrar na aba. O `escolherTracoRacial` dos elfos já termina chamando
`atualizarBlocoRaca()`.

**A facção não escolhida continuava na aba de Características.** O filtro do
"OU" já existe em dois lugares — `temCaracRacial()` e a montagem da lista —, e
a v0.51.0 não passava por nenhum dos dois. Declarar `escolhaExclusiva` fez a
outra sumir sem uma linha de código novo.

**A habilidade não aparecia na lista.** `instalarHabilidadeDaTribo` dava
`append` no `recordList` e nunca chamava `ajustarAlturaListaHabilidades`, então
a lista não crescia — a habilidade existia no NDB e não na tela, que é o erro
silencioso desta ficha em forma pura.

### A habilidade é um registro editável, e é para continuar sendo

Pedido do mestre, e é o motivo de ela existir como habilidade e não como
tabela: *"se no futuro os mestres quiserem mexer nessas habilidades (buff ou
nerf ou reformulação), eu não vou precisar mexer no código da ficha"*.

O catálogo entrega o texto **uma vez**, na instalação. Dali em diante quem manda
é o que está na aba. Por isso `sincronizarHabilidadeDaTribo()` **não reescreve**
uma habilidade que já é da tribo certa: reescrever apagaria o ajuste que o
mestre acabou de digitar, e apagaria calado. Ela só age quando a tribo muda, ou
quando a habilidade não existe.

Trocar de tribo **substitui**, nunca acumula: as duas na lista somariam os dois
blocos de rank no `bonusFormaBestial`, e o lobisomem teria +150 e +100 de vida
ao mesmo tempo, sem erro nenhum.

### A versão intermediária que não existe, e a lição dela

Entre a v0.51.0 e esta houve uma v0.51.1 instalada e nunca versionada. Ela
tentava salvar o painel próprio movendo-o de lugar, e o motivo do movimento
vale ficar registrado mesmo com o painel apagado.

O painel nasceu **dentro de** `<layout align="top" height="112">`, um contêiner
de altura fixa já gasto pelos 54px da SITUAÇÃO e pelos 50px dos ATRIBUTOS BASE.
Um painel de 128px ali dentro não cabe, e o Firecast **não reclama: ele para de
desenhar**. Relatado na tela: *"não consegui achar os botões de escolha da
tribo, busquei em todas as partes e não aparece"* — e a ficha criada do zero
também não mostrava, porque não era estado corrompido.

**A checagem 43 mede exatamente isso** — filhos empilhados cabem na altura fixa
do pai — e não disparou: no XML o painel tinha `height="0"`, e 54 + 50 + 0 cabe
em 112. Quem estoura o pai é o número que o **Lua escreve depois**. A checagem
lê o XML; o estouro só existe em tempo de execução.

Esse vão continua aberto. Uma checagem que pegasse `definirAltura(self.X, N)`
com `N` literal e conferisse `N` contra a altura fixa do ancestral de `X`
fecharia a classe inteira, e não só este caso.

### O que saiu junto

O lacre próprio, com data e autor, foi removido. A trava passou a ser a mesma
do elfo — livre na criação, travada ao finalizar, só o mestre destrava. O lacre
extra era invenção da v0.51.0 e não se justificava depois que a escolha voltou
para o traço racial.

Também saiu o `sheet.tribo`. A tribo **é** o traço escolhido: um campo paralelo
divergiria dele no dia em que alguém trocasse o traço por fora — uma
propriedade, um dono.

## v0.51.0 — a tribo do lobisomem, e a lua que era de todos (09/09/2026)

### A mecânica só servia a uma tribo porque só uma tribo existia

Relatado pelo mestre: *"como nós só tínhamos o contexto de uma habilidade
progressiva criada (que era a de um lobisomen), meio que nossa programação da
habilidade progressiva ficou funcional apenas para os lobisomens"*.

Na criação, o lobisomem agora escolhe entre **Vigilantes da Lua** e **Filhos
da Fúria** — regra da mesa de 09/09/2026. O livro escreve a habilidade no
singular (*"[Forma bestial] receba a habilidade progressiva 'Forma Bestial'"*),
mas ele próprio já separa as duas facções nos traços raciais, com
`[Ódio Enraizado - Filhos da Fúria]` e `[Lua Cheia - Vigilantes da Lua]`
cobrando coisas diferentes. A mesa refinou; não contradisse.

As duas habilidades entraram no `catalogoProgressiva.lua` com o **texto
verbatim** que o mestre mandou, e escolher a tribo instala a certa na aba de
Poderes, com os seis blocos de rank preenchidos. O extrator continua sendo
quem lê os números — se eu os cravasse numa tabela, existiriam duas versões da
mesma regra, a frase e o número, e elas divergiriam caladas.

### O Filho da Fúria vinha recebendo a lua que não é dele

Este é o achado, e ele estava em produção:

```lua
if personagemEhLobisomem() then          -- ficha.lfm:8991, v0.50.2
    local f = faseLuaAtual()
    z.deslocamento = z.deslocamento + n(f.deslocamento)
```

As cinco fases da lua estavam no catálogo como se fossem **da raça**. São do
texto de **uma** das duas habilidades: a da lua lista os cinco `[Bônus Lunar]`,
e a da fúria não cita a lua em lugar nenhum. Qualquer lobisomem transformado
somava +2 de deslocamento, +2 de iniciativa e teto de absorção de 80% —
números plausíveis, sem erro na tela.

A guarda passou a ser `triboRecebeFasesLua()`, que pergunta ao catálogo. E o
card da lua acompanha: some para o Filho da Fúria, porque card que não
alimenta nada treina o olho a ignorar a faixa onde as contas que importam
aparecem.

### O tamanho fica manual, e a ficha avisa

`Aumenta em 1 categoria de tamanho` aparece uma vez só, no rank E da fúria. Ele
levantou uma pergunta de regra, porque a mesa já decidiu que **os blocos de
rank substituem, não acumulam** — ao pé da letra, o lobo encolheria ao chegar
no rank D.

Resposta da mesa (09/09/2026): o aumento **persiste** nos ranks seguintes, e
**não é para automatizar** — *"deixa para os players mexerem manualmente no
tamanho como já estamos fazendo até então"*.

Cheguei a implementar o sexto padrão do extrator e desfiz. Um padrão que
reconhece e não alimenta nada é pior que padrão nenhum: o resumo diria *"a
ficha entendeu: +1 categoria de tamanho"* para um efeito que ela não aplica, e
o jogador confiaria. A frase volta a valer como **texto**, junto de
`[Garras Lupinas]` e da resistência a `[Hemocinese]`, que também são mecânicos
e também não viram número — e a transformação passa a **avisar**, com a única
coisa que o jogador precisa saber: ajuste o card à mão.

### O lacre, e por que não bastava a trava da ficha

A tribo é escolha de criação e não se desfaz. Ela usa **lacre próprio**, com
data, e não a trava geral da ficha finalizada: a trava geral se abre e fecha
quando o mestre destrava a ficha para uma correção qualquer, e a tribo ficaria
editável de carona. Mesmo padrão já usado na mestiçagem e no aspecto divino.

Ficha anterior à v0.51.0 não tem tribo. A migração **deduz do nome da
habilidade instalada**, e não chuta: quem tem a "Forma bestial lupina da lua"
colada à mão vira Vigilante; quem não tem habilidade nenhuma fica sem tribo, e
sem bônus lunar, que é o certo para quem ainda vai escolher.

### A primeira transformação

As duas habilidades curam na primeira transformação a cada descanso longo, e
por valores diferentes — 100% na fúria, 50% na lua. Um marcador liga na
transformação e **só o descanso longo o desliga**; o curto não, porque o texto
diz "longo". Sem o marcador, desligar e religar a forma curaria de novo, e
curar a vida cheia com um clique duplo é o tipo de coisa que ninguém reporta
como bug, porque parece que a ficha foi generosa.

### O que a ficha NÃO calcula, e diz no clique

Vira aviso na hora de transformar, e não número: quebrar todos os equipamentos
e soltar as armas (fúria), o teste de Vontade meta 20 para não ficar
`[Enfurecido]` (fúria), e a restrição de só se transformar à noite (lua).
Aviso que aparece no clique é lido; a mesma frase no texto da habilidade, não.

### As redes

* **checagem 64** — o bloco de fase da lua do `bonusFormaBestial` é guardado
  pela tribo, e não por `personagemEhLobisomem`; `triboRecebeFasesLua` consulta
  o campo `fasesLua` do catálogo, e não uma lista de nomes escrita à parte; e o
  `cardVisivelCombate` acompanha a mesma regra. Pega a **classe**: qualquer
  volta ao acoplamento por raça, em qualquer das três metades. Duas mutações —
  a v0.50.2 literal, e o card voltando sem tocar no cálculo, que é a metade que
  uma checagem só de conta não pegaria;
* **checagem 30** pegou os losangos `◆` e `◇` que eu tinha usado nos rótulos
  da tribo: a Cinzel não tem esses glifos, e o Windows substituiria calado.
  Trocados pelo `[X]` / `[  ]` que a ficha já usa no bloco PROGRESSIVA;
* **checagem 63** pegou os dois `CLAUDE.md` prometendo 54 checagens e 216
  mutações quando a rede passou a ter 55 e 218 — dois dias depois de ela ser
  escrita para isso.

## v0.50.2 — alinhamento válido nos títulos das moedas (09/09/2026)

A v0.50.1 usou `horzTextAlign="left"` nos quatro títulos novos. O SDK3 aceita
apenas `center`, `leading` ou `trailing`, então o `rdk i` recusava compilar a
ficha. As quatro ocorrências foram corrigidas para `leading`; imagens,
dimensões, campos NDB e regras permanecem iguais.

## v0.50.1 — cunhagens da bolsa de moedas (09/09/2026)

Drams, Florins, Lunaris e Aureus agora exibem ícones de 18×18 derivados das
cunhagens descritas no livro: `D`, árvore, lua e as faces do Pai e da Mãe.
Todos usam o dourado `#C9A24B`, transparência real e
`style="originalSize"`.

Os símbolos dividem a linha de título com o nome da moeda. O card mantém os
mesmos 76px de altura e os quatro campos NDB, valores e conversões permanecem
inalterados.

## v0.50.0 — iconografia dos slots equipados (09/09/2026)

Os oito cards de EQUIPADOS agora exibem cinco ícones de 22×22: armadura,
acessório, mão, saque rápido e bolso. Slots repetidos reutilizam o mesmo PNG;
por isso, os dois acessórios, as mãos primária e secundária e os dois bolsos
mantêm identidade visual comum sem duplicar arquivos. As imagens usam o
dourado `#C9A24B`, transparência real e `style="originalSize"`.

O ícone ocupa uma coluna interna de 30px e não altera altura nem largura dos
cards. Nomes dos itens, subtítulos, cliques, slots e regras de equipamento
permanecem inalterados.

## v0.49.9 — iconografia completa dos cards de combate (09/09/2026)

Os cinco recursos — Vida, Aura, Mana, Prana e Vitae —, as defesas, os modos de
movimento, tamanho, iniciativa, proficiência, economia de ações, inspiração,
carga e descanso agora exibem ícones próprios de 22×22 nos cabeçalhos. O mesmo
acabamento foi aplicado aos cards condicionais: Montado, Sangue Bebido e Fase
da Lua. São 34 novos PNGs, todos com transparência real, cor semântica exata e
`style="originalSize"`.

Ferido possui quatro PNGs — sem ferimento, I, II e III — e a imagem acompanha
o nível marcado. Fase da Lua possui cinco PNGs — Nova, Crescente, Cheia,
Minguante e Eclipse Carmesim — e acompanha o ciclo escolhido. As duas trocas
reutilizam as rotinas de atualização já existentes; cálculos, regras, campos
NDB e condições de visibilidade permanecem inalterados.

## v0.49.8 — o LEIA-ME de dentro do .rpk ficou na versão anterior, de novo (08/09/2026)

A v0.49.7 entrou com o `LEIA-ME.txt` parado: primeira linha em v0.49.6 e
`imagens/ (111 arquivos)` quando o disco já tinha 118 — os sete ícones de
atributo entraram na pasta e não na contagem. O `.rpk` instalado levava esse
texto para a máquina de quem joga, e o LEIA-ME é a única instrução de instalação
que a pessoa recebe.

Nada de regra, cálculo ou layout mudou. O que mudou é texto: LEIA-ME, selo de
versão na tela, `module.xml`, o badge do README e este changelog.

A causa não é distração: a checagem 39 existe exatamente para isto e não foi
rodada antes de empacotar. O commit `fd91e0a` conta a mesma história uma versão
atrás — LEIA-ME em v0.49.4 dentro de um pacote v0.49.6. Duas ocorrências da
mesma classe: a rede pega, mas só se alguém rodar.

O badge de versão do README não é coberto pela checagem 39, que confere só as
contagens de lá. Ele ficou em 0.49.6 desde a versão passada e ninguém viu — é o
irmão deste bug, e fica anotado até virar checagem.

## v0.49.7 — ícones identificam os sete atributos sem mover os números (07/09/2026)

Os sete cards de Atributos & Perícias agora exibem um PNG de 28×28 antes do
nome do atributo. Cada cabeçalho conserva os 190px que já ocupava: 34px para o
ícone e 156px para o título. Por isso, Base, bônus racial/poder, automações e
Total permanecem nos mesmos pixels e nenhum cálculo ou campo NDB foi tocado.

As imagens usam `style="originalSize"`, transparência real e nomes literais no
XML. Cada referência foi conferida contra o PNG efetivamente presente em
`imagens/`, porque o Firecast não escala arte de pacote e falha silenciosamente
quando o nome não coincide.

## v0.49.6 — o width do XML estava morto, e a medição foi na fonte errada (07/09/2026)

### A busca destravou, e o "segundo ponto" da v0.49.5 deixou de ser hipótese

Relatado na tela: *"agora não está mais travando o campo de busca, tá liso no
pc do trabalho que no geral é ruinzinho, então deve passar em qualquer pc."*

O `beginUpdate`/`endUpdate` do `scrollBox` era a causa que o farejador não
podia ver — o custo estava no *reflow*, depois que o Lua devolvia. Confirmado
com o pior juiz disponível: o catálogo de Itens, 250 cards, no PC do trabalho.

### Os valores saíram do meio de novo — e a caixa não encolheu nada

Relatado com print: *"os valores dos cards agora saíram da centralização."*

A v0.49.5 encolheu a caixa do ATUAL pelo XML (`width="88"` → `76`) e devolveu
os 12px como `margins="{left=12}"`, "para o valor ficar no mesmo pixel". Só que
**o `width=` do XML dessas cinco caixas está morto desde a v0.49.4**: quem
decide a largura é o `ajustarGradeCombate`, a cada `onResize` —
`caixa:setWidth(math.floor(miolo / 2))`, metade do miolo do card. A sessão
remota editou um número que o Lua sobrescreve, e a única parte da mudança que
pegou foi a margem, que o Lua **não** toca. Resultado na tela: a mesma caixa de
~107px, empurrada 12px para a direita, nos cinco cards — e `MOLDURA_PAR_ATUAL`
(10 + 8 + 8 = 26) ficou desatualizado em 12.

É exatamente o que a **checagem 58** do ferramental completo pega: a moldura
escrita no Lua tem de bater com a soma das margens do XML. A sessão remota não
a tinha; a cópia do ferramental deste PC também não (ver abaixo).

### A medição da v0.49.5 foi em 22px, e a tela desenha em 27

O XML diz `fontSize="22"` nos cinco `<edit>`, mas o mesmo `ajustarGradeCombate`
aplica `ed:setFontSize(corpo)`, com **corpo 27** em card largo (24, 21 e 18 em
cards mais estreitos). O `fontSize=` do XML é tão morto quanto o `width=`.

Medido agora com a fonte do pacote (`fonts/Cinzel-Bold.ttf`), texto `-0000`,
que é o pior caso de quatro dígitos com sinal:

| corpo | `9999` | `-0000` |
|---|---|---|
| 18 | 45,4 | 53,9 |
| 21 | 52,9 | 62,8 |
| 24 | 60,5 | 71,8 |
| **27** | 68,0 | **80,8** |

Uma caixa de 76px (68 úteis, tirando a margem direita do `<edit>`) **cortaria
o sinal** em corpo 27. O *hint* do campo diz que ele pode ficar negativo; um
negativo sem o menos parece positivo, e é o tipo de erro silencioso que esta
ficha existe para não cometer. Só não cortou porque o Lua ignorou o 76.

### A correção: a caixa mede o número, e o que sobra até o meio é espaçador

A caixa do ATUAL passa a ter largura **por corpo**, numa tabela medida na fonte
real e escrita ao lado do `MOLDURA_PAR_ATUAL`:

```
LARGURA_CAIXA_ATUAL = { [18] = 66, [21] = 75, [24] = 84, [27] = 93 }
```

Cada entrada é a medida de `-0000` + 6 (margem direita do `<edit>`) + 2 (borda
de 1px de cada lado) + 4 de folga para o rasterizador. E o que sobra entre a
borda do card e a caixa vai para um `<layout name="cmb_vaoAtual<Barra>">` novo,
antes da caixa, redimensionado por **`setWidth`** — não por `setMargins`, que a
v0.49.4 mediu a 35 ms por chamada. O `/` continua caindo no meio do card em
qualquer largura, como a v0.49.4 conquistou; a moldura visível fica do tamanho
do número, como a v0.49.5 pediu. Em card estreito a caixa cede até a metade do
miolo, que é o comportamento antigo.

O `width="93"` que ficou no XML é o valor de **repouso** (o do corpo 27, que é
o padrão) — o primeiro desenho, antes de o Lua rodar, já nasce certo. O
comentário no Lua diz que ele é dono da largura e do corpo, e a checagem 62
cobra que o repouso bata com a tabela.

Vale para os cinco: Vida, Aura, Mana, Prana e Vitae.

### O ferramental deste PC é uma cópia da v0.39.0

O `firecast-mcp/` que existe neste PC não é o do outro. Tem 17 checagens (o
`CLAUDE.md` promete 46), 49 asserções (289) e 21 mutações (195); não tem
`docs/` (nem `CONTEXTO-PETRICHOR.md`, nem `METODO.md`), nem `CLAUDE.md`, nem
`verif/gera_catalogo_poderes.py`. Duas mutações caçavam `0.39.0` literal e
estavam inválidas; o `versoes` do servidor MCP só conhece o `ficha-cyber`.

A linha de base rodada nele deu **um vermelho falso**: `Calculos.pv` com
`prana=73` esperava 119 e veio 46. A ficha está certa — o contrato trocou
`ctx.prana` por `ctx.reserva` em 06/09/2026 (`4d04493`), quando a decisão de
22/08 foi ampliada para todo vampiro; a asserção ficou com o nome velho. E com
a base vermelha, as 9 mutações de cálculo **abortavam**: a rede estava cega
justamente para a conta.

O que foi consertado nesta cópia, para ela voltar a valer alguma coisa:

* a asserção do `pv` usa `reserva`, com a citação da decisão ampliada;
* a mutação de cálculo "o Vitae ignora o Prana" passou a mirar `n(ctx.reserva)`;
* as mutações 27 e 32 miram por padrão (`<version>…</version>`, `fontSize="11"`
  do selo), em vez do literal `0.39.0`;
* a cópia da pasta para mutação ignora `.git` e `output/` — o `rdk` segura o
  `.rpk` de `output/` enquanto compila, e a mutação caía com `WinError 32`.

O que **não** dá para recuperar aqui: as ~29 checagens, ~240 asserções e ~174
mutações que só existem no outro PC. Verde nesta rede vale menos do que valia.

### As redes

Numeração: a **58** recria a do outro PC com o mesmo número e o mesmo contrato,
para fundir sem colisão; **60, 61 e 62** são novas e podem precisar de
renumeração na fusão.

* **checagem 58** — a moldura do par atual/máximo escrita no Lua bate com a
  soma das margens do XML nos cinco cards, contando irmão anterior à caixa
  (o espaçador entra com `width="0"`; largura fixa nele seria o mesmo número
  morto). Pega a **classe**: qualquer margem que mude em qualquer dos cinco
  cards, ou espaçador com largura no XML. Mutações: o `left=12` literal da
  v0.49.5; largura fixa no espaçador de um card;
* **checagem 60** — toda função ligada a uma caixa de busca passa por
  `buscaRepetida()`, e `onChange`/`onKeyUp` chamam a mesma coisa. Não é a
  checagem "nenhuma caixa declara os dois eventos": essa ficaria vermelha na
  v0.49.5, porque os dois eventos ficaram **de propósito** (qual o host dispara
  não é mensurável fora do Firecast) e a proteção é a guarda. Pega a classe:
  caixa nova ligada a filtro sem guarda, filtro que perde a guarda, e os dois
  eventos divergindo (aí a guarda por texto não vale). Mutações: tirar a guarda
  de um filtro; `onKeyUp` chamando com outro argumento;
* **checagem 61** — toda `filtrarCatalogo*` chama `mostrarLinhaCatalogo` só
  **dentro** de `comLayoutSuspenso`, e o próprio wrapper tem `beginUpdate`,
  `endUpdate` e o `pcall(corpo)` que garante o `endUpdate`. Pega a classe:
  filtro novo sem wrapper, linha movida para fora dele, wrapper esvaziado.
  Mutações: trocar o wrapper de um filtro por uma closure que nunca roda; tirar
  o `endUpdate`;
* **checagem 62** — a caixa do ATUAL comporta `-0000` medido no TTF real da
  Cinzel Bold, em **cada corpo que o Lua aplica** (lê os `corpo = N` do
  `ajustarGradeCombate`, a tabela, a margem do `<edit>` e a borda do XML), e o
  `width=` de repouso bate com a entrada do maior corpo. Pega a classe: corpo
  novo sem entrada, entrada apertada, margem ou borda que cresça, fonte trocada.
  Mutações: `[27] = 60` (o pedido literal); `width="60"` no XML de um card;
  corpo 25 no Lua sem entrada.

Todas as 30 mutações de empacotamento e as 9 de cálculo pegas (registro abaixo).

## v0.49.5 — a caixa media 88px para um número de 55 (07/09/2026)

### O campo de valor era 60% maior que o maior valor possível

Relatado na tela, com print: *"agora sim está centralizado os valores dos cards,
mas o campo editável continua se estendendo até o limite da esquerda. (…) Não
precisa ter uma largura tão grande os campos"*. O mestre digitou **9999** no
card de Prana de propósito, como o teto que nenhum recurso ultrapassa.

Aqui não se estimou largura de fonte: as fontes estão no repositório e foram
**medidas** com o `fontTools`, em Cinzel Bold 22px, que é o que os cinco cards
usam:

| texto | largura |
|---|---|
| `9999` | 55,4 px |
| `0000` (os quatro dígitos mais largos) | 57,5 px |
| `-0000` (o pior caso com sinal) | 65,8 px |

A caixa tinha `width="88"` e o `edit` dentro dela `margins="{right=6}"`: 80px
úteis para um número que ocupa 55. Sobravam ~25px de vão à esquerda do valor —
que é exatamente o que aparecia no print.

A caixa passa a **76px** (68 úteis). Isso ainda cabe o `-0000`, e o *hint* do
campo diz que ele **pode ficar negativo** — sinal cortado num campo alinhado à
direita apagaria o menos e faria um número negativo parecer positivo, que é o
tipo de erro silencioso que esta ficha existe para não cometer.

E os 12px que saíram da largura **voltaram como margem esquerda**, não como
espaço livre: `margins="{left=12,right=4}"`. O valor fica no mesmo pixel de
antes e o rótulo `/ máximo` também — a centralização conquistada na v0.49.4
continua intacta, e só a moldura visível encolheu, que era o pedido.

Vale para os cinco: Vida, Aura, Mana, Prana e Vitae.

### A busca rodava duas vezes por tecla, e ninguém tinha olhado o XML

Relatado na tela: *"o campo de busca dos pop-ups continua travando, estou
pensando em desistir da ideia, já que parece fora dos limites da plataforma
filtrar listas muito grandes."*

A plataforma não é o limite. Duas coisas estavam abertas, e as duas no XML —
não no Lua, que é onde as três correções anteriores procuraram.

**Primeira: cada caixa de busca dispara o filtro duas vezes.** As quatro
declaram `onChange` **e** `onKeyUp`, cada um chamando a mesma função com o mesmo
argumento. São quatro `onKeyUp` no arquivo inteiro, um por caixa de busca, todos
com a indentação fora do lugar — assinatura de acréscimo às pressas que nunca
saiu.

Apagar um deles seria a correção óbvia e **está errada**: qual dos dois o host
dispara ao digitar não é mensurável fora do Firecast, e apagar o que funciona
mata a busca inteira sem erro nenhum, com a lista parada parecendo certa. Então
os dois ficam, e o filtro passa a guardar o último texto aplicado: a segunda
chamada da mesma tecla sai numa comparação de string. Funciona se vier só um
dos eventos, e funciona se vierem os dois.

**Segunda: o layout nunca foi suspenso.** `gui.Control:beginUpdate()` existe em
`sdk/rrpgGUI.lua:59` e invoca o `BeginUpdate` do host. A ficha usava
`beginUpdate` **só no NDB** — nenhum widget jamais o usou. A busca vinha
mudando a altura de até 250 filhos com o `scrollBox` ao vivo. As três funções de
filtro passam a rodar dentro de `beginUpdate`/`endUpdate` do `scrollBox` do seu
próprio popup, com `endUpdate` garantido mesmo se o corpo estourar — `scrollBox`
que fica com update suspenso para de repintar e não acusa nada.

**O segundo ponto é hipótese, não medição, e a diferença importa.** O farejador
mediu `MUDAR altura 0 ms` para 250 cards — rápido demais para 250 chamadas reais
ao host. Isso sugere que `setHeight` só marca o layout como sujo e o custo
aparece no *reflow*, depois que o Lua devolveu; se for isso, o farejador nunca
poderia tê-lo visto, porque ele mede a si mesmo — a armadilha nº 2 da casa. O
print da busca nesta versão é o que decide.

## v0.49.4 — a margem custava 35 ms por chamada (06/09/2026)

### O que travava a busca não era o que eu disse duas vezes

Relatado na tela, depois de duas correções minhas: *"o campo de busca dos
poderes e itens continua travando muito, vamos ter que arranjar um jeito de
ficar leve essa ferramenta, ou desistir dela"*. E depois: *"Continua pesado."*

A lei da casa manda que, na segunda explicação para o mesmo sintoma, se pare de
raciocinar e se construa o instrumento. Foi o que a v0.49.2 fez — o farejador,
que roda **dentro do Firecast** porque o harness troca `setHeight` por escrita
em tabela e por isso não vê o host, que é onde o tempo estava.

A medição, digitando `!t` na caixa de busca:

| catálogo | laço de Lua | achar o widget | mudar altura | **mudar margem** |
|---|---|---|---|---|
| poderes (111 cards) | 0 ms | 0 ms | 1 ms | **1.854 ms** |
| itens (250 cards) | 0 ms | 0 ms | 0 ms | **8.749 ms** |

`setMargins` custa **~35 ms por chamada** neste host. `setHeight` é de graça. As
duas explicações anteriores — a tempestade de `gsub` (real: 153 ms → 13 ms) e o
*reflow* da lista (que não era nada) — mediam o Lua, e o custo não estava no
Lua.

E a chamada estava ali **por minha causa**: eu zerava a margem ao esconder o
card para não deixar vão fantasma. A correção tira a folga vertical da margem e
a põe na **altura** dos 466 widgets de catálogo — esconder passa a ser altura
zero, e altura zero não deixa vão. A margem que sobrou é horizontal (o recuo
`left=12` das alternativas de um mesmo slot) e nunca é tocada.

As três alturas viraram uma por prefixo: o último card de um slot levava
`bottom=6` e os outros `bottom=2`, o que daria três alturas para `rectPod_`, e a
busca devolve todos com um número só. O que separa os slots é o rótulo
*"SLOT n"*, que continua.

### Os valores dos cards saíram do meio

Relatado na tela: *"Agora os valores dos cards ficaram deslocados na esquerda,
saíram completamente de centralização."*

A caixa do **ATUAL** tinha 88px cravados no XML, e quem decide a largura do card
é o `ajustarGradeCombate`, em tempo de execução (a linha disponível dividida
pelos cards visíveis). Numa janela larga o card passa de 230px, o rótulo
`/ máximo` é `align="client"` e come toda a sobra: o par inteiro escorrega para
a esquerda. Agora a caixa vale **metade do miolo do card**, e o `/` cai no meio
em qualquer largura.

### Quatro chamadas para uma função que não existia mais

`suspenderLista()` era a segunda explicação — suspender o *reflow* da lista — e
morreu junto com a maquinaria de margem. As quatro chamadas ficaram:
`attempt to call a nil value (global suspenderLista)` em cima do filtro, que é
justamente a ferramenta que o mestre estava tentando usar.

### As redes

* **checagem 57** — a busca não mexe em margem, e card de catálogo não tem
  margem vertical. As duas metades: a chamada não volta, e a margem que a
  justificava não volta também. O comentário *"NÃO REINTRODUZA setMargins
  AQUI"* aponta para ela, porque comentário não é guarda-corpo;
* **checagem 58** — a caixa do ATUAL vale metade do card, e a moldura escrita no
  Lua bate com a soma das margens no XML dos cinco cards;
* **checagem 59** — toda função chamada pelo script existe em algum lugar. É a
  outra metade da 56: a 56 cobre o nome declarado **abaixo** de onde é usado, e
  a 59 cobre o nome que não existe em canto nenhum. As duas dão a mesma
  mensagem na tela, e nenhuma das duas é erro de compilação em Lua;
* **checagem 51 (d)** — nenhuma altura literal entregue ao
  `mostrarLinhaCatalogo` é inventada. As partes (a) e (c) comparam o XML com
  números que moram na régua; esta lê o outro lado;
* **a bateria da busca parou de repetir a altura.** As 13 asserções cravavam
  44, 28, 26, 24, 18, 20 e 14 — e quando a altura mudou, elas cobravam o
  tamanho que tinha deixado de valer, que é o teste protegendo o defeito. Agora
  a altura declarada sai do `ficha.lfm` lida **pelo Python**, e a asserção
  cruza duas fontes de verdade em vez de medir o Lua com o Lua;
* **as duas asserções da margem foram invertidas**: exigiam que esconder
  zerasse a margem. Era o contrato do defeito.

E o **gerador de poderes** foi corrigido junto — ele reemite os 111 cards, e
regerar sem isso devolveria as margens lentas em silêncio. Duas âncoras dele
tinham envelhecido (o `scrollBox` e o rótulo *FORA DOS KITS* ganharam `name=` na
v0.48.0/v0.49.x) e o gerador quebrou ruidosamente ao ser chamado, que é o
comportamento certo. Regerado, o arquivo saiu **byte a byte igual** ao editado à
mão.

---

## v0.49.3 — o farejador lia um global nil (06/09/2026)

`farejarBusca` foi escrita **acima** dos `local function montarIndice*` que ela
chama. Em Lua isso não é erro de compilação: o nome vira global, vale `nil`, e
só estoura no uso — `attempt to call a nil value (global 'montarIndiceItens')`
na tela do mestre, depois de 46 checagens e 292 asserções verdes.

A **checagem 56** nasceu daqui: nenhum `local` de topo é usado acima da linha
que o declara. A skill e o `CLAUDE.md` listavam essa verificação como
obrigatória havia versões, e ela **nunca existiu** — o que a deixava valendo o
mesmo que um comentário. O mesmo defeito já tinha custado a v0.45.0.

---

## v0.49.2 — o farejador (06/09/2026)

Duas explicações gastas no mesmo sintoma. A ficha passou a se medir por dentro:
digite `!t` na caixa de busca do catálogo e ela escreve o laudo acima da lista,
separando laço de Lua, achar o widget, mudar altura e mudar margem. Não altera
nada na ficha.

---

## v0.49.1 — a perícia rolava com o atributo sem a penalidade (06/09/2026)

Relatado na tela: a linha dizia *"Atributo 1 + Proef 3"* com o Ferido ativo,
quando devia dizer *"Atributo -1 + Proef 3"*, total +2.

O atributo passou a ter **dois totais**, e a diferença é o que cada um serve:

* `<atributo>Total` — **limpo**, sem a penalidade do Ferido. Sete consumidores
  leem dele e **nenhum é rolagem**: o teto de pontos por perícia e as quatro
  contas de defesa. Se ele levasse a penalidade, a defesa contaria o Ferido
  duas vezes;
* `<atributo>TotalRolagem` — com a penalidade. É o que a tela mostra e o que a
  perícia soma.

---

## v0.49.0 — a terceira coluna do atributo, e a busca que travava (06/09/2026)

### Cada tecla no catálogo refazia 37 mil operações de texto

Relatado na tela: *"essa mecânica está muito pesada (…) sempre que busco por um
nome a ficha fica travada por longos segundos"*. Duas causas, e as duas somavam:

* a **dobra era refeita a cada tecla**. `chavePoder()` percorre uma tabela de
  ~50 acentos com um `gsub` por entrada, e o filtro da loja a chamava **duas
  vezes por card** mais uma por nome buscado: 250 × 3 × 50 = **37 mil `gsub` por
  tecla**. Agora o índice é montado uma vez;
* **todo card recebia `setHeight` e `setMargins` a cada tecla**, inclusive os
  240 que já estavam escondidos e continuariam escondidos. No harness isso é
  escrita em tabela; no Firecast é chamada ao host, e é ela que congela a tela.

**Medido**, digitando `armadura` e apagando (17 teclas), nos três catálogos:

| | tempo de Lua (itens) | chamadas ao widget |
|---|---|---|
| antes | 153 ms | **7.718** |
| depois | 13 ms | **1.293** |

### O atributo tem três parcelas

```
FORÇA   [base]  +  [bônus]  +  [automações]  =  [total]
```

A terceira coluna é onde raça, poder, qualidade e **Ferido** aparecem. Até aqui
eles somavam no mesmo campo em que o jogador digita o bônus dele — o que
escondia de onde veio cada ponto e obrigava a máquina de concessões a somar e
subtrair em vez de recalcular.

**São dois totais, e confundi-los é a armadilha desta versão.** O total
*interno* continua **limpo**, sem o Ferido, porque **sete rotinas o leem e
nenhuma é rolagem** — quantas perícias cabem no atributo, a conta das quatro
defesas, o texto do deslocamento. Decisão da mesa: *"como o próprio ferido diz,
ele influencia ROLAGENS, então esses derivados não são influenciados"*. Há
asserção cravando que a **vida máxima não se move** quando o Ferido muda.

A coluna é `<label>`, não `<edit>`: é calculada, e o que o jogador digitasse ali
sumiria no recálculo seguinte sem aviso.

**O reparo** desfaz cada concessão de dentro do bônus usando a função inversa
que a ficha já usa quando uma fonte sai — não uma conta nova escrita para a
ocasião — e deixa `aplicarConcessoes()` reaplicar tudo na coluna.

### Atual / Total no card, e a cor certa

Os cinco cards de recurso mostram `atual / máximo`, e o campo ATUAL usa a cor do
próprio card. **Eu tinha chutado essas cores** em vez de ler as do card, e errei
duas de cinco: a Aura ficou roxa num card dourado, o Prana verde num card roxo.
Quem viu foi o mestre, na tela. Virou a **checagem 54**, que cobra a *forma* — o
campo herda a cor do rótulo do card —, então barra nova nasce coberta.

A **caixa de busca** pintava fundo claro próprio: 122 dos 134 `<edit>` da ficha
são `transparent="true"` e as minhas quatro estavam entre as que não eram.

### O que a mutação me corrigiu nesta leva

* uma sonda que **se anulava sozinha**: `CAMPO_AUTO_ATRIBUTO` aparece duas vezes
  (a declaração e a restauração no fim do reparo), e trocar só a primeira fazia
  o reparo devolver o valor certo no fim;
* uma sonda **na rede errada**: "a tela volta a mostrar o total limpo" é fato de
  **XML**, e asserção de Lua não alcança XML. Mudou para a rede de
  empacotamento, junto com a checagem 55, que nasceu disso.

---

## v0.48.0 — busca nos catálogos, e o gerador que reescrevia o arquivo inteiro (05/09/2026)

### Campo de busca nos três catálogos

Qualidades, Defeitos, Loja e Poderes abrem com uma caixa de texto acima da
lista. Digitar filtra; apagar devolve tudo.

Como a mesa decidiu, e por quê:

* **casa só com o nome**, não com a descrição — nos 250 itens da loja o nome já
  carrega a qualidade ("Armadura leve · Ótima"), e varrer texto longo a cada
  tecla traria falso-positivo em quase toda entrada;
* **ignora acento e maiúscula**: digitar `pocao` acha *Poção de Cura*;
* **filtra a cada tecla**;
* **zera ao reabrir o pop-up**. O texto não é gravado no NDB de propósito — a
  caixa não tem `field=`, então não há campo novo a serializar por uma
  preferência de interface.

### Filtrar não reconstrói a lista

Esta é a decisão que sustenta o resto. Os **412 cards** dos três catálogos são
estáticos no XML e cada um já carrega sua chave dentro do próprio `onClick`.
Reconstruir a lista é que perderia a chave — foi assim que `creditoEmbutido`
sumiu na v0.28 e `imagem` na v0.33 — e, no catálogo da loja, quebraria os **250
índices posicionais** que a checagem 20 amarra. Então a busca só **esconde card
que já existe**: quem sobra continua com exatamente o mesmo clique de sempre.

Esconder é por **altura zero**, nunca por `visible=`, que neste SDK **reordena**
um `align="top"`.

### Os cabeçalhos de seção não tinham nome

Filtrar por "cura" escondia os cards e deixava **"ARMADURA"** e as 18 divindades
flutuando sobre o vazio: a lista parece quebrada e não há erro nenhum na tela
para desmentir. Os 15 cabeçalhos do pop-up da loja e os 39 do de poderes não
tinham `name=`, então o Lua não os alcançava.

Agora têm, e somem junto quando a faixa deles esvazia. Os do catálogo de poderes
foram batizados **pelo gerador** (`verif/gera_catalogo_poderes.py`), nunca à mão
— batizar à mão faria a checagem 44 acusar na próxima regeração, que é como um
arquivo irmão fica para trás.

### A margem, que quase apagou o recuo do "um dos dois"

A margem sobra quando a altura vai a zero: 3px em 250 cards deixariam **750px de
vão fantasma**. A correção óbvia — zerar a margem ao esconder — apagaria o
`left=12` dos **41 cards** que são as alternativas do mesmo slot no catálogo de
poderes, que é o recuo que mostra a estrutura do kit. Card mentindo sobre o kit é
pior que vão em branco.

Então a margem original é **lida do próprio widget** antes de ser mexida, e só é
mexida quando a leitura deu certo. Não conseguiu ler, só a altura muda e o vão
fica. Funciona igual se `_gui_setMargins` não responder.

### O gerador reescrevia o `ficha.lfm` inteiro em CRLF

Achado durante este trabalho, e não tem a ver com busca:
`verif/gera_catalogo_poderes.py` gravava o arquivo com `io.open(..., 'w')` sem
`newline=''`. Em modo texto o Python no Windows traduz o fim de linha na
escrita, então **uma** regeração do catálogo de poderes converteu as 27.514
linhas do arquivo para CRLF de uma vez. O diff do git saiu com 27.294 linhas
apagadas e nenhuma linha de conteúdo diferente.

Não é cosmético: o `.gitattributes` tem `* -text` porque várias checagens medem
o arquivo **byte a byte** (largura pelo TTF real, atributo com quebra de linha,
contagem de caracteres), e conversão ligada muda o que a régua lê.

**Procurando o irmão**, o mesmo defeito estava em mais três lugares — os três
`write` de `verif/mutacao.py`. Esse era pior de um jeito silencioso: como toda
mutação converteria o arquivo, a checagem nova acusaria em **todas as 97**, e
cada uma reportaria "pegou" pelo motivo errado. Os quatro foram corrigidos, e os
leitores também passaram a preservar, para o arquivo voltar byte a byte.

### Duas checagens novas, e as quatro sondas

| # | O que pega | Bug que a gerou |
|---|---|---|
| 51 | a busca alcança cada cabeçalho, e com a altura certa | cabeçalho sem `name=` flutuando sobre a lista filtrada |
| 52 | nenhum arquivo de texto do plugin viaja com CRLF | o gerador convertendo o `ficha.lfm` inteiro |

A **51** lê a tabela de alturas do próprio script em vez de repetir os números
aqui, e cobra `name=` por **forma** — todo `<label align="top">` dentro de um
`<scrollBox>` que contém cards de catálogo — e não por uma lista de nomes, para
que cabeçalho novo nasça coberto.

A **52** mede a **classe**: qualquer ferramenta que reescreva um arquivo do
plugin em modo texto cai nela, não só o gerador. Tem uma exceção só, `sdk/`, com
o motivo escrito ao lado dela no código: são os 21 arquivos do SDK como o
fabricante distribui, 12 deles já em CRLF, e converter código de terceiro para
encaixar na nossa régua é mexer no que não escrevemos para agradar a medição.

As quatro sondas de mutação estão ancoradas em **código** — nome de widget e
expressão de tabela — nunca em alinhamento nem em comentário, que foi o que
apodreceu seis sondas até a v0.47.0.

### O vampiro perdeu a barra de Vida (decisão do mestre, 06/09/2026)

Até aqui o vampiro tinha **duas** barras: Vida e Vitae. O livro (`3.2.md:74`)
diz que o Vitae fica *"no lugar da Aura e da Mana"* — nomeia só essas duas — e
era assim que a ficha fazia desde a v0.34.4, com **Vigor expandido incidindo na
Vida** e **Aura expandida na Aura**.

O mestre revogou:

> "para o vampiro tudo que vale é o vitae, e ele pode se beneficiar tanto da
> qualidade aura expandida, quanto vigor expandido (…) retira o campo de vida
> dos vampiros, deixa só vitae"

```
Vitae = (base + Vigor expandido) + [(Aura + Aura expandida) + Mana]
base  = 10 + (Con × 1,5) + (rank × 30)
```

**A regra nova é mais simples que a antiga.** O colchete é exatamente o Prana
que já existia (mana + aura), então **acabou o caso especial da vampibruxa**:
agora *todo* vampiro soma Aura e Mana no Vitae. Era aí que a Aura expandida se
perdia calada num vampiro sem Linhagem de Unaris — a Aura dele não alimentava
nada, e o jogador pagava pontos por uma qualidade inerte.

Duas coisas que exigiram medida, não dedução:

* **ordem de operações.** O percentual do Vigor multiplica **só a base**. A Aura
  expandida não multiplica o Vitae inteiro — ela já veio somada dentro da Aura, e
  aplicá-la de novo dobraria o mesmo número;
* **o ganho das qualidades aparece na conta como parcela absoluta**, nunca como
  `× 1,3`. O avaliador da bateria arredonda para baixo **todo** grupo entre
  parênteses, então `(10 + Con 5 × 1,5 + rank 2 × 30) × 1,3` leria 77 × 1,3
  enquanto o código faz 77,5 × 1,3 — a conta deixaria de fechar exatamente nos
  vampiros de Constituição ímpar.

`sheet.hp` continua sendo calculado por baixo, invisível: é o que faz a barra de
Vida voltar certa no instante em que a raça deixa de ser Vampiros, sem migração.
Há asserção cobrando as duas pontas — que some, e que **volte**.

**E a asserção que protegia a regra antiga apareceu na primeira rodada.** Ela
dizia, com todas as letras, "DECISÃO DA MESA 22/08/2026: o Prana entra DENTRO do
Vitae", e falhou assim que o parâmetro mudou de nome. É o que a lei da casa
manda procurar: ao consertar, ache o teste que estava protegendo o
comportamento antigo. O número dela, aliás, **não mudou** — 119 antes e depois.

### Card SANGUE BEBIDO

Ao lado do Vitae, na cor dele, só para vampiros.

`[1.6]`, Raças/Vampiros, **[Sede de sangue]**: *"você apenas recupera esta barra
de energia se alimentando do sangue de outros seres vivos. Cada 50ml recupera 1
ponto de Vitae."*

É **degrau, não proporção**: 149 ml são 2 pontos, não 2,98. O card **converte e
registra, e não soma em lugar nenhum** — a ficha não rastreia recurso *atual*
para o personagem, só máximos, e somar ali entregaria metade de um rastreio que
não existe.

### Atual × máximo nas cinco barras

Até aqui a ficha guardava **só máximos**. Foi por isso que o card de sangue
bebido nasceu apenas convertendo ml em pontos, e o de descanso, apenas
mostrando números: não existia onde somar. Decisão dos mestres (06/09/2026):
Vida, Aura, Mana, Prana e Vitae passam a ter **atual e máximo**, com o atual
editável em cada card.

Três regras, e as três são de mesa:

* **Ficha antiga nasce cheia.** Campo que nunca existiu vira o máximo — sem
  isso toda ficha da mesa abriria com 0 de vida. É um **reparo**, não um bloco
  de migração de versão: reparo escrito como `elseif` de migração nunca roda
  para quem está na versão antiga, que é a maioria.

  A marca é **string, não booleano**. O NDB já devolveu booleano de mais de uma
  forma neste projeto, e um `true` que voltasse como `1` faria o reparo rodar de
  novo e **curar quem estava ferido**. E a marca é necessária porque campo vazio
  é indistinguível de campo zerado: sem ela, o personagem a 0 de vida seria
  "curado" toda vez que abrisse a ficha.

* **Máximo que muda leva o atual junto, pela diferença.** Subiu de nível e
  ganhou 8 de máximo, ganha 8 de atual. Encher a barra apagaria o dano toda vez
  que o mestre mexesse num ajuste no meio da sessão.

* **Pode ficar negativo.** O teto é duro; o piso não existe. O livro não tem
  regra de vida negativa — isto é da mesa, e o mestre vê o quanto o golpe passou
  de zero.

### O Ferido passou a entrar sozinho

Com vida atual gravada, a **queda entre dois recálculos é o golpe** — e o
gatilho do livro ficou automático. Era exatamente a inferência que esta mesma
versão tinha recusado por não haver dado; o dado passou a existir.

* **Só sobe.** *"mesmo se ele voltar a recuperar a vida por cura e etc, o ferido
  ainda continua"* (mestre). Curar não mexe no nível, e golpe menor que o
  ferimento atual também não.
* **Dispara o maior nível que alcança**, não o primeiro.
* **Mudança de máximo não é golpe** — a reconciliação move a base do detector
  pelo mesmo delta. Sem isso, perder uma qualidade marcaria um Ferido que
  ninguém causou.

> **O risco foi aceito e está escrito no código:** digitar 45 e corrigir para 4
> registra uma queda de 41 e pode marcar um Ferido que não aconteceu. As setas
> continuam ali — o mestre desfaz num clique. Falso positivo corrigível é melhor
> que falso negativo silencioso.

### Descanso que aplica, e sangue que soma

Dois botões, **CURTO (12h)** e **LONGO (24h)**, que agora somam de verdade nas
barras. `[2.3]`: 30% da vida e 50% da aura/mana no longo; 25% e 25% no curto.

**Três qualidades mexem no descanso e nenhuma estava modelada.** Vigor
expandido, Vigor reprimido e Aura expandida têm, na **mesma frase** do livro, um
segundo efeito — *"recupere 25% mais de vida por descanso longo e curto"* — que
o catálogo não guardava: ele só tinha o percentual de *total*. Entraram como
`descansoHpPercent` e `descansoApPercent`. Detalhe de leitura: *"recupere 25%
mais **desta energia**"* é a **Aura**; a mana não é modificada.

Decisões da mesa (06/09/2026), que o livro não dá:

* **o descanso longo zera o Ferido**;
* **a recuperação própria do Ferido substitui o ganho do descanso longo** —
  30%, 20% ou 10% conforme o nível. Isso explica a frase do livro que parecia
  inofensiva: o Ferido I recuperar "30% por dia" é igual ao padrão por
  coincidência; quem perde são o II e o III;
* **a ordem é descansar ferido e depois sarar** — o ganho sai pelo percentual do
  nível que a personagem tinha ao deitar.

O **vampiro descansa e sara, mas a barra não sobe**: `[1.6]`, *"[Sede de
sangue]"*, o Vitae só volta com sangue. Para ele há o botão **BEBER**, que
converte o ml anotado em pontos e **desconta só o que virou ponto** — o resto
abaixo de 50 ml continua anotado. Zerar tudo perderia o resto; não descontar
nada faria o mesmo copo ser bebido a cada clique.

**O número que o card mostra é o número que o botão aplica** — os dois saem da
mesma função. Card mostrando um valor e botão somando outro é a classe de bug da
conta do deslocamento, que mentiu por duas versões neste projeto.

### O que a bateria e a mutação pegaram de mim, nesta leva

* a bateria do Ferido **media a barra errada**: as baterias dividem o mesmo
  `sheet`, e a do Ferido termina trocando a raça para Vampiros — o detector
  passou a vigiar o Vitae. O farejador mostrou `base=141` contra uma vida atual
  de 46; duas hipóteses minhas morreram na primeira medição;
* a asserção de "mudança de máximo não é golpe" mexia **10 pontos**, abaixo do
  limiar de 14 — passava verde com o detector quebrado. A mutação foi quem
  mostrou; agora ela balança 80;
* eu escrevi uma sonda que **não podia falhar** (a base do detector lendo o
  máximo em vez do atual: as duas expressões são provadamente iguais naquele
  ponto) e cheguei a registrar isso como "erro real encontrado". **Não era.** A
  sonda saiu e o motivo ficou no lugar dela;
* e o card de descanso derrubou 27 asserções de uma vez ao ler `efeitosQD`, que
  é **local de `recalcularTudo`** e não se enxerga da pintura. Indexar nil parou
  a pintura no meio e os cards seguintes deixaram de existir.

### Condição FERIDO, na linha das defesas

`[2.3]` "Ferimentos": um **golpe único** que aplique 30%, 60% ou 90% da **vida
máxima** dá Ferido I, II ou III — **−2, −4 e −7 em todos os testes**.

Decisões da mesa (06/09/2026): **substitui, não acumula** (30% depois 60% dá
Ferido II, não I+II) e **"todos os testes" inclui as quatro defesas**. A segunda
contraria o vocabulário do próprio livro — na Lista de Condições de Estado ele
escreve "defesas" toda vez que quer incluí-las, e no Ferido não escreve — e a
divergência está registrada no CONTEXTO junto do texto.

**O gatilho não é inferido, e isso é a decisão de arquitetura.** A ficha não vê
golpes: vê um campo que alguém edita. Deduzir "caiu 41 pontos, logo foi um golpe
de 41" quebra assim que o jogador digita 45 e corrige para 4. Então:

* o **nível** é marcado à mão, com duas setas;
* os **limiares** são calculados e mostrados em pontos — `num golpe: I ≥ 13 ·
  II ≥ 26 · III ≥ 38` —, que é a conta que ninguém quer fazer na mesa;
* a **penalidade desce nas quatro defesas** e entra na conta de cada uma
  (`− Ferido II 4`), porque número que desce sem explicação vira mensagem para
  o desenvolvedor;
* o **ajuste do mestre** vale mesmo sem nível, e a linha mostra a conta —
  `Ferido II: −6 em todos os testes [4 + ajuste 2]`.

No vampiro o Ferido mede o **Vitae**, porque ele não tem Vida. Mora numa função
só (`vidaMaximaParaFerimento`), para corrigir a leitura ser uma linha.

Duas rotas de gatilho que a ficha nunca verá, e estão documentadas: golpe em
**Órgãos-vitais** com 60% aplica **Ferido III direto** (`[2.3]`, Áreas de acerto
— não Ferido II), e venenos podem "adicionar níveis de ferimento" (`[2.8]`).

**Marcar Ferido é JOGO**: o nível não passa por `<edit field=>`, então a trava
de finalizar não tem o que desabilitar. Há asserção rodando com a ficha
**finalizada** e o usuário **não** sendo mestre — testar com a ficha aberta
mediria o caso fácil.

### Checagem 53: criação × jogo, agora dos dois lados

A 42 cobrava um lado só — campo de criação que ficou fora da trava. Faltava o
oposto, e ele é igualmente calado: **campo de jogo que alguém tranca por
simetria**.

`CAMPOS_TRAVA_CRIACAO` sempre teve uma irmã implícita, e implícito é o que a
próxima sessão "corrige". Agora ela é explícita — `CAMPOS_LIVRES_EM_JOGO` — com
o motivo de cada entrada ao lado dela.

O sinal é estrutural, e não uma lista de nomes: um `<edit field=>` grava direto
no NDB, e a única trava possível é `setEnabled(false)`, que exige `name=`. Logo
**campo do NDB com `name=` é campo que alguém quis que o Lua alcançasse**, e a
única coisa que o Lua faz com um desses é habilitar ou desabilitar. São 19 no
`ficha.lfm`; os 39 sem `name=` são ajustes comuns.

A checagem nasceu **acusando** `itens/itemPericia.lfm`, e a acusação mostrou o
limite dela: em templates de linha de `recordList` o `field=` liga ao nó do
registro e o `name=` é endereçamento interno, não pedido de trava. O escopo
ficou no `ficha.lfm`, com o motivo escrito no código.

### A sonda que não podia falhar

A bateria de mutação vinha reportando **uma** "checagem decorativa" desde a
v0.47.0: a 36(b), o caso da pasta NVIDIA. O rótulo estava errado, e mandava
consertar a coisa errada.

A sonda criava a pasta intrusa **na árvore de fontes**, mas a checagem 36 parou
de prever e passou a **medir o `.rpk`** na v0.47.0 — e como o arquivo recém-
criado é sempre mais novo que o zip, a sonda caía por construção no ramo "não
medido", que avisa e não reprova. Não era checagem frouxa ("não pegou") nem
sonda com o alvo sumido do código ("não aplicou"): é um **terceiro formato** —
sonda apontada para o artefato que a checagem deixou de ler.

Agora ela põe o intruso **dentro do zip**, que é onde a 36 olha, e a checagem
reprova como devia.

Junto, uma contradição do próprio relatório: a 36 listava `NVIDIA Corporation`
como "não entra no pacote" **uma linha acima** de "ESTÁ dentro do `.rpk`".
Instrumento que afirma as duas coisas ensina a não ler nenhuma das duas.

### As redes

| rede | v0.47.0 | v0.48.0 |
|---|---|---|
| checagens de empacotamento | 41 | **43** |
| asserções em Lua puro | 188 | **213** |

As 25 asserções novas exercitam o filtro de verdade: a dobra de acento de ponta
a ponta (`graça` e `graca` acham o mesmo card), o cabeçalho sumindo junto com a
faixa vazia, a margem voltando inteira, o pop-up de Qualidades não mexendo na
lista de Defeitos, e a busca sem resultado não deixando **nenhum** título
flutuando.

---

## v0.47.0 — as 29 raças, e as duas metades do mestiço (05/09/2026)

### O que a v0.46.0 afirmou, e estava errado

A v0.46.0 entregou escudo só para as 10 raças jogáveis e escreveu, aqui neste
arquivo, que *"as raças não jogáveis não têm brasão, de propósito. Ninguém as
escolhe na criação."* A segunda frase é falsa, e foi apontada na tela: as 12
não jogáveis **entram na criação** por dois caminhos que o próprio sistema já
tem — a qualidade **Mestiço** as coloca como segunda raça, e a **Sangue das
raças antigas** as coloca como raça **principal**. Um personagem legítimo podia
ficar com o card sem escudo enquanto o vizinho tinha.

O erro não foi de código: foi eu deduzir uma regra em vez de ler a que estava
escrita. E ele estava **gravado como contrato** na checagem 48, que cobrava
apenas as jogáveis — passava verde exatamente no caso reclamado. É o que a
lei do projeto avisa: ao consertar um bug, procure o teste que estava
protegendo ele.

As 7 Primordiais também ganharam escudo. Elas não entram na criação, mas o
campo aceita o nome, e meio conjunto na tela parece defeito — o mesmo motivo
pelo qual a v0.44.1 fez selo para as divindades não selecionáveis.

**Agora são 29 escudos**, um por raça do catálogo.

### O segundo escudo do mestiço

Pedido na tela: com um escudo só, o card de um mestiço mostrava metade da
herança. Agora o escudo da **segunda raça** aparece na ponta **direita** do
card, e os dois juntos contam a herança inteira.

Viabilidade, já que a dúvida era essa: a 1366×768 a linha do card tem ~1180px;
dois escudos de 96 mais as margens tiram 216 e sobram ~950 para o texto, que é
`align="client"` com `wordWrap` e só reflui. O pod da direita nasce com largura
**0** e só abre quando há mestiçagem *com herança definida* — a mesma técnica do
pod da esquerda, e não `visible=`, que **reordena** elementos `align` neste SDK
(foi o que bagunçou esta aba na v0.30).

Duas decisões que valem mais que o efeito visual:

* **O pod da direita é declarado ANTES do irmão `align="client"`.** Neste SDK os
  irmãos são posicionados na ordem em que aparecem: um `client` declarado
  primeiro come a linha e o pod nasce com zero para sempre, sem erro nenhum.
* **A largura dos dois pods sai de uma função só.** Largura escrita em dois
  lugares é a classe de bug que "se conserta" ao trocar de aba e voltar.

E o escudo da direita é **reconciliado**, não criado-e-esquecido: limpar a
herança ou remover a qualidade Mestiço faz ele sumir. Recurso derivado que só
sabe nascer fica na tela depois de a fonte sair, e ninguém nota.

### O que os instrumentos não pegavam

A última leva de três artes (Gigantes, Krakens, Unicórnios) saiu com a
**polaridade invertida**: escudo chapado de ouro com o desenho vazado em preto,
enquanto os outros 26 são contorno de ouro com o desenho por dentro. Vinte e
seis de um jeito e três de outro.

Nenhum instrumento pegou, e cada um por um motivo diferente:

* o conferidor de pipeline compara o **refaz da mesma arte crua** com a
  instalada — arte nova invertida passa com nota dez, porque ele mede o
  pipeline, não o desenho;
* a checagem 48 confere existência, chave e 96×96 — um quadrado dourado liso
  passa;
* até a fração de ouro passou: os invertidos deram 0.19–0.25, **dentro** da
  faixa 0.16–0.30 dos certos, porque o escudo saiu menor e a área compensou.

Quem pegou foi o olho, numa folha de contato. Então virou número: a **checagem
49** mede duas coisas que separam com folga — a fração opaca do anel logo
dentro do contorno (certos 0.038–0.474, invertidos 0.696–0.919) e a maior
componente conexa de ouro sobre todo o ouro (certos 0.253–0.785, invertidos
0.892–0.948). Escudo chapado é um borrão só.

### Novas verificações

* **Checagem 48** — reescrita: cobra as **29** raças, não as 10 jogáveis.
* **Checagem 49** — polaridade da família das artes (acima). Lê o PNG só com a
  biblioteca padrão, porque ela roda também na máquina do usuário.
* **Checagem 50** — o segundo escudo: existe no XML, é declarado antes do irmão
  `align="client"`, tem **um dono só** para a largura, zera nos dois caminhos e
  lê `mesticoRacaSecundaria`.
* **11 asserções Lua** novas (188 no total) que medem o **widget** — `src` e
  largura de volta dos mocks — e não a tabela. Uma bateria que só conferisse
  `BRASAO_DA_RACA["Orcs"]` passaria verde com o pod em largura zero, que é
  exatamente o que o jogador vê como "o escudo sumiu".
* **10 mutações** (`verif/mut_v047.py`), metade contra as checagens estáticas e
  metade contra a bateria Lua, porque as duas veem coisas diferentes: a
  estática vê o texto do código, a bateria vê o widget. Todas as 10 são pegas.

### Ferramenta nova: `verif/arte_brasao.py`

O pipeline que transforma a arte gerada (1024px, ouro sobre preto) no PNG
instalado vivia dentro de um heredoc da conversa. A sessão acabou, ele morreu
junto, e a leva seguinte foi reconstruída **de memória — que estava errada**
(achava que a redução era em dois passos). Agora é arquivo, e os números não
são deduzidos: foram **medidos** contra a arte já aprovada na tela. Redução em
um passo LANCZOS, alfa por luminância com rampa 11→136; `--conferir` refaz a
medição contra as 50 peças instaladas e todas passam.

## v0.46.0 — os brasões das raças (05/09/2026)

Cada uma das **10 raças jogáveis** ganhou um escudo heráldico, ao lado dos
cards SITUAÇÃO e ATRIBUTOS BASE da aba 04: a bigorna sob a montanha dos Anões,
a aranha e o frasco dos Drow, o manto vazio sobre a onda dos Selkies, as presas
e a gota dos Vampiros, a mão com a estrela ladeada de martelo e pena dos
Humanos.

**A forma é escudo, e não medalhão redondo.** Os selos das divindades são
círculos; se as raças também fossem, os dois vocabulários se misturariam na
cabeça de quem lê a ficha. Mesmo ouro, mesmo peso de traço, silhueta diferente:
dá para dizer o que é sem ler.

**As raças não jogáveis não têm brasão, de propósito.** Ninguém as escolhe na
criação, e escudo genérico repetido não identifica nada — seria o "borrão
dourado" da v0.44.0 outra vez, só que maior. O card simplesmente encosta na
esquerda, sem buraco.

### A checagem 48

A regra que ela grava é a lição da v0.44.0 dita ao contrário: **meio conjunto é
pior que nenhum.** Nove raças jogáveis com escudo e uma sem, lado a lado no
mesmo lugar da tela, parece defeito. Então: toda jogável tem brasão, toda chave
da tabela é uma raça do catálogo, nenhum arquivo se repete, e cada PNG mede
96×96 — porque com `originalSize` um arquivo fora de medida sai cortado, que foi
exatamente o que a checagem 19 denunciou nos selos.

Quatro mutações, as quatro pegas.

### O Lizariano foi refeito

O primeiro saiu parecendo um cavalo-marinho. A raça é dos pântanos de Qosis, e
o desenho precisa dizer *réptil* — refeito com cabeça de lagarto, crista e
língua bífida entre os juncos.

**Peso:** `imagens/` foi de 384 KB para 660 KB.

## v0.45.2 — o que testar na tela do usuário revelou (05/09/2026)

Com a v0.45.1 o seletor abriu. Testando **na ficha real**, dois problemas que
nenhuma bateria pegaria, porque os dois são de uso e não de cálculo.

**Não havia volta ao automático.** `""` significava "nunca escolheu", e é isso
que deixa a proclamação mandar — mas nenhum clique devolvia `""`. Quem
escolhesse um selo ficava preso a escolhas explícitas para sempre. Achei porque
cliquei em Mungus na ficha do usuário para testar e **não consegui desfazer**.
Agora "Automático" é a primeira opção, e ela desenha o selo que produz hoje,
com a nota dizendo qual é — em vez de um ícone genérico que não diz no que vai
dar.

**O cabeçalho abria atrasado.** Numa ficha proclamada, ele aparecia com o brasão
do XML; o seletor, aberto em seguida, já marcava a divindade certa. O Lua estava
certo e a tela, atrasada. Não isolei o mecanismo — parece que o `src` do XML é
aplicado depois do `onNodeReady`. Em vez de apostar numa tese, a ficha
**reaplica**: no fim do `inicializarFicha` e outra vez 80ms adiante. Custa duas
atribuições e funciona mesmo se a explicação estiver errada.

### O que isso diz sobre as baterias

As 177 asserções e as 38 checagens estavam verdes com os dois problemas
presentes, e estavam certas: uma media o Lua, a outra o XML. **"Não havia volta"
não é um valor errado — é um caminho que não existe**, e caminho que não existe
só aparece quando alguém tenta andar por ele. Foi preciso usar a ficha.

As asserções novas cobrem os dois agora: o slot 1 devolve `""`, e a opção
Automático desenha `seloAutomatico()`. **17 asserções** no total para o selo, e
**8 mutações**.

## v0.45.1 — o clique estava no widget errado (05/09/2026)

O seletor da v0.45.0 **não abria**, e o selo da proclamação **não aplicava**.
Dois sintomas, uma causa: o `onClick` estava num `<layout>`, e neste SDK layout
não recebe clique — e o Lua também não achava a `<image>` de dentro dele para
trocar o `src`.

O que mais incomoda é que a resposta já estava no arquivo. A ficha tem **1751
`<rectangle>` clicáveis e tinha ZERO `<layout>` clicável**. O código instalado
estava dizendo qual é o padrão deste SDK, e eu inventei outro sem olhar.
"Leia o código, não a promessa" — e o código a ler inclui o próprio projeto.

A **checagem 47** passa a proibir `onClick` em `<layout>` e a cobrar
`cursor="handPoint"` em todo retângulo clicável, porque clicável que não parece
clicável ninguém clica — que foi, literalmente, o relato: "não tô conseguindo
achar".

### Por que as 173 asserções não pegaram

Porque elas medem o **Lua**, e o Lua estava certo: chamando `atualizarSeloCabecalho()`
direto, o `.src` ia para o widget certo. O que estava errado era o XML dizer ao
SDK que aquele widget aceitava clique. É a fronteira que a bateria não cruza — e
por isso a correção virou **checagem estática**, que é quem enxerga XML.

## v0.45.0 — o selo do cabeçalho é do personagem (05/09/2026)

O brasão nos dois lados do título deixou de ser fixo. **Clique nele** e escolha
entre o brasão da mesa, o seu Aspecto Divino e cada divindade que o abençoou —
só isso, porque não se exibe o selo de um deus com quem não se tem vínculo.

E, sem escolher nada, o cabeçalho segue a **proclamação**: quando o Aspecto
Divino proclama o semideus (marco raro — "só vem do seu próprio Aspecto
Divino", e uma vez só), o selo dele passa a acompanhar a ficha inteira sozinho.

### Três coisas que a bateria pegou antes de instalar

**1. O popup estourava ao abrir.** `definirAlturaPod` é `local`, e em Lua um
`local` só existe *a partir da linha* em que é declarado. Escrito acima dela, o
`atualizarPopupSeloCabecalho` enxergava um **global** de mesmo nome — que é
`nil` — e o popup morria com "attempt to call a nil value" na hora de abrir. O
bloco inteiro mudou de lugar, para depois do helper, com a explicação no
comentário.

**2. Um personagem proclamado não conseguia voltar ao brasão da mesa.** A opção
"Brasão da mesa" gravava chave vazia, e vazio quer dizer *nunca escolheu*, que
é justamente o que deixa a proclamação mandar: clicar no brasão devolvia o selo
do deus. Agora `""` é "nunca escolheu" e `"brasao"` é uma escolha explícita.

**3. O clique de cada slot mandava uma constante que não existia.** Chegaria
`nil`, o campo seria zerado, e todo clique voltaria ao padrão — errado em
silêncio, sem erro na tela. Passou a mandar o índice do slot, e a função
resolve pela lista do momento.

### E uma que a checagem 19 pegou

Os selos são de 64px e o cabeçalho tem 38. Como a mesa decidiu
`style="originalSize"` para arte de pacote — arte de tamanho conhecido não
escala —, mandar o de 64 para o cabeçalho o desenharia **cortado**. Agora são
**dois arquivos por divindade**: `selo_<deus>.png` (64, painel de detalhe) e
`selo38_<deus>.png` (38, cabeçalho e seletor). A checagem 46 passou a abrir cada
PNG e conferir a dimensão contra o papel que ele exerce.

Repare que a checagem 19 não foi escrita para isso: ela existe para impedir que
alguém "uniformize" os styles. Pegou este caso de lado, porque a regra dela é
sobre a **decisão**, não sobre o sintoma.

### Reconciliação, e não criar-e-esquecer

O selo é recurso derivado, então é reconciliado **a cada recálculo**, e não só
na hora de escolher. Se a bênção que você estava exibindo for removida, o
cabeçalho volta ao automático no mesmo recálculo e o campo é **limpo** — senão
ele ficaria apontando para um vínculo que não existe mais, e ninguém lembraria
de onde aquele selo veio.

**13 asserções** novas medindo o `.src` que os widgets do cabeçalho receberam
(a saída, não a tabela) e **6 mutações**, todas pegas.

## v0.44.1 — o panteão inteiro selado (05/09/2026)

As 12 divindades que faltavam ganharam selo: as **9 primordiais** (Asta, Bran,
Erinor, Isydras, Khelion, Oskarion, Tenebria, Uhtris e Unaris, Zeno) e as **3
menores** (Haliana, Morgara, Vista). Elas não são escolhíveis, mas carregam o
peso de lore do cenário, e apareciam com o brasão genérico ao lado do nome — o
que fazia a metade não jogável do panteão parecer inacabada.

Cada uma sai do que a divindade é no livro:

- **Asta**, o mais antigo e senhor supremo do céu, pai dos dragões: um dragão
  enrolado em anel com uma estrela no vazio do meio.
- **Bran**, o fogo, "ora explosivo, ora paciente": uma chama partida ao meio —
  metade serrilhada e selvagem, metade lisa e calma.
- **Isydras**, de quem "não existe nenhum registro de sua aparência": só a gota
  e as ondas concêntricas. A ausência é o desenho.
- **Morgara**, nascida "no limiar entre a luz e a escuridão", de asas invisíveis
  aos olhos comuns: uma ave com uma asa sólida e a outra só em contorno.
- **Tenebria**, Senhora da Morte, cujos "fios do destino eram tecidos em
  segredos": um carretel com três fios atados e uma lua atrás.

### Noctefir, refeito com a arte do livro

O print da biblioteca deu o detalhe que o texto do catálogo não tinha: o **elmo
de coroa solar**, "responsável pelas luzes que são vistas no crepúsculo dos
dias", e o cavalo **Érebo**. O selo antigo era um elmo genérico com estrelas —
podia ser de qualquer deus cavaleiro. Agora é Érebo empinado com a coroa solar
atrás, que é a imagem que a mesa já tem na cabeça.

### Duas correções que a folha de contato pegou antes da mesa

- **Khelion** saiu como uma CRUZ CRISTÃ. O prompt pedia "coração no centro de
  uma encruzilhada de quatro caminhos", e a encruzilhada virou crucifixo —
  símbolo do mundo real dentro de um panteão inventado. Refeito sem
  encruzilhada nenhuma: coração no centro de um sol pleno.
- **Tenebria** veio com o que parecia um punhal entre cortinas. Refeito com
  carretel e fios, que é o que a lore diz.

### A checagem 46 subiu de escopo

Era "toda divindade **com kit** tem selo". Agora é **toda divindade do
catálogo** — porque um deus novo entrando sem selo apareceria com o brasão da
mesa, e isso é precisamente o tipo de falha que não quebra nada e chega ao
jogador. As três mutações também deixaram de depender do alinhamento da tabela,
que mudou quando ela cresceu de 18 para 30 linhas e as invalidou em silêncio —
mutação que não aplica é mutação que não testa.

**Peso:** 30 selos a ~8 KB. `imagens/` foi de 264 KB para 336 KB.

## v0.44.0 — os selos das 18 divindades (05/09/2026)

Cada divindade com kit ganhou um sigilo heráldico de 64px, ouro chapado sobre
preto, no painel de detalhe do catálogo. O desenho de cada um sai do que a
divindade **é** no livro, não de ornamento genérico: Oduwa, "O Grande
Hipopótamo", tem a cabeça de hipopótamo sobre duas linhas de rio; Mungus, dos
becos e dos olhos como brasas, tem uma fechadura com dois olhos dentro; Aslot,
Senhora das mil faces e Mãe dos afogados, tem três máscaras afundando; Grún,
das montanhas e da forja, o pico fendido com a chama e o martelo.

### O que a folha de contato mudou no plano

O plano era pôr o selo **também na lista** da esquerda, a 22px. Renderizei os
três primeiros nesse tamanho antes de escrever qualquer XML, e os três viram o
mesmo borrão dourado: dá para ver que *tem* um selo, não *qual*. Seriam 18
arquivos de peso carregando zero informação.

Ficaram só no painel de detalhe. **Imagem que não identifica é peso morto
fingindo de informação.**

O primeiro Aslot também morreu na folha de contato: a máscara lisa lia como uma
cúpula, e o desenho não contava a divindade. Refeito com três máscaras
sobrepostas e fendas de olho vazias.

### A checagem 46, e o buraco entre as duas que já existiam

A 33 cobra que o arquivo citado exista. A 25 cobra que o deus tenha card. Nenhuma
das duas vê o buraco no meio: uma **chave errada** em `SELO_DO_DEUS`.

`"Sydos"` sem acento resolve para `nil`, cai no `or SELO_NEUTRO`, e desenha o
brasão da mesa. O arquivo existe, o card existe, nada quebra — e a divindade
fica com o selo errado para sempre. É exatamente a armadilha que fez a checagem
25 nascer (o `ý` de Sýdos), um andar acima.

A 46 cruza os três lados: toda divindade com kit está na tabela, toda chave da
tabela é uma divindade com kit, e nenhum arquivo aparece duas vezes — porque
copiar-e-colar deixando dois deuses com o mesmo selo também passa despercebido.
Quatro mutações, as quatro pegas.

**Peso:** 18 selos a ~8 KB, `imagens/` foi de 88 KB para 300 KB num pacote de
~2 MB. Os caminhos estão em literal na tabela, e não montados por concatenação,
de propósito: concatenar deixaria os 18 invisíveis para a checagem 33.

## v0.43.0 — as primeiras artes (05/09/2026)

Duas peças, geradas no Higgsfield e tratadas aqui antes de entrar no pacote.
A escolha de **onde** gastar foi a parte que importou: a fonte
`PetrichorSimbolos` já resolve ícone pequeno (67 glifos, 46 usos na ficha),
então gerar imagem para isso seria repetir o que já existe. O que faltava era
o que a fonte não faz: ornamento grande e emblema.

**Moldura de retrato (aba 01).** Era um retângulo de linha, 2 KB. Virou
filigrana dourada com hera, gotas de chuva, pátina de musgo nas reentrâncias e
uma ametista no topo — a paleta da ficha inteira, sem inventar cor nova.

A primeira geração saiu linda e **não serviu**: a borda era grossa e a abertura
caía para 158×192, contra os 228×306 de hoje. O comentário no XML explica que
o 3:4 foi escolhido a dedo porque é onde o `autoFit` corta menos — reformar a
aba para caber a arte seria deixar a arte mandar na ficha. Pedi uma variante de
borda fina: abertura 189×257, **proporção 0,741**, que é 3:4 dentro do
arredondamento. A arte coube na ficha, e não o contrário.

O recorte do centro é por **flood fill** a partir do centro e dos quatro
cantos, e não por limiar de luminância: limiar global comeria também as sombras
*dentro* do ornamento, que são o que dá profundidade à filigrana. A redução é
em dois passos (880 → 468 → 234), porque LANCZOS direto borra a hera.

**Brasão do cabeçalho.** Gota de chuva caindo sobre ardósia rachada, lua
crescente, coroa de louros — o próprio petrichor. Aparece em todas as abas.

São **dois**, um de cada lado do título, e isso não é simetria decorativa: o
título é o `align="client"` daquela fileira e só fica centrado se o que sobra
for igual dos dois lados. Um brasão só empurraria "CRÔNICAS DE PETRICHOR" 38px
para a direita e desfaria a conta que o comentário do cabeçalho explica.

O tamanho saiu de uma folha de contato, não de palpite: rendeirizei o emblema a
34, 40 e 56px sobre o `#0D1317` do cabeçalho, com e sem os louros, e olhei. Os
louros sobrevivem a 38px; o recorte sem eles ficou pior, porque o corte comia
folhas pela metade.

**Peso:** `imagens/` foi de 88 KB para 153 KB, num pacote de 1,86 MB. A
checagem 39 cobrou a contagem de arquivos do LEIA-ME na hora — 21 declarados
contra 22 no disco — que é exatamente o serviço dela.

## v0.42.1 — o que a primeira passada na tela devolveu (05/09/2026)

A v0.42.0 subiu com **35 checagens, 155 asserções e 123 mutações verdes** e o
`rdk l` limpo. A primeira passada olhando a tela achou **cinco** coisas — e as
duas piores são da mesma família: *o que o Lua escreve na hora escapa de toda
checagem estática.* Por isso a rodada não termina em cinco correções: termina
na **checagem 45**, que passa a cobrar as duas formas.

| # | o quê | onde apareceu |
|---|---|---|
| T-04 | selo do traço racial alternativo chegava embaralhado | aba 04, raça Elfos |
| T-05 | `edCri_lblContexto` cortado com ~124px | aba 08, editor de criatura |
| T-06 | "SLOT 4 — um dos dois" num slot de **três** | catálogo de poderes, Ras'buz |
| T-07 | catálogo de poderes com esqueleto vazio "PROGRESSÃO / NÍVEL 1..5" | irmão do M-09 |
| T-08 | contador "Poderes de atributo 2/2" calado sobre o mesmo aspecto | aba 05 |
| T-09 | a alternativa não escolhida ficava na lista poluindo o bloco | aba 04 (pedido na tela) |

### T-04 — o embaralhado que nenhuma tese explicou

O card do traço mostrava `ALTERNATIVA NÃƒO ESCOLHIDA â€" ESCOLHA ACIMA`. O
arquivo está em UTF-8 limpo (conferi os bytes: `4E C3 83 4F`), então a
corrupção é de execução.

**Quatro teses morreram, cada uma por medição, não por argumento:**

1. *"o `string.upper` do Firecast sobe byte a byte."* Morreu no catálogo de
   itens: `string.upper("Arma corpo-a-corpo de uma-mão")` desenha `UMA-MÃO` na
   tela, com o til correto.
2. *"a fonte Marcellus SC não tem os glifos."* Morreu no `ttf.py`: a fonte tem
   `Ã`, `ç` e `—`.
3. *"o ida-e-volta pelo NDB estraga acento."* Morreu duas vezes: `no.tamanho =
   "Médio"` do gerador de criaturas volta certo, e o chip `◆ MANIPULAÇÃO DA
   ÁGUA` do `itemHabilidade.lfm` é lido do nó, passa por `upper` e sai correto.
4. *"o `rdk` compila o arquivo em outra codificação."* Morreu dentro do
   `output/rdkObjs`: o `.lua` gerado tem `\xc3\x83O` e `\xe2\x80\x94`,
   exatamente como o irmão que funciona.

Sobraram duas suspeitas, e uma **sonda de quatro rótulos** — o mesmo texto
acentuado em quatro configurações, lado a lado no próprio card — mostrou os
quatro corretos. A única mudança que acompanha o texto voltar ao normal é o
selo ter deixado de ser `align="client"` sem largura.

**O mecanismo não foi isolado**, e uma regra geral tirada daí seria chute: há
rótulo `align="client"` sem `wordWrap` escrevendo acento que funciona
(`det_lblAdicionar`, `lblCustoHab`). Então o que vai para a mesa é a **forma
observada funcionando**, não a que eu deduziria: `align="left"` com largura
declarada — 330px, contra os 268px do maior selo possível medido no `ttf.py`.

A metade (b) da checagem 45 prende essa forma. É um guarda de **regressão**, e
está escrito lá que é: serve para ninguém "arrumar" o rótulo de volta sem
antes repetir a sonda.

De quebra, o campo do nó passou a levar um **marcador ASCII**
(`alternativa = "sim"/"nao"`) com a frase montada dentro do card. Isso não era
a causa — mas separa o valor lógico do texto de tela, que é o desenho certo de
qualquer forma.

### T-09 — a alternativa não escolhida sai da lista

Pedido seu, olhando a tela: deixar as duas características no bloco roxo e
explicar num texto pequeno que uma não vale polui o bloco. Escolhida uma, só
ela aparece.

Com uma ressalva de projeto: **enquanto nada foi escolhido, as duas continuam
na lista.** É onde o jogador lê o que cada uma faz antes de decidir — esconder
as duas trocaria um bloco poluído por uma escolha às cegas. O selo, nesse
estado, diz `ALTERNATIVA — ESCOLHA UMA ACIMA`.

O irmão apareceu junto: a altura da lista era pedida com `#lista`, o que o
catálogo trouxe. Com uma entrada a menos, sobraria um buraco do tamanho de um
card no fim. Agora conta o que entrou — e há asserção para os dois.

### T-05 — o rótulo que a checagem 35 não podia ver

A linha que explica o rank no editor de criatura era o `align="client"` da
fileira dos botões. Os irmãos dela têm largura **definida pelo Lua** (o botão
"O QUE FICOU PARA VOCÊ" nasce com 0 e cresce), então no XML a fileira parece
folgada e a checagem 35 nem tenta medir — ela só mede rótulo com `text=`
estático. Na tela sobravam ~124px e o texto vinha com reticências.

Agora o rótulo tem `align="top"` e a linha inteira. E o **por quê** virou
verificação: a checagem 45 proíbe a forma, não o número.

### A checagem 45

Duas metades, as duas nascidas destes dois achados, as duas testadas contra o
código que as produziu:

- **(a)** rótulo `align="client"` que o Lua escreve, dividindo fileira com
  irmão cuja largura o Lua muda. Não dá para medir o espaço estaticamente —
  então proíbe-se a forma.
- **(b)** o selo do card racial mantém `align="left"` com largura declarada —
  guarda de regressão para um bug cuja causa não fechou.

### T-06, T-07, T-08

- **T-06**: o gerador cravava a palavra "dois" porque 19 dos 20 slots com "ou"
  têm dois lados. O slot 4 de Ras'buz tem três (água, terra, ar) e a exceção
  existia desde sempre. A palavra agora vem da contagem, no gerador e no aviso
  de compra.
- **T-07**: o M-09 consertou o estado vazio do catálogo de **itens** e parou
  ali. O de poderes mostrava "PROGRESSÃO / NÍVEL 1..5" em branco. Procurar o
  irmão de um achado inclui procurar o irmão da própria correção.
- **T-08**: a v0.42.0 passou a **recusar** a compra do segundo poder de
  atributo do mesmo aspecto (P-03), mas o contador continuou dizendo "2/2" em
  cinza para uma ficha que já estava fora da regra. Regra implementada só na
  porta de entrada não audita o que já está dentro.

# Changelog — Ficha Petrichor

## v0.42.0 — a rodada da bateria de testes (05/09/2026)

Origem: a bateria de 04/09/2026 no personagem "Teste Claude" — **37
achados** (16 BUG · 4 FALHA · 6 LAYOUT · 11 MELHORIA), documentada em
`claude/BATERIA-TESTE-2026-09-04.md`. **Todos entraram nesta versao.**
Arsenal: de 32 checagens / 74 assercoes / 86 mutacoes para **35 checagens,
155 assercoes e 121 mutacoes, todas pegas**.

Quatro decisoes da mesa entraram como regra (05/09/2026):

| decisao | onde vale |
|---|---|
| XP continua livre com a ficha finalizada: o mestre concede em narrativa, o jogador anota, o nivel sobe sozinho | `CAMPOS_TRAVA_CRIACAO`, checagem 42 |
| Duas alternativas do mesmo slot divino: a ficha AVISA e deixa passar | `comprarNivelPoder` |
| "Atributos: 1 a 2" do rank de criatura: a ficha NAO sorteia, so avisa. A Loja contradiz a leitura "total" (Montaria rank E: 14 pontos) — registrado no CONTEXTO como pendencia do livro | editor de criatura, nota ao lado de ATRIBUTOS |
| Grafia da classe: **Artíficie** (era "Artificie" no catalogo e "Artífice" na tag) | `catalogoClasses.lua`, `catalogoHabilidades.lua`, reparo de dado antigo |

### As contas que mentiam (B-06, B-07, B-08, B-01, L-03, M-02)

A linha "de onde veio o numero" era REMONTADA em `atualizarAbaCombate()` a
partir das parcelas de que ela lembrava, 350 linhas depois do calculo — e
esquecia. O deslocamento dizia `raça 10 + Des 5 + rank 1` (16) com o card
em 6 (faltava a armadura, −10). A mana dizia `15 + idade 60 + (1 × 2)` (77)
com o card em 132: a parcela era a mana ACUMULADA por idade (115), nao a
idade. Nenhuma conta mostrava ajuste manual, dados por nivel, progressao de
vida ou forma bestial.

**Agora cada conta nasce em `recalcularTudo()`, junto do valor, na tabela
`CONTAS`**, e `atualizarAbaCombate()` so copia. A gramatica e fixa
(numeros, `+ − × ÷`, parenteses, palavras como rotulo, `[colchetes]` como
anotacao) porque **a bateria de testes le o TEXTO DO CARD, avalia a
aritmetica e exige que feche com o numero grande** — 12 assercoes num
personagem que carrega todas as parcelas opcionais (ajuste em cada card,
dados de aura, progressao, armadura equipada com −10 m, +2 Aparar e +2
espacos), mais 7 numa vampira da Linhagem de Unaris de 60 anos (mana,
prana, vitae). A primeira versao media a tabela `CONTAS`; a mutacao
"atualizarAbaCombate remonta a conta" passou verde e mostrou que medir a
tabela mede a intencao. Passou a medir o widget.

- **B-08**: NIVEL fora de 1..20 e gravado de volta no campo, com aviso ao
  lado (`lblAvisoNivel`). Antes o "201" ficava no campo e nas contas
  enquanto o calculo saturava em 20 — o numero certo com a explicacao errada.
- **B-01**: a carga da mochila ganhou o campo AJUSTE (`mochilaBonus`), que a
  formula lia havia versoes sem ter onde ser digitado; o card mostra a
  capacidade REAL (a mesma que recusa item), com "itens" e "ajuste" na conta.
- **L-03**: no card de INSPIRACAO o campo chama-se ATUAL, porque ele E o
  valor, nao um ajuste — nos quatro irmaos da linha "AJUSTE" soma.
- **M-03**: `acoes*Restritas` (tres campos gravados e nunca lidos) sairam.

### A trava de criacao (B-09, B-10, L-04) + checagem 42

`podeEditarCriacao()` tinha 30 chamadas — todas em funcoes Lua. Um
`<edit field="x">` grava direto no NDB e nao passa por Lua: com a ficha
FINALIZADA o jogador digitava NIVEL, IDADE, ANIVERSARIO, RACA, CLASSE e os
dois campos rotulados "AJUSTE DO MESTRE". Seis deles nem tinham `name=`. O
unico mecanismo de trava de widget (`setEnabled`) aparecia 2 vezes em
25 mil linhas.

**`CAMPOS_TRAVA_CRIACAO`** e a lista unica (14 campos), e
`aplicarTravaDeCriacao()` a aplica no recalculo e ao alternar o selo. A
**checagem 42** cruza o contrato (quais campos sao criacao), a tabela do Lua
e o XML: campo de criacao sem `name=`, fora da tabela, ou tabela apontando
para widget inexistente falham o build. Cinco mutacoes.

**RACA e CLASSE da aba 01 sao do catalogo, sempre** (`sempre = true`:
travadas ate para o mestre). RACA era texto livre usado como CHAVE de
catalogo: "orcs" com minuscula perdia todas as concessoes raciais em
silencio. Agora a aba 04 diz *"a ficha vê 'orcs' e NÃO encontrou esse nome
no catálogo"*. CLASSE e composta de `classe1Nome/Sub/Nivel` (+ classe2) a
cada recalculo; texto antigo digitado sobrevive ate a primeira escolha.

### Layout (B-05 + checagem 43, L-01/T-02, L-02, T-01, T-03, M-08, M-09, M-01)

- **B-05**: o PAINEL DE PONTOS da aba 02 tinha 98 px para 136 px de filhos.
  O aviso de LIMITE DE ATRIBUTO e a nota da Linhagem de Unaris ficavam
  inteiros fora do card, escritos a cada recalculo, invisiveis desde sempre.
  98 → 136. A **checagem 43** soma `height + margens` dos filhos
  `align="top/bottom"` de todo container de altura fixa e acusa o estouro
  (pai ajustado pelo Lua e ignorado, como a 28 faz com largura). E a
  checagem 35 girada 90 graus. Duas mutacoes.
- **L-01/T-02**: os seis blocos de atributo eram cards fixos de 260 px com a
  lista de pericias dentro: ~160 px de nada quando vazia, uma tela inteira
  de vazio em 1366×768. Agora `atualizarContadoresPericias()` mede o bloco
  pelo conteudo (`abaAtr_bloco<Atr>`), e o estado vazio e uma linha.
- **L-02**: CONCEDIDOS, a unica celula EDITAVEL da carteira de pontos,
  parecia coluna morta (sem `text="0"`, transparente, corpo 15). Ganhou
  caixa, valor inicial, corpo 20 e o rodape "digite aqui".
- **T-01**: `ajustarGradeCombate()` media widgets da propria aba 06, que
  enquanto escondida guardam a geometria da ultima vez em que foram
  desenhados: redimensionar em outra aba e entrar dava cards de 1920 numa
  janela de 1366 — o quarto card fora da tela, sem erro, "consertando" ao
  trocar de aba e voltar. A barra de abas esta sempre visivel e agora e a
  referencia: medida da aba que discorde dela por mais que a folga de uma
  barra de rolagem e VELHA, e a barra manda. O `onResize` da barra tambem
  recalcula a grade.
- **T-03**: o painel "O QUE FICOU PARA VOCE" abria DENTRO do scrollBox do
  editor de criatura e empurrava para fora da tela os atributos que mandava
  preencher. Virou coluna a direita (`edCri_colInstrucoes`, 300 px, rolagem
  propria); o popup alarga para 1300 quando ela abre, dentro dos 94% da janela.
- **M-08**: no slot equipado a durabilidade vem PRIMEIRO no resumo — era o
  unico numero que muda em jogo e era o que a reticencia comia.
- **M-09**: o catalogo de itens abre com "Selecione um item na lista ao lado"
  em vez de 14 rotulos vazios.
- **M-01**: textos que mandavam para "Cálculos & Combate" (nome que nao
  existe na barra desde a v0.40.0) dizem "aba 06 · COMBATE".

### O gerador de criaturas (C-01 a C-07)

- **C-01**: APLICAR sobrescrevia Carisma/Sabedoria do mestre com a
  concessao fixa da classificacao (setText). Agora a concessao so entra em
  campo ZERADO; se ha valor, fica e o painel diz "mantive o seu".
- **C-02**: as instrucoes existiam so depois de clicar em APLICAR; reabrir a
  criatura as perdia, e reler custava re-sortear a vida. O comentario do
  proprio codigo previa o estrago. `instrucoesParaAbertura()` chama o
  gerador puro e usa SO as instrucoes: o painel volta toda vez que o editor
  abre, sem mexer em numero, e acompanha a troca de classificacao.
- **C-03**: "9 pontos ficaram para voce decidir" contava LINHAS. O rodape
  fala de ESCOLHAS (as linhas com "ou" do livro) e de observacoes.
- **C-04**: Constructo e Necromorfo ganharam `imune`/`resistente`
  estruturados no `catalogoBestiario.lua` (citacao do livro no comentario);
  `marcasDoTipo()` alimenta o card ("IMUNE: telepatia, empatia") e a nota
  ao lado das defesas. Vem do catalogo a cada pintura: nao e gravado.
- **C-05**: o card da aba mostra as habilidades especiais (ate 3 linhas) —
  o que se le no turno da criatura estava so dentro do editor.
- **C-06**: nota "lançados: N pontos · livro, rank E: atributos 1 a 2 — a
  ficha não sorteia atributos" ao lado de ATRIBUTOS, viva a cada digitacao.
- **C-07**: o contador "1 / 12" ganhou o hint "limite desta ficha, nao do livro".

### O catalogo de poderes (P-01, P-02, P-03) + checagem 44

- **P-01**: 64 dos 113 cards do catalogo nao tinham `name=` (35 poderes
  estao em mais de um kit; o nome era por poder). Comprar pelo kit de Aslot
  acendia o card de AMMIS. O XML da lista e **gerado** por
  `verif/gera_catalogo_poderes.py` a partir dos slots de
  `catalogoDeuses.lua`, com `rectPod_<deus>_<poder>`, e
  `destacarPoderSelecionado()` acende pelo PAR (o poder comprado guarda o
  deus). A **checagem 44** cobra name unico por par, todo par de slot com
  card, e clique apontando para o mesmo par que o nome. Tres mutacoes.
- **P-02**: o catalogo mostra os 5 SLOTS, com "SLOT n — um dos dois" onde o
  livro escreve OU (era uma lista chata de 6 ou 7, contradizendo o proprio
  cabecalho). Comprar a segunda alternativa do mesmo slot AVISA (decisao da
  mesa).
- **P-03**: "nunca oriundos do mesmo aspecto divino" ([2.4]) e RECUSA com as
  tres partes da Lei 2 — por que, o que a ficha ve, quem libera — e a
  autorizacao de uso unico do mestre abre a excecao. Passivo de atributo +
  passivo de pericia do mesmo atributo vira LEMBRETE na compra (as pericias
  dos "épicos" sao escolhidas pelo jogador e nao ficam gravadas por poder).
  Antagonicos: os cinco pares que o livro escreve avisam; o "etc." fica com
  o mestre. Registrado no CONTEXTO.

### Raca e qualidade (B-02, B-04, M-04, M-05, M-06)

- **B-02**: `periciaMagiaEscolhida` era lido em dois lugares e escrito em
  NENHUM — a bruxa via "escolha no detalhe da qualidade" para sempre e nunca
  rolava com vantagem. A aba 02 ganhou o seletor de ESCOLA COM VANTAGEM
  (cinco botoes, abre so com a Linhagem de Unaris; escolha de criacao).
- **B-04**: o livro da aos Elfos "Magia inata OU Conexão com a Natureza". O
  extrator quebrou em dois cards, a ficha aplicava a Conexao sem perguntar
  e o card terminava num "OU" solto. `escolhaExclusiva` no catalogo,
  `racaTracoEscolhido` na ficha, bloco "escolha uma" na aba 04, e
  `temCaracRacial()` so responde true para a escolhida. A Magia inata dos
  Elfos passou a somar (+1/+2 em testes de magia), como a da Unaris.
- **M-04**: as entradas dos Elfos em `BONUS_PERICIA_FONTE` ganharam
  `raca = "Elfos"` — o que as separava de Fadas e Centauros era um N maiusculo.
- **M-05**: as classes do popup em ordem alfabetica (Arcanista e Devoto
  estavam no fim).
- **M-06**: "Artíficie" em todo lugar; `repararGrafiaArtificie()` converte
  `classe1Nome/classe2Nome` e as tags de habilidade antigas ao abrir.

### Recusas e avisos (L-05, M-07, aba 09)

- **L-05/M-07**: a recusa de equipar fica "viva" (`recusaEquiparPendente`)
  e o recalculo a reescreve: corrigida a Forca, o aviso vira "Agora dá:
  clique de novo para equipar". E diz quem libera (o mestre, editando o
  requisito do item).
- **Aba 09**: a recusa da macula aparece DENTRO do popup de registrar favor
  (antes ficava atras dele); o botao DEFINIR MACULA deixou de parecer
  desabilitado; a acao que da certo substitui o aviso anterior.

### O que NAO mudou de proposito

- A ficha nao sorteia atributos de criatura (decisao da mesa) e nao
  bloqueia as duas alternativas de um slot divino (idem).
- Mudar a classificacao de uma criatura escreve direto no no (CANCELAR nao
  desfaz Tipo/Rank) — comportamento anterior, observado e registrado, fora
  do escopo desta rodada.


## v0.41.1+ — as tres checagens que faltavam (04/09/2026)

**Sem bump de versao: nenhuma linha executavel mudou.** O que mudou no
pacote foi UM COMENTARIO, e o que mudou de verdade foi o que a verificacao
passou a cobrar. De 28 checagens / 68 mutacoes para **32 checagens, 74
assercoes e 86 mutacoes, todas pegas** — e com a varredura de catalogo o
backlog de checagens FECHOU.

### A 18 — o deslocamento da raca x a linha do livro

O catalogo modela deslocamento em TRES campos, e a distincao e de regra:

| campo | o que e |
|---|---|
| `deslocamentoModos` | MODO: permanente e PARALELO (terrestre/voo/nado valem juntos). E daqui que saem Nado, Escalada e Corrida |
| `formaAlternativa` | ESTADO: condicional, SUBSTITUI a base. O lobisomem nao anda 12 e 24 ao mesmo tempo |
| `deslocamentoTexto` | a linha do livro verbatim, que o popup da raca mostra |

A checagem le o `1.6.md` e cobra os tres, mais que nenhum numero do livro
fique sem classificacao. Medido: 29 racas dos dois lados, 22 com
deslocamento, 2 com `formaAlternativa`, zero nao reconhecido.

**A sonda leu SO o primeiro campo e acusou tres racas sas** (Lizarianos,
Lobisomens, Ursaris). E o mesmo erro da 38 — li uma tabela de duas — e foi
o bloco "NAO RECONHECIDO" impresso pela sonda que o pegou antes de virar
checagem.

### A 15 — separar CONCEDER de GASTAR uma acao

Nasceu do NINJA: o livro dava "+1 Acao de movimento extra" ao Espadachim
nivel 3 e a ficha nao sabia. E a classe de regra mais facil de perder:
**nao tem numero para conferir e nao quebra nada quando falta** — o jogador
so joga com uma acao a menos a vida inteira.

Universo medido: **13 concessoes no livro**, 11 nos catalogos, e 12 fontes
declaradas em `ACOES_EXTRAS` (entra na conta) e `ACOES_CONDICIONAIS` (vira
lembrete, porque a condicao a ficha nao sabe). As duas que faltam sao a
tabela de nivel, automatizada no `calculos.lua`. Cobertura fechada.

A varredura crua achava 38 frases, e a maioria e "gaste uma acao bonus" —
GASTO, nao concessao. Separar os dois e o trabalho todo: checagem que nao
separa nasce acusando o livro inteiro e vira ruido que alguem desliga.

**Tres cegueiras medidas ate o padrao ficar de pe**, e a terceira mudou o
metodo:

- FALSO: `situacoes extraordinarias` — `acao\s+extra` casava
  "situ-ACOES EXTRA-ordinarias". Faltava o `\b`.
- FALSO: `uma acao completa (padrao + bonus + reacao)` — o `+\d*` com
  digito OPCIONAL casava uma lista de CUSTO.
- **OMISSO**: `Voce ganha uma "Acao de Reacao" na ficha` (Martir) e
  `Ganhe uma acao padrao apos acertar...` (Combatente critico) concedem com
  ARTIGO INDEFINIDO e sem "extra". Eram invisiveis.

Falso positivo se ve na hora. **A omissao so apareceu porque a ficha ja
declarava Martir e Combatente critico, e eu fui atras da diferenca.** Por
isso a checagem confere nos dois sentidos.

### A 17 — a origem de um poder, e o bug do Hemocinese

A origem e ou uma DIVINDADE (30 no catalogo), ou uma entrada de
`ORIGENS_SEM_DIVINDADE`: "Coracao de Mana" (Magia) e "Heranca racial"
(Hemocinese, de Orcs e Vampiros).

O comentario da propria tabela conta o bug que a criou: ate a v0.32.1 o
rotulo estava escrito na mao em dois lugares, e **Hemocinese, que vem da
RACA, aparecia com o selo "CORACAO DE MANA"**.

A tabela consertou o ROTULO. Mas o NOME segue string livre em 7 lugares
(6 no script, 1 no XML) — inclusive no `onClick` do card, onde nada valida.
Um typo ali reintroduz o mesmo bug, sem erro nenhum. Medido: 113 citacoes
de `mostrarDetalhePoder`, todas resolvendo.

**Correcao de comentario no ficha.lfm:** o comentario prometia que
"acrescentar a terceira e uma linha". Nao e — sao a entrada na tabela, os
QUATRO ramos (`deusEhAcessivel`, `motivoDeusBloqueado`,
`mostrarDetalhePoder`, `destacarPoderSelecionado`) e o `onClick`. O
comentario passou a dizer a verdade, e a checagem 17 passou a cobrar.

### O leitor mentia de novo — e desta vez em 595 lugares

Montando a sonda da 18, o `lua.corpo()` estourou: os catalogos guardam
texto em **colchete longo COM NIVEL** (`[==[[Vigorosos] ...]==]`) e o leitor
so conhecia o nivel 0. Ao ver `[==[[`, ele nao reconhecia o `[==[`, andava
um caractere, enxergava o `[[` e abria uma string longa FALSA.

Medido: 595 ocorrencias em 5 catalogos. O `catalogoRacas.lua` ficava
ilegivel (por isso a checagem 26 tinha criado um leitor proprio — segunda
fonte da verdade nascida de um bug); `catalogoItens` e `catalogoTracos`
batiam POR SORTE, porque nenhum texto de la comeca com `[`.

Corrigido com colchete longo de qualquer nivel. E o auto-teste que nasceu
junto **passava nos dois leitores** — logo nao testava nada; refeito com a
forma que realmente quebra o leitor antigo.

### Tres mutacoes minhas nao foram pegas, e as causas eram diferentes

- **defeito da MUTACAO** (15): mutava o primeiro `poder = "..."` do arquivo,
  que esta na linha 6656 dentro de `DEFESA_POR_PODER`; a `ACOES_EXTRAS` so
  comeca na 7097. Mutava tabela que a checagem nem olha.
- **defeito da CHECAGEM** (15): eu comparava por CONTINENCIA contra um caldo
  de frases. "Ganhe uma acao padrao apos acertar..." aparece 3x no livro e
  3x no catalogo (Guerreiro, Atirador e Duelista compartilham a subclasse).
  Tirando UMA, sobravam duas e a continencia seguia verdadeira. Passou a
  comparar MULTIPLICIDADE.
- **os dois juntos** (17): a mutacao era GULOSA e levou os dois ramos de uma
  vez, deixando `deusEhAcessivel` sem ramo nenhum. E aí apareceu o ponto
  cego: a checagem varria "quem cita ALGUMA origem", e quem passa a citar
  ZERO sai do laco. "Esqueceu todas" e o pior caso, nao a excecao. Virou a
  tabela `RAMIFICAM_POR_ORIGEM`, cobrada pela LISTA.

**Consertar a mutacao foi o que expos o ponto cego.** Enquanto ela erra o
alvo, ela esconde a fraqueza do outro lado.

### A 41 — a varredura de catalogo, e o que ela achou

E a generalizacao da 26: a 26 cruza UM catalogo (racas) com o livro, a 41
cruza TODOS. E a Lei 1 no atacado.

Um nome inventado num catalogo **nao quebra nada**: aparece na lista, o
jogador escolhe, e a mesa joga com uma regra que nao existe. O inverso — o
livro ganhar uma entrada que o catalogo nao tem — e a irma do Ninja: a
regra existe e ninguem na mesa alcanca.

**MEDIDO antes de a checagem existir: 8 tabelas, 568 nomes, e TODOS
aparecem no livro.** O catalogo estava muito melhor ancorado do que eu
esperava.

O unico fora e o **Hemocinese**, que o livro promete nas racas Orcs e
Vampiros e nunca poe na lista de poderes do 2.4 — e o catalogo ja o marcava
`inferido = true`. A checagem LE essa marca em vez de carregar uma excecao
digitada nela, e falha tambem no caso inverso: entrada marcada como
inferida que PASSA a aparecer no livro. Marca velha e o que faz a proxima
passar batido.

A direcao reversa tem hoje UMA ancora, e ela e limpa: no 2.4.md cada poder
abre com o nome numa linha e "Tipo: ativo/passivo" na seguinte. Medido: 48
poderes no livro, 49 no catalogo, e o extra e exatamente o Hemocinese. As
outras reversas ficam abertas de proposito — cada capitulo formata a lista
de um jeito, e inventar ancora sem medir daria uma varredura que acusa o
livro inteiro.

#### Zero medido com a pergunta errada

`CatalogoHabilidades.habilidades` e `.feiticos` devolveram ZERO nomes. Zero
pode ser "a tabela nao tem nome" ou "eu li errado", e enquanto nao se sabe
qual, uma checagem sobre elas passa verde sem olhar nada.

Medido: as duas sao indexadas por RANK (A, B, C, D, E, EX) — sao os
parametros de cada rank (custo, dado base, alcance, duracao), nao uma lista
de habilidades com nome. **Zero nao era erro de leitura: era a resposta
certa para a pergunta errada.**

Por isso existe `CATALOGOS_SEM_NOME`, com o motivo escrito de cada uma —
sem ela, alguem um dia "conserta" a checagem fazendo-a ler o que nao ha
para ler. E a checagem falha se uma dessas tabelas sumir, e falha tambem
quando qualquer catalogo devolve zero nomes sem estar declarado ali: zero
medido errado some do radar igual a zero de verdade.

#### Duas mutacoes antigas passaram a acusar a 41 tambem

A da 26 ("renomeia a raca que a Linhagem da Noite concede") e a da 20
("insere um item no TOPO do catalogo"). Nao e redundancia: e a mesma falha
vista de outro angulo, e e sinal de que a varredura cobre terreno real, e
nao so o que ela propria inventou para si.

---

## v0.41.1 — o texto que vazou de outra secao do livro

**Achado pilotando o Firecast de verdade**, nao por checagem. Abrindo o
painel de detalhe da Granada "Lendaria" na loja, o campo EFEITO trazia o
texto certo E MAIS a secao inteira de "Pergaminhos de habilidades" — cinco
paragrafos sobre uma subclasse que nao tem nada a ver com granada.

Procurando o irmao, ele apareceu na hora:

| indice | item | tinha | engoliu |
|---|---|---|---|
| 142 | Granada **Lendaria** | 1.094 chars (8x o p90) | a secao "Pergaminhos de habilidades" |
| 138 | Bomba Eolica **Superior** | 348 chars | a abertura de "Granadas:" |

Os DOIS sao o ultimo item de uma sub-secao, e o vazamento comeca
exatamente no TITULO da secao seguinte. E o extrator do .bib transbordando
na fronteira — a irma imediata da Granada (Excepcional) esta limpa.

Corrigido cortando cada efeito no ponto em que o texto do proprio item
acaba, conforme [2.9:494] e [2.9:503].

### Por que nenhuma das 27 checagens via isso

`efeito` e texto livre. Ninguem comparava com o livro, e o campo nao tem
formato que valide. So a TELA mostrou.

A **checagem 40** fecha a classe: nenhum `efeito` (nem `notas`) pode conter
um titulo de secao do capitulo 2.9 — e a lista de titulos e LIDA do livro,
nao digitada aqui. Mesma postura da 26 e da 38.

MEDIDO: o padrao le 10 titulos do 2.9.md e acusava exatamente os 2
vazamentos, sem falso positivo. Se um item um dia citar um titulo de
verdade, o nome dele entra em EFEITO_PODE_CITAR_TITULO — do mesmo jeito que
o Meio-Gigante espera em PENDENTES_DA_MESA.

### O que a rodada no Firecast confirmou, alem do bug

- o selo, as 10 abas com nome inteiro, e as 10 abas renderizando sem erro;
- a **degradacao da barra**: numa janela de ~1074px os ICONES somem e os
  nomes ficam inteiros, que e exatamente o projetado na v0.40.0;
- os slots nas duas pontas da regra que a v0.41.0 corrigiu: Armadura leve
  Otima **0**, Granada Excepcional **1**, Granada Lendaria **1**;
- as duas correcoes de transcricao na loja: a Granada aparece como LENDARIA
  e o Elixir da Ira como AMADORA / MEDIANA / SUPERIOR;
- a fiacao num personagem real: deslocamento 30m dando **Nado 15m** e
  **Escalada 15m** (a metade, com o meio metro sobrevivendo) e Corrida 60m.

### E uma mutacao que nasceu quebrada

A primeira mutacao da 40 usava `\uXXXX` no TEMPLATE de substituicao de um
`re.sub`. O Python aceita isso no padrao e NAO no template: a bateria morreu
com "bad escape \u" e derrubou a rodada inteira depois de 80 segundos.
Refeita com `troca`, que compara texto cru e nao tem template nenhum.

## v0.41.0 — slots de encantamento pelos dois eixos do livro

Erro de regra, nao de codigo. Ate a v0.40.2 a ficha decidia slot assim:

```lua
it.slotsEnc = (d.qualidade == "Ótima") and 1 or 0
```

A tabela **Qualidade** do livro [2.8] diz o contrario, e nas duas pontas:

| qualidade | livro | ficha ate a v0.40.2 |
|---|---|---|
| Comum | 0 | 0 |
| **Otimo** | **0** | **1** |
| **Excepcional** | **1** | **0** |
| Lendario | 1 | 0 |
| Mitico | 2 | 0 |
| Divino | 3 | 0 |

Ou seja: os **37** itens "Otima" da loja ganhavam um slot que nao tem, e a
Granada Excepcional — a unica da loja que o livro DA slot — ficava com zero.
A regra estava invertida exatamente na fronteira.

Isso nao era cosmetico: `slotsEnc` e gravado no item e **barra** a aplicacao
de encantamento (`if #atuais >= n(it.slotsEnc)`).

Passou por toda revisao porque o numero era plausivel e o campo e editavel.
E o retrato da Lei 1: o erro nao foi de codigo, foi de leitura.

### Sao dois eixos, e o segundo estava faltando

O livro tem DUAS tabelas em [2.8], e o [2.9:201] chama a segunda de
*raridade*:

- **Qualidade** — o slot vem junto das Propriedades, **automatico**:
  "Excepcional: +3 de Durabilidade; **1 slot de encantamento**; ..."
- **Material** — o slot e **uma escolha** entre varias: "Raro: uma
  propriedade adicional: +2 durabilidade **ou** 1d6 dano base **ou +1 slot
  encantamento ou** +1 de bonus total"

Por isso o numero do material entra como **teto**, nao como valor: quem
forjou escolheu, e a ficha nao tem como saber qual. E por isso que o campo
SLOTS MAXIMOS sempre foi editavel — a valvula de escape ja existia, faltava
a conta certa por tras dela.

**Para item de loja da para saber**, porque o [2.9] diz onde a propriedade do
material foi gasta: todo `[Otima]` e "Material incomum; Qualidade otima;
03/03 de durabilidade; +04" contra "02/02; +02" do Comum. Foi para
durabilidade e bonus, nao para slot. Entao o item de catalogo deriva so da
qualidade — e da zero.

### O que mudou na pratica

- `SLOTS_POR_QUALIDADE`, `SLOTS_MAX_POR_MATERIAL` e `TETO_ENCANTAMENTOS`
  (o limite de 3 de [2.8] "Regras e restricoes"), com o texto do livro
  citado acima de cada uma.
- `slotsDeEncantamento(qualidade, material)` e a **unica** dona da conta: o
  popup de detalhe e a criacao do item chamam ela, nenhum dos dois repete.
- O item de loja passa a nascer com **material** gravado
  (`materialDeCatalogo`). Ate aqui o material aparecia no popup e o item ia
  para a mochila sem ele — o eixo existia na tela e nao existia no dado.
- O popup mostra a **conta**, agora que sao duas parcelas:
  `0   = qualidade Ótima 0 + material Incomum 0`.
- **Checagem 38** le a tabela do proprio livro e exige que a do Lua bata,
  nos dois sentidos, mais o teto de 3, mais que toda qualidade do catalogo
  seja conhecida — typo novo falha o build em vez de virar zero calado.

Ninguem perde encantamento ja aplicado: o campo continua editavel, e quem ja
tem item encantado so ve a recusa se tentar aplicar mais um.

### Duas correcoes de transcricao, achadas pelo mesmo fio

- **Granada nivel 4**: o catalogo gravava `qualidade = "Artificie"`, mas a
  linha do livro e `[Artificie - 1 Aureu] Consumivel; **Qualidade
  Lendaria**`. "Artificie" e o nome do NIVEL de compra, nao a qualidade. Na
  linha de cima (`[Excepcional] ... Qualidade Excepcional`) os dois
  coincidem, e por isso a transcricao acertou ali e errou aqui. Com a
  correcao, ela passa a ter 1 slot, como manda a tabela.
- **Elixir da Ira**: `qualidade = "Mediano"` onde todos os tonicos irmaos
  usam "Mediana" e o [2.8:399] declara a escala como "amadora, mediana,
  superior, perfeita e epica". A contagem denunciou: 23 Amadora / **22**
  Mediana / 23 Superior. O livro tem o typo em [2.9:418]; o catalogo o
  copiou fielmente. Normalizado por decisao do Flavio.

As chaves de widget das duas linhas acompanharam
(`itmL_GranadaLendaria`, `itmL_ElixirdaIraMediana`) — **a checagem 20 exigiu
isso**, na primeira vez que ela mordeu.

### Como isto apareceu

Comecou como conserto do `LEIA-ME.txt`, que ainda mandava rodar `rdk n` (um
comando que nao existe: o `rdk -?` lista `-C -L -I -P -PDF -LFM -BUILDREP
-SCANREP -H`). Ao conferir se o LEIA-ME batia com o pacote, o censo do
catalogo mostrou quatro qualidades que apareciam **uma vez so** —
"Mediano", "Artificie", "Excepcional", "Incomum". Procurar o irmao de cada
uma no livro levou a tabela de Qualidade, e dali a regra invertida.

**Preco errado expoe dezenas de itens sem preco.** Desta vez foi um readme
desatualizado que expos uma regra errada de tres versoes.

## v0.40.2 — mesticoPermitido das Primordiais alinhado com o livro

Dado, nao comportamento. As 7 racas Primordiais estavam com
`mesticoPermitido = true`; o livro, em [2.2] Mestico, diz: "E possivel ser
mestico de racas jogaveis e nao-jogaveis, mas JAMAIS de racas primordiais".

Nunca deu problema porque a flag NAO E LIDA por ninguem — varredura no
pacote inteiro achou `mesticoPermitido` so dentro do proprio
`catalogoRacas.lua`. O portao real e `categoria == "Jogavel"`, e o Flavio
confirmou testando: nao da para selecionar primordial sem o mestre marcar a
caixa.

Corrigido agora porque dado errado inerte fica inofensivo ate o dia em que
alguem comeca a ler a flag — e nesse dia sao sete racas liberadas que o
livro proibe. A checagem 26 passa a cobrar isso contra o texto do livro.

## v0.40.1 — a decisao do style de imagem, escrita

Nenhuma mudanca de comportamento. Grava, junto das tres artes de popup, a
razao de elas usarem `proportional` enquanto o retrato usa `autoFit`:

> As imagens dos pop-ups ficaram em proportional porque julgamos ser melhor
> mostrar a imagem inteira de um equipamento/criatura do que cortar ela.
> Diferente da de perfil de jogador, que nao importa cortar: so importa a
> estetica.

A decisao existia na mesa e nao estava em lugar nenhum. Ao levantar os
styles, eu li os tres `proportional` como "correcao do retrato que nao foi
aplicada nos irmaos" e quase propus uniformizar — o que teria passado a
cortar arte de item e de criatura.

**Decisao de mesa nao registrada e "corrigida" pelo proximo que passa.** Foi
o comentario da linha 11161 que impediu o mesmo erro no retrato; estes fazem
o mesmo pelos outros tres. A checagem 19 passa a cobrar a regra.

## v0.40.0 — a barra de abas cabe em qualquer janela

A largura dos botoes de aba sai do XML e passa a ser calculada no
`onResize`, pelo mesmo padrao que a ficha ja usava em `ajustarColunasQD` e
`ajustarGradeCombate`.

### O numero que obrigou a mudanca

A propria ficha reportou (v0.39.2, build de medicao):

    janela 1920 -> barra 1794     janela 1904 -> barra 1778

Duas medidas, mesma inclinacao: o desconto do Firecast e **fixo em 126px**.
Numa janela de **1366 a barra recebe 1240px** — e os dez botoes de 126
pediam 1300. **Faltavam 60px: as ultimas abas caiam fora da tela.**

E o build anterior, de 120px, pedia exatamente 1240. Cabia por zero. A
barra nunca teve folga num notebook pequeno; o `RACA & CLASSE` cortado foi
so o primeiro sintoma a aparecer.

### A regra

    largura = min(131, floor(barra / 10) - 4), com piso em 107
    icone visivel  <=>  (largura - 9 - 6 - 24) >= 92

Em 1366 isso da botao de 120 **sem icone**, com rotulo de 105px para um
pior caso de 84. Acima de ~1476 o icone volta. **Sai o icone, nunca o
texto**: o icone e decoracao, o nome do capitulo e informacao.

`rotuloMin = 92` e 84 (pior rotulo, medido com a MarcellusSC real) mais 8
de folga. A folga nao e chute: o selo da v0.39.2 empurrou o "SECAO 01" e
ele quebrou em duas linhas mesmo com a checagem 35 dizendo que cabia por
5px — o `ttf.py` soma avancos e ignora entreletra.

### Uma propriedade, um dono

`ajustarBarraDeAbas()` e a unica rotina que escreve `btnAba*.width` e
`icoAba*.visible`. O `width` no XML e so o valor inicial. A checagem 37
le a tabela `BARRA_ABAS` do proprio script — um lugar so — e reprova o
build se, na largura minima declarada (1366), algum rotulo nao couber.

O selo de medicao da v0.39.2 foi removido.

## v0.39.2 — build de medicao (temporaria)

Nao muda comportamento nenhum. Poe na tela a largura real que a barra de
abas recebe, para calibrar a barra fluida da v0.40.0 com numero medido em
vez de numero deduzido.

O selo sai em v0.40.0. Se voce esta lendo isto numa versao maior e o
`lblMedidaBarra` ainda existe, alguem esqueceu de remove-lo.

## v0.39.1 — a aba volta a caber

**Corrigido:** o rotulo `RACA & CLASSE` aparecia cortado na barra de abas
("RACA & ..."), a 100% de escala. Os dez botoes passaram de `width=120`
para `width=126`.

### A conta

O rotulo de aba e `align="client"`: quem decide a largura dele e o botao
menos os irmaos.

    120 - 9 (margem esq) - 6 (margem dir) - 24 (icone) = 81px de rotulo

Medido com a MarcellusSC-Regular real, corpo 11, mais 6% de emboldecimento
sintetico (so existe o Regular em `fonts/`, o bold e sintetizado):

    RACA & CLASSE ..... 84px  -> faltavam 3px, cortava
    BACKGROUND ........ 80px  -> passava a 1px do corte
    INVENTARIO ........ 68px

Com 126 o rotulo tem 87px e o pior caso sobra 3px. A barra inteira passa a
exigir 1.324px de janela; numa tela de 1366 maximizada sobram ~1.326px para
os botoes, entao ainda cabe. 128 daria 1.344 e ficaria no fio.

### De onde veio, e por que a verificacao nao pegou

O aperto nasceu na propria v0.39.0: ela pos um `<image width="24">` dentro
de cada botao, e o icone come o espaco do rotulo. O botao nao encolheu — o
texto e que ficou sem lugar.

**A checagem 31 nao pega esta classe.** Ela mede label que declara `width=`.
Rotulo dimensionado pelo layout (`align="client"`) e invisivel para ela — e
foi assim que isso passou com as 17 checagens verdes e o `rdk l` limpo.
Falta a checagem que calcule o espaco util de um label `align="client"`
a partir do pai de largura fixa menos os irmaos.

### Como medir isto direito

Nao conte pixels em screenshot para decidir largura: a imagem vem
reescalada e o numero sai errado com cara de exato. A medida confiavel e a
do XML — largura declarada, margens, irmaos de largura fixa — contra a
fonte real do pacote. E o que a checagem 35 passou a fazer.

(Uma versao anterior desta entrada dizia que o corte dependia da escala do
monitor. Nao depende: os dois monitores desta maquina entregam 1920x1080
logicos a ficha, e a aritmetica do layout e identica nos dois.)

## v0.39.0 — a ficha ganha uma escala só

**Passada global de design (DESIGN-PETRICHOR.md).** Nenhum campo mudou de
lugar. O que mudou foi a régua: o mesmo papel passou a ter o mesmo tamanho
em toda aba.

### O diagnóstico que originou a passada

Medido na v0.38.4: a Cinzel Decorative aparecia em **oito** tamanhos para
o mesmo papel (13 a 20); o marcador ✦ em **doze** combinações de fonte e
tamanho — 43 delas em fontes que não têm o glifo; o título da aba era 19
nas abas 1–5, 17 em Combate/Favores/Inventário/Criaturas e 15 em
Background; **1.264 rótulos abaixo de corpo 10**; e 60 rótulos pediam `→`
em Marcellus SC, que não tem a seta — o Windows substituía por outra fonte
e ninguém via.

### O que foi feito (`verif/reescalar.py`, com log por regra)

- **Piso tipográfico 11.** 1.483 rótulos subiram (Marcellus 7/8/9/10,
  EB Garamond 9/10, Cinzel 10). Alturas quase não mudaram: só 12 caixas
  abaixo de 14px, todas em pais elásticos.
- **Escala fechada.** Cinzel Decorative só em 19 (T1, título de aba) e 15
  (T2, seção/popup). Números em Cinzel só em 26 (N1: Recursos, Defesas,
  Movimento — a mesma família de card estava em 27, 26 e 24) e 20 (N2:
  contadores de resumo e valores em palavra).
- **Fonte de símbolos embarcada** — `PetrichorSimbolos-Regular.ttf`,
  17 KB, 67 glifos, subconjunto de Noto Sans Symbols + Symbols 2 (OFL).
  Necessária porque nenhuma das quatro fontes da ficha tem ✦ ◆ ⚔ ☽ ⚗ ⚖ ☀
  nem `→`.
- **Cabeçalho único.** Título de aba: símbolo temático a 18 em ouro
  (⚔ Combate, ⚗ Inventário, ☀ Favores, ☽ Criaturas, ⚖ Qualidades,
  ⚝ Atributos, ⚜ Raça & Classe, ✦ Poderes, ❧ Background, ◆ Perfil).
  Título de seção: ◆ a 14 em ouro. O marcador era violeta `#8A63C9` — a
  cor semântica da Aura usada como decoração — e passou a ouro.
- **`→` virou `›`** (63 ocorrências), nativo da Marcellus. ✦ dentro de
  texto pequeno virou `•`; ✦ nos títulos de popup saiu (a Decorative não a
  tem). Os triângulos ▾▸ de expandir/recolher foram para a fonte de
  símbolos.
- **Ícones PNG nas 10 abas** (22×22, `originalSize`, dois estados
  recoloridos com o hex exato da ficha) e **moldura em ouro por cima do
  retrato** (234×312, `hitTest="false"`, `align="none"` — porque o retrato
  já é o `client` do retângulo e dois `client` fazem o segundo sumir; a
  checagem 9b pegou na primeira tentativa).
- **5 larguras alargadas** onde o piso 11 estourava, medidas com o TTF
  real ("01, 02, 03 ou 04 pontos" 110→128, "PONTOS" 40→46, "EXCEPCIONAL"
  70→76, "00, 01 ou 02 pontos" 110→114).

### O que a sonda de imagens provou (v1.1, 03/09/2026)

Caminho relativo à raiz do plugin funciona (`imagens/x.png`); prefixo com
o nome da pasta do plugin **não** funciona e falha em silêncio — o
`onLoad` só nunca dispara. `originalSize` é pixel-exato e nítido a 22px e
**centraliza** a imagem no widget. `<frame src="x.png">` lança *Invalid
UTF-8 encoding* e aborta a construção do formulário: `FrameURL` é recurso
de texto. `stretch` de textura vira estria — **não há textura de fundo
de painel** nesta versão, e não haverá enquanto o SDK não tiver `tile`.

### Verificações novas (30–34), todas validadas por mutação

30 glifo existe na fonte pedida (nasceu pegando 132 casos) · 31 texto
estático cabe na largura fixa, medido com o TTF (nasceu pegando 45) ·
32 tamanho pertence à escala (nasceu pegando 8 tamanhos de Decorative) ·
33 todo `src` existe e nenhum PNG é órfão · 34 nenhuma fonte órfã em
`fonts/`. A 19 aprendeu `originalSize` para asset do plugin.

### O que ficou para a v0.40.x, depois do print

Régua da conta (some a de uma parcela só), notas de Combate → `hint`,
fusão resumo + botões em Poderes, e a marca d'água — que depende do
ChatGPT entregar e de a peça passar no crivo.

## v0.38.4 — a altura do bloco de ranks estava chutada

A mesa relatou: **funciona nos ranks E e D, acima não**. Essa pista era boa
demais para ser coincidência — os dois primeiros blocos da lista.

### A causa provável: bloco cortado

A altura do bloco de ranks estava **508 no olho**. A conta real é
`26 (cabeçalho) + 6 × 82 (cada bloco) = 518`. O que passa da altura de um
`<layout>` é **cortado** — ele não rola sozinho.

Bloco cortado não dá erro: ele simplesmente não existe na tela, e quem
preenche não percebe que faltou. Agora a altura é calculada a partir do número
de ranks, com folga, em vez de digitada.

### O que faltava para você ver o que aconteceu

Duas coisas, e as duas existem porque "reabri e sumiu" era indistinguível de
"eu não preenchi esse":

- **bloco vazio agora diz que está vazio** — `— vazio —` em vermelho, em vez de
  ficar mudo;
- **mapa dos blocos** ao lado da caixa PROGRESSIVA:
  `rank do personagem: C · blocos preenchidos: E D · · · ·`
  Um olhar diz quais sobreviveram.

### O interruptor de forma mostra a conta

Enquanto isso, "os ganhos não estão contando" era indistinguível de "esqueci de
me transformar" — porque o bônus só entra com a forma bestial ligada, por
decisão do próprio texto da habilidade.

Agora o interruptor diz o que está aplicando:

```
✦ EM FORMA BESTIAL LUPINA · rank C: +40 vida, +15% absorção, +2 defesas
                            — clique para voltar à forma mortal
```

E em forma mortal, quando há habilidade progressiva cadastrada, ele avisa que
**há bônus esperando a transformação**. Transformado sem nenhum número entrando,
ele diz isso também, em vez de ficar quieto.

### Leitura defensiva do booleano

`progressiva` passou a ser lida por `ehVerdadeiro()`, que aceita `true`, `1` e
`"true"`. Esse campo já voltou do NDB de mais de uma forma durante o
desenvolvimento, e um `true` que volte como texto faria a habilidade inteira ser
ignorada — sem erro nenhum, de novo.

### Testes

A bateria passou a percorrer os **seis** ranks, um por um, com o nível do
personagem mudando: nível 1→E→+20, 4→D→+30, 8→C→+40, 12→B→+50, 16→A→+70,
19→EX→+100. Em Lua puro os seis já passavam antes desta versão — o que confirma
que o problema não estava no cálculo, e sim na tela.

## v0.38.3 — a reconstrução da lista comia os campos novos

A causa de verdade do sumiço dos blocos de rank. A v0.38.2 consertou **outro**
problema real no caminho, mas não este.

### O aviso estava escrito por mim, no lugar certo

```lua
-- ATENÇÃO: campo novo no item precisa entrar TAMBÉM aqui, senão a
-- reconstrução o perde silenciosamente. Foi o que aconteceu com
-- "creditoEmbutido": o desconto sumia depois da primeira edição.
local campos = {"tipo", "nome", "rank", ...}
```

`reconstruirListaHabilidades()` apaga e recria cada nó da lista para forçar o
`onNodeReady` do template, copiando **campo a campo** de uma lista fixa. O que
não está na lista some — sem erro, sem aviso, sem nada.

`progressiva` e os seis `efeitoRankX` não estavam lá. O salvar gravava certo, e
a reconstrução logo em seguida apagava.

### O irmão que apareceu: a arte da habilidade

Ao consertar, conferi a lista inteira contra o que o salvar grava. **`imagem`
também nunca esteve nela.** A arte que a mesa pediu na v0.33 vem sendo perdida
a cada edição desde então — ninguém tinha reparado porque só some quando se
reabre e salva a habilidade de novo.

Três vítimas do mesmo mecanismo: `creditoEmbutido`, os blocos de rank, e a
imagem.

### A correção

Os campos viraram **uma lista só**, `CAMPOS_HABILIDADE`, usada nos três lugares
que precisavam concordar: o reparo de nós antigos, a reconstrução, e agora a
verificação.

**Verificação nova — 29.** Todo campo que `salvarHabilidade()` grava tem de
estar em `CAMPOS_HABILIDADE`; senão o build cai. Testada removendo três blocos
da lista — o build acusa os três pelo nome.

Havia um comentário avisando exatamente disto, no arquivo certo, e ele não
impediu **nenhuma** das três perdas. É a diferença entre documentar e travar:
comentário depende de alguém ler na hora certa; checagem não depende de
ninguém.

### Bateria nova

Cria um nó com todos os campos preenchidos, roda a reconstrução de verdade e
exige que cada um volte igual — incluindo `imagem`, `creditoEmbutido` e os seis
blocos.

### Ordem das abas

Criaturas passou para **08**, logo depois do Inventário; Favores virou **09** e
Background **10**, como a mesa pediu.

Detalhe para quem for mexer depois: o nome do painel (`pnlAba10`) **não** segue
a numeração da aba — ele é só histórico de quando o painel foi criado. Quem
define a ordem é o índice da tabela `abasDef`.

## v0.38.2 — o construtor apagava o que você acabou de digitar

Marcar PROGRESSIVA, preencher os seis blocos, salvar — e nada era gravado. Ao
reabrir, a caixa vinha desmarcada e os campos vazios.

### A causa

O popup **desenha a partir do rascunho**; quem digita escreve **no widget**. Os
dois só se encontravam na hora de salvar.

Então qualquer ação que redesenhasse o popup — trocar o rank, marcar uma tag,
clicar na própria caixa PROGRESSIVA — escrevia o rascunho (ainda vazio) por
cima do que tinha sido digitado. Ao salvar, o que ia para a ficha era o vazio.

Reproduzi num arnês de Lua antes de mexer em qualquer coisa:

```
digitado em E:      Efeito - Rank E: +20 pontos de vida
APOS REPINTAR, E =  []
```

**Os campos de DESCRIÇÃO e EFEITO tinham a mesma falha desde sempre.** Ela quase
nunca mordia porque texto costuma ser a última coisa que se digita antes de
salvar — os seis blocos de rank só a tornaram visível, porque ali é impossível
preencher tudo sem clicar em nada no meio. Consertados junto.

### A correção

O bloco "widgets → rascunho" saiu de dentro do salvar e virou
`lerCamposDoConstrutor()`, chamada por **todas as nove ações** do construtor
que redesenham: rank, tipo, poder, bruxa, tag, chip de tag, corpo-a-corpo, em
área e progressiva.

Ela **não** pode ser chamada de dentro do redesenho: na abertura os widgets
ainda têm o texto da habilidade anterior, e ali o rascunho é a fonte da
verdade, não a tela.

### O vazamento que o conserto criaria

Ler os seis blocos sempre traria dois bugs novos:

- **entre habilidades** — os widgets não são limpos ao trocar de habilidade;
  abrir uma progressiva e depois uma comum deixaria os campos escondidos com o
  texto da primeira, e salvar a segunda gravaria os blocos da outra;
- **desmarcar e remarcar** — com a caixa desmarcada o bloco fica escondido e a
  repintura não o preenche, então ler dali apagaria o rascunho de quem só
  queria conferir e voltar.

Por isso os blocos só são lidos quando a habilidade **é** progressiva: enquanto
a caixa está desmarcada, o rascunho é a fonte da verdade e o texto volta
intacto ao remarcar. Tem caso de teste para os dois.

### Testes

Bateria nova (19 no total) que reproduz o ciclo inteiro com widgets falsos de
verdade — digita, repinta, e exige que o texto continue lá, no widget **e** no
rascunho, mais o vai-e-volta da caixa PROGRESSIVA.

## v0.38.1 — dois erros meus na estreia da habilidade racial

### O rank bloqueado — regra aplicada onde não valia

Criar a Forma Bestial Lupina era recusado com *"O poder ainda não libera
habilidades de rank E"*. Repare no **espaço duplo** da mensagem: o nome do
poder estava vazio, porque habilidade racial **não sai de poder nenhum**.

Eu tinha isentado a habilidade racial de duas travas — o poder de origem
obrigatório e o custo em pontos — e esqueci a terceira, o teto de rank por
nível do poder. Isentar uma regra em dois lugares e deixar o terceiro é o
padrão de erro que aparece quando a isenção não tem um lugar só.

Agora `ranksLiberadosParaTipo` devolve todos os ranks para `racial`, como já
fazia para `classe`. E o popup passou a se comportar como habilidade racial de
verdade: a lista de PODER DE ORIGEM some, a dica do rank diz *"não custa ponto
(vem da raça)"*, e com PROGRESSIVA marcada ele avisa que **o rank ali é só a
etiqueta da linha** — quem manda é o rank do personagem, que escolhe sozinho
qual dos seis blocos vale.

### O card da lua desalinhava a linha inteira

Clicar na seta bagunçava a linha de Recursos, e só voltava ao normal trocando
de aba.

**A causa era briga de donos.** `ajustarGradeCombate()` divide a linha entre os
cards visíveis; `atualizarCardLua()` forçava 196 e rodava **depois** dela. Quem
roda por último vence, então o layout passou a depender da ordem das chamadas —
e trocar de aba consertava porque ali a grade roda de novo por último.

O card já sabia aparecer e sumir sozinho por `cardVisivelCombate("Lua")`. A
largura forçada não fazia falta nenhuma: era só um erro esperando a hora.

**Verificação nova — 28.** Nenhuma função além de `ajustarGradeCombate()` pode
escrever largura num `cmb_wrap*`. Esta, ao contrário da regra de aninhamento da
v0.35.6, **é** expressável como invariante de código — e por isso virou trava
de build em vez de comentário. Testada reintroduzindo a linha: o build recusa.

## v0.38.0 — habilidade racial progressiva e a fase da lua

O maior lote de mecânica desde o Bestiário. Três decisões da mesa foram
fechadas **antes** de eu escrever qualquer coisa, porque as três mudavam o
modelo de dados.

### Tipo novo: HABILIDADE DE RAÇA

Quarto botão no construtor que já existia, ao lado de PODER, CLASSE e FEITIÇO,
e um botão próprio na aba. **Não custa ponto de poder** — ela vem da raça ou de
uma qualidade já paga (*"Linhagem da noite [06 pontos]"* concede a Forma
Bestial Lupina); cobrar de novo seria cobrar duas vezes pela mesma coisa.

**Nota:** o botão "+ FEITIÇO" já existia desde antes — ele nasce oculto e só
aparece para quem tem o poder Magia. Não estava faltando, estava gated.

### Progressiva: seis blocos, e o rank do personagem escolhe

Marcada como PROGRESSIVA, a habilidade ganha **seis campos de efeito**, um por
rank. A ficha usa o bloco do rank atual e **troca sozinha quando o personagem
sobe de nível** — porque a escada do livro já era o gatilho pronto:

| Rank | E | D | C | B | A | EX |
|---|---|---|---|---|---|---|
| Nível | 1 | 4 | 8 | 12 | 16 | 19 |

Decisão da mesa: os blocos **substituem**, não acumulam. No rank C valem +40 de
vida, e não 20+30+40.

### Por que um extrator, e não trinta e seis caixas

Cinco números por rank em campos separados seriam **30 caixas** na tela, e o
jogador teria de traduzir à mão um texto que já existe pronto. Em vez disso ele
**cola a linha** como está escrita e a ficha lê os números:

```
Efeito - Rank C: +40 pontos de vida: +15% de Absorção; +2 em todas as
Defesas; +2 dado de dano; Recebe a habilidade [Uivo Lupino]
                    ↓
  A ficha entendeu: +40 vida, +15% absorção, +2 defesas, +2 dados de dano.
  O resto do texto vale como está escrito.
```

Essa frase aparece **embaixo de cada bloco**, e é a parte que importa: é a mesma
disciplina de `extrair-regras.md` — junto do extrator vem o relatório do que
ele **não** reconheceu. Extrator que engole em silêncio some com o efeito, e o
jogador só descobre quando o número dá errado na mesa.

O vocabulário saiu da habilidade real, não de invenção: `+N pontos de vida`,
`+N% de Absorção`, `+N em todas as Defesas`, `+N dado(s) de dano`,
`regenera N de vida por turno`. Ele lê os seis blocos do lobisomem da mesa
exatamente — inclusive o `+40 pontos de vida:` com dois-pontos em vez de
ponto-e-vírgula, e a mistura de "dado" e "dados" na mesma habilidade.

### Os números entram na ficha de verdade

Ligar a forma bestial na aba de Combate agora soma, e desligar tira:

- **vida** → nos Pontos de Vida, somada **depois** do percentual das qualidades
  de propósito: o "+40" é número fixo do texto, não base para Vigor expandido
  multiplicar;
- **+N em todas as Defesas** → nas **quatro**, sem exceção, porque o texto diz
  "todas";
- **absorção** → soma à da armadura, na aba de Inventário, respeitando o teto
  da fase lunar;
- **dados de dano** e **regeneração** → ficam registrados e mostrados; a ficha
  não rola dano nem passa turno, então não há o que somar.

### Card FASE DA LUA

Na linha de RECURSOS, **só para lobisomens**, com setas que circulam — depois
do Eclipse vem a Nova. Clonei a estrutura do card de TAMANHO, que é a única
outra da ficha com valor em palavra e setas, e já provada na tela.

A fase é do **mundo**, não do personagem: por isso não está presa ao estado
criação/finalizada — o mestre gira a lua quando a campanha vira a noite.

Os bônus numéricos só valem **transformado**, e o texto da habilidade é
explícito: *"recebe o bônus especial dependendo da fase da lua maior **na
primeira transformação**"*. Lua cheia em forma mortal não dá nada — e o card
diz isso, alternando entre `VALENDO` e `só transformado`.

O **Eclipse Carmesim** carrega os numéricos das outras quatro, porque o texto
diz *"Recebe todos os bônus das outras fases lunares"* — e não um valor próprio
que eu teria inventado.

### Testes

Bateria nova (18 no total) com a habilidade real do lobisomem colada como o
jogador escreveu: os seis blocos lidos, o bônus zerado fora da forma, o bloco
do rank atual valendo sozinho, a troca automática ao subir de nível, as cinco
fases lunares, o Eclipse somando as outras, a lua não valendo em forma mortal,
o ciclo circulando nas setas, e habilidade racial **não** progressiva não
somando nada.

## v0.37.0 — Nado e Escalada: metade do deslocamento

A lacuna que eu tinha reportado foi fechada pelos mestres.

**O livro não tem regra de nado nem de escalada.** Varredura completa: as duas
aparecem só como uso da perícia Atletismo (*"usado para testes de escalada,
natação, salto, disputas de força"*) e na lista do que uma ação de movimento
permite (*"correndo, realizando saltos, escaladas, vôo etc"*). Nenhuma
velocidade, em lugar nenhum — as únicas velocidades de nado do livro são as de
5 raças, escritas no bloco de cada uma.

### A regra da mesa (30/08/2026)

**Nado e escalada = deslocamento ÷ 2**, e a base da raça substitui o padrão
quando existe.

Duas decisões que mudavam número e foram fechadas antes de eu escrever
qualquer coisa:

- **metade do deslocamento FINAL** (o do card, já com Destreza e Rank), e não
  da base racial. Raça 8 + Des 3 + rank 2 = 13 → nado e escalada 6,5;
- **meio metro aparece.** 6,5m fica 6,5m, sem arredondar. É a primeira vez que
  a ficha mostra fração de metro, então há um formatador próprio: em Lua `6.5`
  vira `"6.5"` com ponto, e aqui a ficha escreve em português — `6,5m`.

### O que entra na metade, e por quê

| | entra? | por quê |
|---|---|---|
| Penalidade de armadura pesada | **sim** | decisão de 21/08: o desconto vale para todos os modos |
| Passos de vento (Duelista N2) | **não** | mesma decisão: o dobro só vale para o terrestre |

Isso virou uma questão de **ordem** no código: o deslocamento é capturado
*entre* a penalidade de armadura e a dobra de Passos de vento. Mover essa
captura uma linha para baixo dobraria o nado de um Duelista em silêncio — e há
bateria travando exatamente isso.

### Card ESCALADA

Sexto card da linha de movimento, fixo como Voo e Nado, com campo de ajuste
próprio. A conta embaixo mostra de onde o número veio: `metade de 13`, ou
`raça 24 + Des 3 + rank 2` quando a raça declara base.

Nenhuma raça do livro declara base de escalada hoje, então ele sempre cai no
padrão. Mas `deslocamentoBaseEscalada` já está ligado ponta a ponta — catálogo,
mestiçagem (maior valor entre as duas raças, modo a modo) e reset ao trocar de
raça. No dia em que uma raça declarar, a base substitui o padrão sem tocar em
código.

### Nado deixou de mostrar "—"

Antes, quem não tinha nado racial via um traço. Agora vê a metade. O card de
**Voo continua com "—"** para quem não voa: a decisão dos mestres foi sobre
nado e escalada, e quem não voa continua não voando.

## v0.36.1 — a ficha passa a dizer que versão é, e o que ela está vendo

Nada de regra nova. Duas adições que existem por causa de um custo que já
apareceu mais de uma vez: **bug relatado sobre versão que ainda não tinha sido
instalada**, sem nenhum jeito de saber isso olhando a tela.

### Selo de versão no cabeçalho

Discreto, à esquerda de "SEÇÃO 01". Responde "qual build está rodando?" de
relance.

A **checagem 27** compara o número escrito no selo com o do `module.xml` e para
o build se os dois divergirem. Selo desatualizado seria pior que nenhum: daria
uma resposta errada com cara de certa.

### A recusa de raça mostra o que a ficha está vendo

Quando uma raça é recusada, a mensagem passa a terminar com o que a ficha
encontrou de verdade na lista de qualidades:

```
[A ficha vê na sua lista: Sangue das raças antigas.]
[A ficha não encontrou nenhuma qualidade de liberação na sua lista.]
```

"Peguei a qualidade e continua bloqueado" era uma discussão sem prova — não dá
para distinguir *a ficha não leu a lista*, *o nome não bateu* e *a versão
instalada é outra*. Agora a própria tela separa os três casos.

É a lei de **mostrar a conta** aplicada a decisão de permissão, e não só a
número: se a ficha recusa, ela mostra com base em quê.

## v0.36.0 — Lobisomens destravada: era a qualidade errada

A raça recusava **todo mundo**, inclusive quem tinha "Sangue das raças
antigas". As duas recusas que a ficha sabia dar estavam **certas**; faltava a
terceira, que ninguém tinha ligado.

### O que o livro diz

> **Sangue das raças antigas** — *"direito de fazer uma ficha com uma das
> seguintes raças não-jogáveis: Aarakocra, Harpia, Giff, Sereia, Centauro,
> Ghiscari, Ninfa, Minotauro, Sátiro, Ursari ou Goblin"*

Lista fechada de onze. **Lobisomem não está nela** — a ficha estava certa em
recusar.

> **Mestiço** — *"não pode ser adquirida para as raças 'Vampiro' ou
> 'Lobisomem'"*

Também certa em recusar.

> **Linhagem da noite [06 pontos]** — *"Receba a raça 'Lobisomem (Nascido)'.
> Escolha uma facção de origem: Vigilantes da Lua (controle e disciplina) ou
> Filhos da Fúria (poder e instinto) e a habilidade progressiva [Forma Bestial
> Lupina]"* · Restrição: *"Somente uma ficha por vez pode possuir esta
> qualidade."*

**Esta** é a que libera, e a ficha não a conhecia. Eu construí a regra de
liberação a partir das duas qualidades que apareceram primeiro e nunca varri o
capítulo atrás das outras — erro de método, não de código.

### A recusa passou a apontar a qualidade certa

Antes, qualquer raça bloqueada recebia a mesma frase: *"adquira Mestiço ou
Sangue das raças antigas"*. Para um lobisomem, isso mandava o jogador gastar 3
pontos numa qualidade que **não libera** a raça que ele quer.

Agora a mensagem lista só o que serve **para aquela raça** — Lobisomens diz
"Linhagem da noite", Ninfas diz "Sangue das raças antigas" — e avisa
separadamente quando "Mestiço" é vetado.

### Verificação nova — 26, e o irmão que ela achou

Mesmo padrão da checagem 15 (varredura de fontes de ação): a checagem varre o
catálogo de qualidades atrás de *"receba a raça"* / *"direito de fazer uma
ficha com"* e falha o build se aparecer uma concessora que `contextoRacial()`
não lê.

Rodou e achou o irmão do bug na primeira execução: **Linhagem de Gunndana**,
que concede a raça **"Meio-Gigante"** — e essa raça **não existe** no capítulo
de Raças nem no catálogo. Sem bloco de atributos, deslocamento, dado de vida ou
características. Não inventei: entrou em `CONCESSORAS_PENDENTES` com o motivo
escrito, vira **aviso** em vez de falha, e qualquer concessora **nova** continua
derrubando o build.

### O resto da raça já estava de pé

Auditoria contra o texto do livro, característica por característica:

| Característica | Estado |
|---|---|
| Super força (+1 Força, teto 10) | automatizada |
| Agilidade aprimorada (+1 Destreza, teto 10) | automatizada |
| Forma bestial — 12m mortal / 24m bestial | interruptor na aba de Combate |
| Olfato e Audição aguçados, Visão no Escuro | texto (alcance por nível, +2 em Percepção) |
| Ódio Enraizado / Lua Cheia | texto — são testes em cena, não valor de ficha |
| Ervas místicas, Fadiga pós-transformação | texto — condição narrada |
| Ódio milenar | texto — o defeito Intolerância sem direito aos pontos |

**O que o livro deixa em aberto:** a habilidade progressiva *Forma Bestial*
aparece nomeada em três lugares e **nunca é definida numericamente** — o
capítulo de Habilidades só diz que progressivas *"escalonam seu nível de poder
de acordo com o rank do usuário"*. Fora o deslocamento, o livro não dá nenhum
outro número para a forma bestial. Enquanto o mestre não fechar isso, o
interruptor troca o deslocamento e nada mais.

## v0.35.6 — o botão era um nível de aninhamento a mais

Terceira tentativa no mesmo botão, e a primeira com a causa certa.

### As duas teorias erradas

- **v0.35.4** — botão com `width="0"` no XML, script mandando `190` para o
  mestre. Não apareceu.
- **v0.35.5** — culpei a largura vinda do script ("larguras não existem no
  primeiro desenho"), inverti para `190` no XML com o script só encolhendo.
  **Continuou não aparecendo** — o que derrubou a teoria, porque nessa versão
  nenhum script tocava na largura para o mestre.

### A causa, que estava no print desde o começo

A **barrinha colorida à esquerda de cada linha sempre apareceu**. Ela é um
`<rectangle align="left" width="3">`, filho **direto** do retângulo da linha.

O botão não era. Eu o tinha posto dentro de um `<layout>` extra, aninhado
dentro do `<layout align="client">` da linha:

```
linha (height=0, cresce por script)
└ rectangle
  ├ rectangle align="left" width="3"     ← aparecia
  └ layout align="client"
    └ layout align="right" width="190"   ← ESTE nível não era desenhado
      └ rectangle (o botão)
```

Numa linha que nasce com `height="0"` e só ganha altura depois, por script,
esse nível a mais não é redesenhado. Agora o botão é **irmão da barrinha** —
mesmo nível, mesmo tipo de ancoragem, o padrão que já estava funcionando na
tela ao lado.

**Regra que fica:** dentro de linha de altura variável, ancore o widget como
filho direto do retângulo da linha. Não empilhe layout dentro de layout.

### O botão agora é de todos, e a recusa é falada

Sem toggle de largura: o botão está no XML e o script não toca nele. O jogador
que clicar lê *"Somente o MESTRE retira uma bênção. Peça a ele — a bênção de X
continua valendo."*, escrito no rodapé do próprio popup.

Menos peça móvel, e mais alinhado com a lei da ficha: recusa que diz por quê e
quem pode liberar vale mais que botão que some.

### Sobre os testes

As baterias das duas versões anteriores **passaram** enquanto o botão não
aparecia para ninguém, porque as duas só olhavam o lado do jogador — "está
escondido? está". Um teste que verifica metade do comportamento dá confiança
sem dar cobertura, e foi o que me deixou entregar duas correções erradas com o
selo de "14 baterias passando".

Não consegui transformar isto numa checagem de build: a diferença entre o
aninhamento que funciona e o que não funciona não é expressável no XML sem
gerar alarme falso nas linhas da aba de Criaturas, que aninham e funcionam.
Ficou como regra escrita no código, e não como trava automática — o que é uma
proteção mais fraca, e está registrado como tal.

## v0.35.5 — o botão de retirar bênção não aparecia

No popup de bênçãos da v0.35.4, o botão de retirar não aparecia — **nem para o
mestre**.

### A causa

O botão nascia com `width="0"` no XML e o script mandava `190` para quem fosse
mestre. Só que `atualizarPopupBencaos()` roda **antes** do `show()`, e largura
atribuída por script a um widget que ainda não foi desenhado não pega neste
SDK. É a armadilha que já estava anotada no projeto — *"larguras não existem no
primeiro desenho"* — e eu a reintroduzi por outro caminho.

O detalhe que despistava: a **altura** das linhas pegava normalmente no mesmo
popup. Por isso a lista aparecia certinha e só o botão sumia. Altura e largura
não se comportam igual aqui.

Dá para confirmar pelo próprio print: o rodapé mostrava o texto da versão do
**mestre**, ou seja `usuarioEhMestre()` retornou verdadeiro e o `setWidth(190)`
foi chamado. Foi chamado e ignorado.

### A correção — inverter de que lado a falha cai

O XML agora traz `width="190"`, e o script só **encolhe**, nunca cresce:

- **mestre**: o script não toca na largura. O caminho que precisa funcionar
  não depende de script nenhum.
- **jogador**: o script tenta encolher para 0. Se falhar, ele vê um botão que
  **recusa falando** — *"Somente o MESTRE retira uma bênção. Peça a ele — a
  bênção de X continua valendo."* — o que a lei da ficha já pede de toda
  recusa, em vez de um botão que some.

A recusa foi escrita direto no rodapé do popup, e não via `avisarFavores`, que
escreve no rótulo da **aba** — atrás do popup, invisível para quem clicou.

`abrirPopupBencaos` também repinta uma segunda vez depois do `show()`, para que
qualquer ajuste de largura futuro pegue num popup já realizado.

### Testes

A bateria checava que o botão ficava escondido para o jogador — ou seja, ela
**passava enquanto o botão não aparecia para ninguém**, porque só olhava o lado
do jogador. Agora ela verifica os dois lados: que para o mestre o script não
mexe na largura, que para o jogador ele tenta encolher, e que o clique do
jogador não revoga nada e devolve a recusa dentro do popup.

Duas armadilhas do próprio arcabouço de teste ficaram anotadas: os widgets
falsos vazavam de um cenário para o outro (agora `cenario()` chama
`limparWidgets()`), e uma chave ausente no mock devolve **uma função**, não
`nil` — comparar com `nil` dá sempre falso, o teste tem de olhar o tipo.

## v0.35.4 — bênçãos com nome, o bug do Sýdos, e o Pai e a Mãe

### O card BÊNÇÃOS abre a lista

`3` não diz **quais**. Para descobrir de quem o personagem era abençoado era
preciso varrer a lista de relações divinas atrás das linhas com o botão de
retirar bênção ligado — o dado existia, só estava espalhado.

Agora o card é clicável e abre uma lista fechada: cada divindade com sua
categoria, os favores em aberto com ela, e as marcas de **seu aspecto** e de
**quem o proclamou**. O botão de retirar a bênção fica ali dentro, uma linha
por divindade.

**Consulta abre sempre**, inclusive para o jogador — saber de quem se é
abençoado define que kit de poder está aberto. Quem trava é o botão de revogar,
não o de abrir.

O popup é deliberadamente magro: doze linhas de rótulo e um botão, sem
scrollBox, sem imagem, sem editor. Depois da v0.35.1 ficou a regra de não
pendurar widget caro dentro de popup.

**O caso que quebraria:** o botão guarda o **índice**, e o nome é lido no
clique. Revogar a linha 1 faz a lista subir — se o nome ficasse guardado no
widget, o segundo clique apagaria a divindade errada. Tem teste para isso.

### O bug do Sýdos — e o buraco que ele expôs

Trocar 3 favores de deus grande por 1 primordial abria a lista de primordiais
com **Sýdos** dentro, que é um deus **Grande**.

O filtro estava certo. O que estava errado é que ele nunca rodava para o
Sýdos. O popup acha o retângulo de cada deus por
`self["rectFav_" .. chavePoder(nome)]`, e **faltava o `ý` na tabela de
acentos** de `chavePoder`. Sem tradução, o `gsub` final apagava a letra:
`"Sýdos"` virava `"Sdos"`, o widget `rectFav_Sydos` nunca era encontrado, o
código pulava a linha — e o retângulo ficava com os 26px que tinha da listagem
anterior.

**Nenhum erro, nenhum aviso, nenhuma exceção.** É o pior formato de bug desta
ficha: o `if card ~= nil then` que protege contra crash é o mesmo que engole a
falha.

A tabela agora cobre o alfabeto acentuado do português inteiro e os vizinhos
prováveis (ý, ñ, tremas, crases). Varredura dos 30 deuses: era o único caso.

**Verificação nova — 25.** Para cada deus, confere se `chavePoder(nome)` acha
um `rectFav_` de verdade no XML. Ela reimplementa `chavePoder` **lendo a tabela
de acentos do próprio `ficha.lfm`** — copiar os acentos para dentro do script
de verificação criaria uma segunda fonte de verdade, e no dia em que as duas
divergissem a checagem passaria a mentir junto. Testada tirando o `ý` de novo:
o build recusa.

### O Pai e a Mãe entram em Registrar Favor

**Deuses, "Panteão"** lista o topo acima dos primordiais:

> `~> Pai,` pai dos seres primordiais
> `~> Mãe,` mãe dos seres primordiais
> `~~> Asta,` deus primordial do Céu e senhor dos Dragões

(o `~>` é um degrau acima do `~~>` dos primordiais).

Os dois **não** entram em `CatalogoDeuses.itens`, e isso é de propósito: aquele
catálogo guarda quem tem kit de poderes e pode ser Aspecto Divino, e o livro é
explícito sobre não haver semideus do Supremo — *"em contrapartida à ausência
de semideuses entre os seguidores do Supremo, os Paladinos emergem como os
verdadeiros heróis desta religião"*. Eles aparecem só na lista de registrar
favor, porque a ficha também serve para NPC e os paladinos oponentes têm favor
com o Pai.

A categoria própria (**Suprema**) os mantém fora da lista de escolha de
primordial, que filtra por `categoria == "Primordial"`. E "A Mãe" usa
exatamente o mesmo nome que a troca de 3 favores primordiais já gravava, para
favor ganho pelos dois caminhos cair no mesmo registro em vez de virar duas
linhas.

## v0.35.3 — o card MONTADO passa a conhecer voo e nado

O card só olhava o deslocamento **terrestre** da montaria. Uma wyverna com 100
de voo aparecia com os 30 do chão — e o número que o jogador ia usar no turno
simplesmente não existia na ficha.

### A regra, que o livro não escreve

A Loja define bônus de montaria como característica da montaria — *"0+(Bônus de
proficiência)m de bônus de montaria"*, e os acessórios somam a ele (*"+02 metros
de deslocamento adicional da montaria"*). O Domador ○○ **Montador selvagem** diz
*"Adicione o seu deslocamento ao da sua montaria, quando montado nela"*.

Nenhum dos dois fala de voo ou de nado: o livro escreve montaria como se só
existisse chão.

**Decisão da mesa (22/08/2026):** os dois bônus valem em **todos** os modos.
Wyverna com 100 de voo, bônus 3, cavaleiro com 13 de deslocamento → voo montado
116.

### Um card, os três modos

As duas ideias da mesa cabiam juntas em vez de concorrer:

```
        MONTADO · VOO
            103m
 Wyverna voo 100 + bônus 3
terrestre 33  ·  nado 43
```

- **título** diz qual modo é o número grande — sem isso, 103 de voo e 103 de
  chão ficam idênticos na tela;
- **número grande** é o **maior** modo, que é o que se usa no turno;
- **conta** mostra de onde ele saiu, com o modo nomeado;
- **linha de baixo** lista os outros modos com valor, no espaço que nos outros
  cards é ocupado pela caixa de AJUSTE — o MONTADO não tem ajuste próprio (ele
  mora na ficha da criatura), então o espaço estava sobrando.

**Modo com 0 não aparece em lugar nenhum**, e em particular não ganha o bônus:
montaria que não anda no chão não passa a ter "terrestre 2" só porque tem bônus
de montaria 2. Tem caso de teste para isso.

E montaria sem nenhum modo preenchido não inventa número: o card fica em 0 e o
texto diz *"esta montaria não tem deslocamento — preencha na aba Criaturas"*.
Mostrar só o bônus seria o pior dos mundos — um número que parece cálculo e não
é.

### Testes

Cinco casos novos na bateria de criaturas: o topo sendo o voo, os outros modos
na linha de baixo, Montador selvagem entrando em todos os modos, a montaria que
só nada (e não ganha terrestre), e a montaria sem modo nenhum.

## v0.35.2 — o `richEdit` derrubava o Firecast; revertido

O editor de criatura da v0.35.1 **crashava o Firecast ao abrir**, em máquina
modesta, duas vezes seguidas. Nenhuma checagem apitava: o Lua compilava, o XML
era válido, o pacote instalava — e derrubava o programa do usuário.

### A causa

A única coisa que mudou dentro do popup na v0.35.1 foram os dois `<richEdit>`.
A diferença para a aba de Background, que usa um `richEdit` há versões sem
problema:

| | Background | Editor de criatura (v0.35.1) |
|---|---|---|
| quantidade | 1 | **2** |
| tamanho | `align="client"` | altura fixa, 360 e 210 px |
| em volta | painel da aba | **`<scrollBox>` com ~90 widgets** |

Editor de texto rico é um controle caro: ele mede e redesenha o próprio
conteúdo. Dentro de área rolável, com altura fixa, isso vira medição aninhada —
e não há motivo para pagar esse preço no meio de uma sessão de jogo.

### O que voltou

`HABILIDADES ESPECIAIS` e `DESCRIÇÃO` são `textEditor` de novo — quebram linha e
formam parágrafo, como na v0.35.0, sem a barra de formatação. **As alturas
maiores ficaram** (360 e 210), assim como todo o resto da v0.35.1: espólios
removido com migração, sorteio dentro das faixas do livro e vida atual
digitável na linha.

Se um dia valer tentar de novo, o caminho menos arriscado é **um só** richEdit,
para habilidades, **fora do scrollBox** — e testando na máquina mais fraca da
mesa, não na melhor.

### Verificação nova — 24

Nenhum `<richEdit>` dentro de um `<popup>`. Não proíbe o widget: proíbe que ele
volte para lá **sem que alguém decida isso de novo**, com o custo escrito na
frente. Testada reintroduzindo um — o build recusa.

Vale como princípio geral, e é a primeira checagem daqui que não é sobre
sintaxe nem sobre regra: é sobre **peso**. As anteriores pegavam código que não
roda ou número que mente; esta pega interface que roda na minha cabeça e trava
na máquina de quem usa. Um pacote pode passar em 23 checagens e ainda assim ser
inutilizável.

## v0.35.1 — formatação, sorteio dentro da faixa e vida digitável

### `richEdit` nos dois campos de texto da criatura

`HABILIDADES ESPECIAIS` e `DESCRIÇÃO` passaram a usar o mesmo widget da aba de
Background — com a barra de fonte, tamanho, cor, negrito, alinhamento, listas e
imagem colada. A evolução do campo em três versões: `<edit>` (uma linha, o
Enter não fazia nada) → `textEditor` (quebra linha, texto puro) → `richEdit`
(formatação).

**O pulo do gato.** O `richEdit` **não tem `getText`/`setText`** — ele só
trabalha ligado a um `field=`. E `field=` dentro de popup resolve contra a
**raiz** da ficha, não contra o item da lista: a mesma armadilha que já tinha
aparecido nas imagens de item e habilidade. A solução é a de lá: a raiz guarda
um rascunho (`criaturaHabRascunho`, `criaturaDescRascunho`), preenchido ao abrir
e lido ao salvar. Cancelar continua não gravando nada.

### O campo ESPÓLIOS saiu, e o texto antigo não se perdeu

A mesa preferiu o espaço nas habilidades — que foram de 230 para **360 px**, e a
descrição para 210.

O espólio não era bem um valor: *"3 espólios: um Raro, os outros Comuns ou
Incomuns"* é enunciado, não número. Virou uma linha da lista de instruções,
junto das outras escolhas que o gerador não pode fazer sozinho.

**Migração.** Criatura salva antes disso tem texto em `c.espolios` que não teria
mais onde aparecer — dado órfão no nó, invisível para sempre. Ao abrir uma
criatura assim, o texto é anexado ao fim das habilidades **na tela**, com um
aviso dizendo o que aconteceu; só vira permanente quando o mestre salvar. No
salvar o campo antigo é zerado, senão ele seria reanexado a cada abertura.

### O gerador SORTEIA dentro da faixa

Rank A tem *"HP: 300 a 500"*. Até agora a ficha preenchia **300**, com o
argumento de que escolher o meio da faixa seria inventar um número que o livro
não escreveu.

**O argumento não para em pé**, e a mesa apontou certo: o livro escreveu a faixa
inteira, então qualquer número dentro dela é do livro. O mínimo é tão arbitrário
quanto o meio — e ainda produzia sempre a criatura mais fraca possível daquele
rank, obrigando o mestre a subir tudo na mão, toda vez. Agora vida, CD,
proficiência e XP saem sorteados, e **clicar de novo re-sorteia**.

A instrução mostra o número **e** a faixa de onde ele saiu — `vida 387 (faixa
300 a 500)` — para conferir sem abrir o livro.

Três detalhes que o sorteio exigiu:

- **Rank EX não tem teto escrito** (`hpMax = 0`). Sortear entre 500 e 0
  devolveria lixo; sem teto fica o mínimo, que é o único número que o livro deu.
- **A semente.** Sem `math.randomseed`, o Lua começa toda sessão com a mesma
  semente e a primeira criatura do dia sairia sempre igual — erro que só
  apareceria depois de semanas, quando alguém reparasse na coincidência. Usa o
  mesmo padrão guardado (`os` pode não estar exposto no Firecast) do sorteio de
  características de mestiços.
- **`gerar()` ganhou um segundo parâmetro**, uma função `sorteio(min, max)`, só
  para o teste poder afirmar alguma coisa. Gerador aleatório sem teste é
  gerador sem rede: as baterias checam piso, teto, 200 sorteios caindo dentro da
  faixa do rank A, e o caso do EX.

### Vida atual digitável na linha

As setas continuam para o dano de 1 em 1, mas criatura de 500 de vida não se
edita clicando 137 vezes. Agora a vida atual é uma caixa; o máximo fica ao lado.

**A armadilha aqui é recursão.** A repintura da aba escreve na mesma caixa que
dispara o `onChange` — sem trava, repintar chamaria `definirVidaCriatura`, que
chamaria a repintura, e a ficha travava. Uma flag `pintandoAbaCriaturas` corta
o ciclo, e há um caso de teste só para ela.

O valor é preso em `[0, vidaMax]`, e a caixa **só é reescrita quando o número
foi corrigido** — reescrever a cada tecla jogaria o cursor para o início e
ninguém conseguiria digitar "150".

## v0.35.0 — o editor de criatura vira um editor de verdade

Três pedidos da mesa depois do primeiro uso da aba Criaturas.

### Os campos de texto quebram linha

`HABILIDADES ESPECIAIS`, `DESCRIÇÃO` e `ESPÓLIOS` eram `<edit>` — widget de
**uma linha só**, onde o Enter não faz nada. Viraram `<textEditor>`, o mesmo do
popup de habilidades, e cresceram: 84→230, 62→170 e 44→96 px.

O motivo do pedido é concreto: criatura de jogador — familiar de mago, wyverna
— tem uma lista longa de característica que só ela tem, e lista sem parágrafo
não se lê.

`getText`/`setText` são idênticos nos dois widgets, então `porEditCri` e
`lerEditCri` não mudaram uma letra. E as criaturas moram num recordList **NDB
de verdade**, não no texto serializado dos itens: aqui o `\n` é um caractere
comum e não um separador de campo — se fosse a serialização do inventário,
quebrar linha teria partido o registro ao meio.

As dicas saíram do `hint` (tooltip que só aparece se a pessoa parar o mouse em
cima) e viraram parte do rótulo, que fica sempre na tela.

### A caixa "o que ficou para você decidir" nasce fechada

Ela ocupava meia tela toda vez que alguém clicava em aplicar. Agora é um botão
com contador — `▾ O QUE FICOU PARA VOCÊ (3)` — fechado por padrão, que só
aparece quando há algo a dizer, e a caixa abre logo abaixo dele.

**Por que não apaguei de vez.** Parte daquelas linhas não é lembrete, é regra
que o gerador **não pode cumprir sozinho**: *"Tamanho Médio: +3 de FORÇA ou
CONSTITUIÇÃO — escolha uma"*. Se o texto sumisse, um mestre que não decorou o
Bestiário simplesmente não aplicaria o +3, e o erro seria invisível — a ficha
ficaria consistente com um número faltando. Some da tela, continua a um clique.
A linha de status também passa a dizer quantos pontos ficaram em aberto.

### Botão LIMPAR ao lado de APLICAR AS REGRAS DO LIVRO

Zera **exatamente** vida, vida atual, CD, proficiência, XP, Carisma, Sabedoria
e espólios — o que o gerador preenche, e nada mais. Nome, deslocamentos,
defesas, os atributos digitados à mão e os textos ficam onde estão. Serve para
trocar uma classificação e rodar o gerador de novo sem apagar número por
número.

O aviso **lista o que foi apagado**. Botão que apaga em silêncio é a forma mais
rápida de perder a confiança numa ficha.

### A parte que evita o próximo bug

As duas listas — o que o gerador escreve e o que o LIMPAR apaga — precisam ser
a mesma, e no dia em que o gerador aprender a preencher mais um campo ninguém
vai lembrar de mexer nas duas. Então elas viraram **uma só**,
`CAMPOS_DO_GERADOR`, e a **checagem 23** falha o build se
`aplicarRegrasDoLivro()` escrever num campo que não esteja lá.

É um esquecimento que não daria erro nenhum: o LIMPAR só deixaria um número
velho para trás e o mestre aplicaria por cima achando que zerou. Testada
injetando um `porEditCri("defAparar", 99)` — o build recusa.

Bateria nova (13 no total) cobre o botão escondido sem pendências, a caixa
nascendo fechada, abre/fecha, e o LIMPAR preservando nome, atributo digitado,
textos e deslocamento.

**Armadilha do mock de teste**, para a próxima vez: o widget falso do prelúdio
guarda o valor em `w[metodo]` — ou seja, **no lugar do método**. Serve para
quem chama `setText` uma vez; a segunda chamada estoura com *"attempt to call a
string value"*. Esta bateria usa um mock local que guarda em `w["_"..metodo]`.

## v0.34.4 — o Prana entra DENTRO do Vitae (e eu tinha consertado o sintoma)

Veredito do mestre sobre a vampibruxa do print: **"num tá"**. O Vitae dela usa
o Prana, e por isso fica absurdamente alto.

### A regra

O livro não escreve a combinação, mas os dois verbetes do Tutorial de Ficha se
encaixam sem sobra:

> **Pontos de mana (Mp)** — "Para as personagens com a qualidade **Linhagem de
> Unaris**, os Pontos de mana e Pontos de aura serão **fundidos em uma coisa
> só** dentro do MP, enquanto a Aura permanecerá sem valor."

> **Pontos de vitae (Pv)** — "Para os personagens que são vampiros, o Vitae
> (...) é utilizado para realizar todos os seus feitos **no lugar da Aura e da
> Mana**. (...) `[10 + (Constituição * 1.5) + (Rank * 30)]`"

Na bruxa não existem mais duas reservas: existe **uma**. E no vampiro o Vitae
fica no lugar da Aura e da Mana — no lugar, portanto, dessa reserva única. Logo
a reserva fundida entra **dentro** do Vitae. Duas barras lado a lado davam à
personagem duas reservas gastáveis, que é exatamente o que o "no lugar de"
proíbe.

    Vitae da vampibruxa = 10 + (Con × 1,5) + (Rank × 30) + Prana

No exemplo da mesa: 10 + 3 + 60 + 83 = **156** (era 73, com um Prana de 83
pendurado ao lado).

### O que a correção revelou — eu tinha consertado o sintoma

Até a v0.31.3 a ficha **escondia** o card de Prana para vampiros. Eu tratei
isso como bug de visibilidade na v0.32.0 e liberei o card, com a frase "o valor
era calculado corretamente e simplesmente nunca chegava na tela".

Estava errado nas duas metades. **Esconder estava certo.** O que estava errado
era `Calculos.pv`, que ignorava o Prana — e continuou ignorando por mais três
versões, porque o número que ele devolvia era plausível. Consertei o sintoma
visível e deixei a causa exatamente onde estava.

Agora o card volta a ficar oculto para vampira, mas desta vez o valor está
somado no Vitae.

### Mostrar a conta

Como o card sumiu, o salto de 73 para 156 precisava de explicação na tela:

- a conta embaixo do Vitae passa a ser `10 + (Con × 1,5) + (2 × 30) + prana 83`;
- a nota abaixo dos cards abre o Prana por extenso — `mana 29 + aura 54 = 83` —
  e explica por que não há segunda barra. Se houver ajuste manual de Prana, ele
  entra na frase: uma conta que não fecha na tela é pior do que conta nenhuma.

### Verificações novas

Três casos em `calculos.lua — fórmulas do livro`: vampiro puro não muda, a
vampibruxa soma o Prana (156 cravado), e o ajuste manual do Prana entra **uma
vez só**, com o ajuste do Vitae por fora.

A bateria de cards passou a exigir que a vampibruxa **não** veja Prana — o
inverso do que ela exigia desde a v0.32.0. Se alguém reabrir o card, o teste
quebra e a mensagem diz por quê.

Um comentário em `recalcularTudo()` marca que `sheet.prana` tem de ser
calculado **antes** do Vitae: mover o bloco tira a parcela e o número continua
parecendo razoável.

### Ponto de atenção

Fichas de vampibruxa criadas antes desta versão podem ter um **ajuste manual de
Prana** que a jogadora usou para compensar o erro. Ele agora entra no Vitae sem
campo visível. Se algum Vitae vier estranho, é o primeiro lugar para olhar.

## v0.34.3 — a moldura do retrato ganhou proporção

Pedido da mesa: expandir um pouco a imagem do Perfil, deixando os campos de
texto longos cederem espaço.

A moldura era **190 × 312** — proporção 0,61, bem mais estreita que qualquer
retrato. Com `style="autoFit"` (que preenche cortando o excesso), uma moldura
estreita demais corta justamente as laterais da arte: era isso que fazia o
retrato parecer "espremido" mesmo depois do acerto de v0.34.0.

Agora é **234 × 312**. Descontadas as margens de 3px, a imagem interna fica
**228 × 306 — exatamente 3:4**, a proporção de retrato mais comum. É o ponto em
que o autoFit corta o mínimo.

**Uma linha mudou.** NOME, RAÇA, PHOTOPLAYER e LOCAL DE ORIGEM são
`align="client"`: cedem os 44px sozinhos, sem que nada precise ser reposicionado.
ANIVERSÁRIO, IDADE, CLASSE, ASPECTO DIVINO e TRAÇO têm largura fixa e não se
mexeram. Ficou registrado em comentário no próprio `.lfm` que largura e altura
andam juntas — mudar só uma traz o corte de volta.

## v0.34.2 — a quebra de linha dentro do atributo

Segundo erro de `rdk i` no mesmo bloco de código, e o mais instrutivo:

```
ficha.lfm.lua
LuaError: Syntax error
[string "ficha.lfm.lua"]:78292: unfinished string near '"COMUM'
```

As 36 linhas novas da Loja saíram com **uma quebra de linha dentro do valor do
atributo**: `text="COMUM⏎"`. O script que as gerou leu a qualidade de um arquivo
intermediário e não tirou o `\n` do fim da linha.

**Por que nada pegou isso.** O XML aceita: o valor de um atributo pode ocupar
várias linhas, e o parser não reclama — `ET.parse` passou sem um pio, e a
verificação de XML bem-formado dizia que estava tudo certo. O `rdk` é que não
aceita: ele transforma cada atributo numa string Lua, e a quebra deixa a string
aberta.

Como efeito colateral, o `\n` também estragava a comparação da qualidade:
"Comum⏎" não batia com "Comum", então **as 36 linhas perderam a cor** — todas
saíram em cinza, inclusive as Ótimas e a Incomum. Corrigido junto.

### Verificação nova — 22 e 22b

Nenhum atributo do XML pode ter quebra de linha, tabulação ou retorno de carro
no valor (**22**), nem contrabarra (**22b** — vira sequência de escape na string
Lua gerada; `text="C:\Users"` produziria `\U`, que não existe em Lua).

Roda sobre o XML já sem CDATA e sem comentários, senão um comentário que
mencione `field="..."` viraria falso positivo.

Era a última classe de erro que passava por todas as checagens e só aparecia no
`rdk i`. Testadas as duas: reintroduzindo o `\n` numa cópia, o build falha com a
mensagem certa.

## v0.34.1 — o `rdk` recusou o pacote: `formType` inválido

O template novo da lista de criaturas saiu com dois atributos que **não
existem**. O `rdk i` recusou o pacote inteiro:

```
[itens/itemCriatura.lfm] Erro: O valor "listItem" foi informado na propriedade
"formType", porém ela aceita apenas um dos seguintes valores: "undefined",
"sheetTemplate" e "tablesDock".
```

Eu escrevi `formType="listItem"` e `dataType="..."` por analogia com o que o
`<form>` principal da ficha usa, sem conferir. Os quatro templates que já
funcionavam declaram **só** `name`, `height` e `theme` — e é isso que o
`itemCriatura.lfm` faz agora.

### Verificação nova — 21

Nenhuma das 20 checagens olhava os atributos de `<form>`, porque nenhuma delas
nasceu de um erro ali. Esta nasceu: valida o valor de `formType` contra a lista
que a própria mensagem do `rdk` informou, e falha em qualquer atributo de
`<form>` que não seja conhecido — um atributo inventado é justamente o sinal de
que alguém supôs a propriedade em vez de copiar de um arquivo que funciona.

Era a única classe de erro que só aparecia na sua máquina, na hora de instalar.

## v0.34.0 — Lote 3: a aba Criaturas, as montarias, e quatro seções da Loja que faltavam

### Aba 10 — CRIATURAS

Familiares, montarias, aliados e o que mais a mesa inventar. Lista compacta na
aba, editor completo num popup, até 12 por ficha.

**O livro não deixava isso solto como a gente supunha.** O Bestiário tem o
sistema inteiro — Tamanho, Natureza, Intelecto, Dieta, Tipo, Raridade e Rank —
e a seção *"Criando a ficha de uma criatura"* diz, com todas as letras, que ele
*"vale tanto para a criação de inimigos, quanto para criação de **pets,
montarias e criaturas auxiliares**"*.

Por isso existe o botão **APLICAR AS REGRAS DO LIVRO**. E por isso ele **sugere
em vez de impor**: a mesma frase do livro termina com *"o narrador poderá
personalizar a mesma da forma como bem entender"*. Ele preenche vida, CD,
proficiência, XP e os bônus que nomeiam um atributo só — e nada é salvo até
você clicar em salvar. Odiou o resultado? Cancelar, e nada aconteceu.

**Duas decisões que valem registrar:**

O gerador preenche o **mínimo** de cada faixa do rank, nunca o meio. "HP: 100 a
180" vira 100, com a faixa inteira escrita na linha de instruções. O meio seria
um número que o livro não escreveu.

E **o que é escolha não vira número**. "Tamanho Grande: +4 de FORÇA **ou**
CONSTITUIÇÃO" aparece numa lista do que ficou para o mestre decidir, dizendo
onde lançar. A ficha não escolhe atributo por ninguém.

**Vida com atual/máximo e botões + e −**, ao contrário do personagem. Foi
decisão da mesa e a diferença tem motivo: os campos de valor atual saíram do
personagem na v0.31.3 porque os mestres contam vida em outro programa — mas a
criatura é do jogador, e quem acompanha o corvo dele no meio do turno é ele.

**Permissão livre sempre**, sem trava de criação: a aba é do mestre por
natureza, e travá-la obrigaria a destravar a ficha inteira para mexer num
familiar.

### Montaria ligada à aba de Combate

Criatura com papel **Montaria** ganha um botão de montar. Montado, aparece o
card **MONTADO** na linha de movimento, ao lado do deslocamento a pé — que
continua visível de propósito, porque é o número de que você precisa no instante
em que desmonta.

Só uma montaria por vez: montar a segunda **desmonta a primeira** em vez de
recusar, porque recusar custaria dois cliques no meio de uma perseguição.

A conta: `deslocamento da montaria + bônus de montaria`. O "bônus de montaria" é
cobrado três vezes na Loja e **nunca definido** — a mesa leu como metros
somados, e está comentado como dedução. O que é escrito com todas as letras
entra por cima: *Domador / Montador selvagem ○○ — "Adicione o seu deslocamento
ao da sua montaria, quando montado nela."*

### A linha de movimento foi dividida em duas

Tamanho, iniciativa e proficiência saíram para uma linha própria. Nenhum dos
três é deslocamento, e misturados ali empurravam voo e nado para fora da tela.

**Voo e nado agora são fixos.** Quem não tem o modo vê "—" e a conta explica que
a raça não dá — e o campo de ajuste ao lado passou a funcionar de verdade: antes
o cálculo desistia quando a base era zero, então digitar ali não fazia nada.
Automação sem escape.

### Quatro seções da Loja que nunca chegaram ao catálogo

Fui buscar as montarias para ligar na aba e não achei nenhuma. Procurando os
irmãos, encontrei **31 entradas, 36 linhas compráveis**, em quatro seções
inteiras:

| Seção | O que faltava |
|---|---|
| **Montarias** | Carroça, Montaria Adulta, Selas de corrida, guerra e viagem |
| **Criaturas** | Chifres, Couro, Dentes, Ossos, Unha/Garras |
| **Utilidades** | corda, canoa, estadia, lamparina, óleo, presente, roupa, vestimenta nobre, travessia, carruagem |
| **Kits** | acampamento, alquimia, culinária, cura, disfarces, engenharia, escalada, forja, herbalismo, roubo, tecelagem |

A causa é a de sempre: **formato diferente**. O resto da Loja escreve
`[Comum - 45 Lunaris]` na mesma linha do efeito; estas quatro escrevem o nome, a
descrição, e depois `Preço:` e o valor em linhas separadas. O extrator entendia
só o primeiro formato e descartou as quatro em silêncio.

O catálogo foi de 214 para **250 itens**. Nenhuma das novas equipa no
personagem: sela equipa na *montaria*, e kits, utilidades e espólios vivem na
mochila.

### O erro que a verificação nova pegou

Ao inserir as 36 linhas no popup da Loja, calculei os índices com uma expressão
regular — e ela não reconheceu **seis** itens cujo nome tem aspas
(`Metamorfose animal "Bode"`). Resultado: todos os 36 entraram apontando **seis
posições atrás**. Clicar em "Chifres" abriria "Tratar ferimentos".

É o mesmo caso que já derrubou a extração antes: nome do livro com aspas dentro.

**Verificação 20**, nova: cada linha do popup é comparada com o nome do item
naquele índice. Cobre as **250**, não só as novas, e teria pego isto no
primeiro segundo. A 20b garante que nenhum item do catálogo fique sem linha na
Loja.

### Outras verificações novas

- `verif/extrai_loja_pt2.py` — extrator do segundo formato, com relatório do que
  não reconheceu. Ele mesmo apontou duas descrições que começam com a palavra
  "preço" e estavam sendo lidas como rótulo de preço.
- Duas baterias de teste: o gerador do Bestiário (mínimo da faixa, escolhas que
  não viram número, ações extras por rank) e as criaturas (exclusividade da
  montaria, Montador selvagem, vida que não passa do máximo nem fica negativa).
  São **12 baterias** no total.

## v0.33.2 — o retrato: `autoFit`, e não `stretch`

Eu deduzi o valor olhando os prints em vez de olhar o arquivo, e errei. O
`stretch` preenche a moldura **deformando** a imagem — foi por isso que o
retrato saiu esticado.

O valor certo estava no `ficha.lfm` de Night City Noir:

```xml
<image align="client" field="imagemPerfil" editable="true"
       animate="true" style="autoFit"/>
```

**`autoFit` preenche a moldura mantendo a proporção**, cortando o que sobra —
que é exatamente o efeito que a comparação pedia. Entrou junto o
`animate="true"`, que faz GIF animado rodar, e uma margem de 3 px para a borda
da moldura continuar aparecendo.

**As artes de item e habilidade continuam `proportional`, de propósito.** Ali a
imagem inteira importa mais do que preencher: `autoFit` cortaria parte da arma
ou da armadura. A verificação 19 guarda os dois valores com o motivo de cada um.

### Verificação corrigida — comentário é prosa, não código

As checagens 16 e 19 leram o exemplo `<image field="imagemPerfil" .../>` que eu
tinha escrito **dentro de um comentário XML** para documentar a decisão, e
acusaram campo órfão e moldura sem decisão registrada. Comentários agora são
removidos antes da varredura, junto com os blocos CDATA. Isso vale para todas as
checagens que leem o XML — um comentário que mostra um exemplo de widget deixa
de virar falso positivo.

## v0.33.1 — as imagens do jeito certo

Ajuste em cima do Lote 2, depois de ver na tela.

### Removido — o campo de link ao lado da moldura

Ele duplicava o que o próprio Firecast já faz: o seletor padrão abre com
**"uma imagem de um site"** e **"uma imagem do FireDrive"** lado a lado. Ter um
campo de URL do lado de fora era oferecer duas vezes a mesma coisa, com duas
aparências diferentes. Agora só a moldura, e o seletor do Firecast cuida do
resto.

O escape percentual continua: a URL que o Firecast devolve tem `/` e pode ter
`?` e `&`, e a lista de itens é serializada com `&`, `=` e `;`.

### Movido — a arte agora é o último campo, e é grande

Estava no topo do popup, numa miniatura de 72 px. Passou para o **fim** de cada
editor — abaixo de *Efeito* na habilidade, abaixo de *Descrição* no item — num
quadro de **320 px de altura**, centralizado.

O lugar faz sentido além do tamanho: nome, regras e números são o que se
consulta com pressa no meio do turno; a arte é o que se olha com calma.

### Retrato do personagem — preenche a moldura

Era `style="proportional"`, que encaixa a imagem **inteira** e deixa faixa preta
em cima e embaixo quando a proporção não bate com a moldura. Passou a
`style="stretch"`, que **preenche** — o mesmo comportamento da ficha de
Cyberpunk, que foi a comparação pedida.

**As artes de item e habilidade continuam `proportional`, e isso é de
propósito.** A moldura do retrato é estreita e alta e recebe sempre um retrato;
esticar ali não deforma nada. As molduras de arte são grandes e recebem qualquer
proporção — ícone quadrado, banner largo, figura alta. Esticar arte arbitrária
num quadro largo achata a imagem, que é pior do que a faixa preta que se quis
evitar. Por isso elas ficaram em quadros quase quadrados e centralizados, onde a
faixa que sobra é pequena.

**Verificação nova — 19.** Cada moldura tem o `style` que a decisão pede,
registrado numa tabela com o motivo. Uma moldura nova sem decisão registrada
falha o build, em vez de herdar o padrão errado em silêncio. E a **19b** impede
que volte um `<edit>` no mesmo campo de uma imagem.

## v0.33.0 — Lote 2: voo, nado, formas, tamanho, durabilidade na linha, revogação e imagens

Sete frentes da rodada de melhorias dos mestres. A aba de Criaturas fica para o
Lote 3.

### Voo e nado — não era feature nova, era dado perdido

As raças declaram deslocamento **em modos**, e a extração original guardou só o
primeiro número em `deslocamentoNum`. O resto virou texto decorativo:

| Raça | O que o livro diz | O que a ficha tinha |
|---|---|---|
| Aarakocras | `10m (terrestre) / 20m (aéreo)` | 10 |
| Harpias | `8m (terrestre) / 24m (aéreo)` | 8 |
| Sereias e Tritões | `8m (terrestre) / 24m (aquático)` | 8 |
| Ninfas | `10m (terrestre/aéreo/aquático)` | 10 |
| Lobisomens | `12m (forma mortal) / 24m (forma bestial)` | 12 |

O catálogo foi **regerado**: 22 raças com modos, 9 com voo ou nado, 2 com forma
alternativa. Nenhum padrão do texto ficou por reconhecer.

**Conta**, decidida com a mesa: cada modo usa a mesma do terrestre —
`modo + Destreza + Rank`. A disparada (dobro) vale nos três; a penalidade de
armadura pesada também. **Passos de vento** e **Maratonista** ficam só no
terrestre, porque os textos dizem "deslocamento padrão" e "corrida e saltos".

Os cards de **VOO** e **NADO** só aparecem para quem tem o modo — quem não tem
não perde espaço na linha. Cada um traz a disparada na própria linha da conta,
em vez de virar mais dois cards.

Um mestiço fica com o **maior valor modo a modo**, mesma regra de mesa já usada
nos atributos: Aarakocra com Sereia voa como Aarakocra e nada como Sereia.

### Formas alternativas — um interruptor, não um card

Lobisomem (`forma mortal` / `forma bestial`) e Ursari (`em pé` / `postura
Ursari`) não têm voo nem nado: têm o **mesmo deslocamento terrestre em outro
estado do corpo**. Os dois valores nunca valem ao mesmo tempo, então viraram um
interruptor abaixo da linha de movimento, que **só existe para quem tem forma**.

Transformar-se é ação de **jogo**: fica livre mesmo com a ficha finalizada.

### Tamanho — toda ficha nasce Médio

O livro define seis categorias mas **não diz o tamanho de nenhuma raça** — cita
doze como exemplo e deixa dezessete em branco. Em vez de deduzir raça por raça,
a mesa decidiu: **toda ficha nasce Médio**, o jogador ajusta à vontade durante a
criação, e depois de finalizada só o mestre muda — mesma trava de raça e classe.

Card na linha de movimento, com setas de uma categoria por clique. **Não
circula**: em Colossal, a seta para cima diz que chegou ao fim em vez de dar a
volta para Minúsculo.

É campo **indicativo**: nenhum número muda por causa dele. Alcance efetivo,
bônus de ocultação e espaço no grid ficam com a narrativa, como combinado.

*(O levantamento completo do que o livro diz sobre tamanho de cada raça foi
feito e está registrado — se um dia a mesa quiser o valor vindo da raça, a
pesquisa já está pronta.)*

### Durabilidade com + e − na própria linha

Antes era preciso abrir o popup do item para mexer num número que se mexe toda
sessão. Agora a linha mostra `3 / 5` com os dois botões ao lado, e a cor conta a
história: normal, **dourado** na metade ou menos, **vinho** em zero.

Ao chegar a zero o item fica **QUEBRADO**: continua equipado e visível, mas
**para de entrar nos cálculos** até ser consertado. Não desequipa sozinho —
mexer no equipamento do jogador no meio do turno gera confusão. O `+` conserta e
os bônus voltam na hora.

O livro fala em perder durabilidade em vários lugares e **nunca diz o que
acontece ao zerar**. Isto é acordo de mesa, e está comentado como tal.

### Desproclamar e desabençoar

A ficha só sabia conceder. Agora o mestre pode retirar — os deuses do Círculo
"podem sentir ciúmes, inveja e até mesmo cobiça", e retomar o que deram é
narrativa possível.

Ao revogar, **os favores gastos não voltam e a relação com a divindade zera**.
Fica registrado num **Histórico Divino** na aba de Favores, que só aparece
depois da primeira revogação, e é anunciado no chat com emblema próprio (⚱️) —
retomar não é o mesmo que uma mácula, e não deve parecer.

O botão de retirar a bênção só aparece na linha de quem **abençoou**, e nunca ao
lado do botão de conceder: um é o inverso do outro, e ver os dois juntos convida
ao clique errado.

### Imagens em itens e habilidades

Quadro clicável que sobe o arquivo para o servidor do Firecast — o mesmo widget
do retrato do personagem — **mais** um campo de endereço ao lado, para quem
prefere colar um link. Os dois editam **o mesmo valor**.

A armadilha do SDK aqui é conhecida: dentro de um popup, `field=` resolve contra
a raiz da ficha, e não contra o item da lista. Em vez de brigar com ela, a raiz
virou **rascunho**: o valor é copiado para lá ao abrir e de volta ao salvar.

**E a armadilha que só apareceu ao testar:** a lista de itens é serializada com
`&` entre campos, `=` entre chave e valor e `;` entre itens — e os três aparecem
numa URL comum (`?id=42&v=3`). Colar o endereço de uma imagem **quebraria a
lista inteira de itens**. Campos de URL agora passam por escape percentual na
serialização. A bateria de teste cobre inclusive o `%`, que é o próprio
caractere de escape.

### Verificações novas

- **18. `deslocamentoModos` bate com o texto do livro** — a derivação é refeita
  a cada build e comparada com o que está gravado. Editar um sem o outro falha.
- **Extrator de deslocamento** (`verif/extrai_deslocamento.py`) com relatório do
  que não reconheceu e conferência cruzada contra o campo `tipo` da raça. Foi
  ela que mostrou que Ghiscari é `Terrestre, Aquático ou Aéreo` e mesmo assim só
  tem 14m escritos — porque, diz o livro, "as características raciais dos
  Ghiscari dependem inteiramente de qual tribo pertencem".
- Cinco baterias de teste novas: deslocamento por modo, cards de voo e nado,
  durabilidade, revogação, tamanho e escape de URL. São 10 no total.

## v0.32.2 — Hemocinese vem da raça, não do Coração de Mana

### Corrigido — o selo de origem errado na linha do poder

Hemocinese aparecia na aba de Poderes com a etiqueta **"CORAÇÃO DE MANA"**. O
poder vem da característica racial [Hemocinese], de Orcs e Vampiros, e não tem
nada a ver com a qualidade Coração de Mana.

A causa: até aqui existia **uma única** origem que não era divindade — o
Coração de Mana, do poder Magia — e o rótulo dela estava escrito na mão em dois
lugares diferentes do código (`poderesOrdenados`, no cabeçalho do grupo, e a
renderização da linha, no selo). Qualquer poder com origem vazia caía nesses
dois textos fixos.

Agora cada origem não-divina se descreve numa tabela própria
(`ORIGENS_SEM_DIVINDADE`), com grupo, selo e ordem. Acrescentar a terceira é
uma linha. A aba passou a mostrar:

> ✦ FORA DOS KITS · **HERANÇA RACIAL**  →  Hemocinese · **HERANÇA RACIAL**

Fichas que já receberam o poder na v0.32.0 (gravado com a origem vazia) são
migradas na abertura, sem mexer no nível que o jogador já tinha.

**Verificações novas:**

- dois casos na bateria do Hemocinese: a origem gravada é "Herança racial", e a
  ficha da v0.32.0 é migrada mesmo quando nada mudou no direito;
- checagem **17**: toda origem que aparece num card de poder e não é uma
  divindade do catálogo precisa estar declarada em `ORIGENS_SEM_DIVINDADE`
  **e** tratada em `deusEhAcessivel`. É a checagem que teria pego este bug no
  dia em que o card do Hemocinese foi criado.

## v0.32.1 — os dois campos desconexos escondiam uma regra do livro

Você pediu para tirar "LIM. AÇÕES" e "LIM. AÇÕES BÔNUS" da aba de Perfil,
porque estavam desconexos. Estavam mesmo — mas ao removê-los apareceu **por
que** eles existiam.

### Removido — os dois campos manuais

Eram de antes de existirem os cards de Ações padrão / bônus / reação. Depois
que os cards passaram a calcular sozinhos, os dois viraram **uma segunda fonte
de verdade para o mesmo número** — e mostravam "1" e "0" enquanto os cards
mostravam 1, 2 e 2. Duas fontes divergem, sempre.

Fichas antigas têm os nós limpos na abertura, para não sobrar dado que não
significa mais nada.

### Encontrado — existe um teto de ações no livro, e ele nunca foi ligado

Um comentário no `dadosSistema.lua` citava um trecho que a minha varredura de
ontem não tinha encontrado. Fui atrás e ele existe: **Sistema e Evolução,
seção "Limite de ações"**.

> "O limite de ações serve para impedir que um personagem possa acumular ações
> principais/bônus **através de itens, poderes e afins** para desbalancear o
> sistema. Até o nível 5 só é permitida uma ação principal/bônus; a partir do
> nível 6 [...] uma segunda ação; a partir do nível 11 [...] três ações; no
> nível 20 [...] quatro ações."

Ou seja: o livro escreveu esse teto exatamente para conter o que a v0.32.0
automatizou. Ele estava dormindo num campo manual que ninguém preenchia.

**Duas ambiguidades, resolvidas com a mesa e não por dedução:**

1. **O teto conta o total de padrão + bônus somadas** — leitura literal do
   texto. Consequência conhecida e aceita: o Tutorial de Ficha diz que todo
   personagem começa com 1 padrão *e* 1 bônus, o que já dá 2, então do nível 1
   ao 5 a própria base fica acima do teto. A ficha não esconde isso.
2. **Os níveis são 6 / 11 / 20, como está escrito.** A versão anterior do
   `dadosSistema.lua` usava 10 em vez de 6, anotado como "a mesa usa na
   prática". Revertido para o texto do livro.

### Adicionado — a linha de teto no bloco de Ações

A ficha **soma tudo e avisa**, em vez de cortar (decisão da mesa). A nota do
bloco de Ações ganhou uma primeira linha:

> Teto de ações do nível 7: 2 por turno (padrão + bônus somadas). Você usa 3.

E, quando passa, com o aviso na frente e a explicação do que fazer:

> ⚠ Teto de ações do nível 7: 2 por turno (padrão + bônus somadas). Suas fontes
> dão 3 — o livro não deixa usar todas no mesmo turno.

O campo de **ajuste** ao lado de cada card continua funcionando, como sempre:
se o mestre quiser liberar acima do teto, é onde ele faz.

**Verificações novas:**

- bateria do teto por nível (1 até o 5, 2 do 6, 3 do 11, 4 no 20) — ela teria
  pego o 10 no lugar do 6;
- checagem de **campo NDB órfão**: todo `field=` precisa ser lido pelo script
  ou estar numa lista explícita de "campo só de texto". É a checagem que teria
  apontado `limiteAcoesPadrao` no dia em que ele parou de ser usado.

## v0.32.0 — o Prana que existia e não aparecia, o poder que nunca existiu, e as ações que ninguém somava

Primeiro lote da rodada de melhorias que os mestres pediram depois de ver a
ficha (21/08/2026). Este lote é só **correção do que estava errado**; voo,
nado, tamanho, durabilidade, desproclamar e a aba de Criaturas vêm nos lotes 2
e 3.

### Corrigido — vampira com Linhagem de Unaris só mostrava o Vitae

O Prana **sempre esteve certo**. `recalcularTudo()` calculava o valor, gravava
em `sheet.prana`, e então `cardVisivelCombate("Prana")` devolvia
`personagemEhBruxa() and sheet.ehVampiro ~= true` — ou seja, **ser vampiro
desligava o card**. O número existia e nunca chegava à tela.

Agora Vitae e Prana aparecem lado a lado. Mana e Aura seguem calculadas e
ocultas, porque o vampiro não gasta delas diretamente — e a nota de rodapé
ganhou um texto próprio para a combinação, que antes caía no texto de vampiro
puro dizendo que só havia Vitae.

O livro não descreve a combinação, mas autoriza a origem dela: a característica
[Hemocinese] dos Vampiros diz, literalmente, *"Este poder pode coexistir com o
poder 'Magia'"*.

**Verificação nova:** bateria `cardVisivelCombate`, com os quatro casos (mago,
bruxa, vampiro puro, vampira-bruxa) e as duas direções de cada card.

### Corrigido — Hemocinese não existia em lugar nenhum

Procurando a causa do item acima, a palavra "Hemocinese" não aparecia **uma
única vez** no `ficha.lfm`. Ela vivia só no `catalogoRacas.lua`, como texto de
característica. O livro promete o poder e nunca o coloca na lista de poderes.

E havia a armadilha de sempre: **duas raças com a mesma característica e
efeitos diferentes**.

- *Orcs*: "começando com **1 ponto** no mesmo e recebendo **upgrades
  automáticos nos níveis 5, 10, 15 e 20**; se você já tiver upado o poder, os
  pontos recebidos se convertem em pontos de poder comuns."
- *Vampiros*: "**substituindo um poder ativo** em sua ficha; este poder pode
  coexistir com o poder 'Magia'."

Indexar pelo nome da característica daria a escada automática do Orc ao Vampiro
também. Por isso `sincronizarHemocinese()` decide pela **raça** (principal ou
secundária do mestiço), e não pelo nome.

O poder entrou no catálogo como o 49º, com `inferido = true` e a progressão
copiada do molde dos outros "cinese" — **a progressão oficial ainda é pendência
do mestre**, e está marcada como tal no comentário.

Ganhou também card próprio na seção "FORA DOS KITS", ao lado de Magia, com o
pseudo-deus "Herança racial". Sem ele o poder era concedido e o jogador não
tinha onde vê-lo nem onde subir de nível.

Os pontos concedidos entram num campo separado (`hemocinesePontosGratis`) e não
no `poderPontosConcedidos` do mestre — senão o motor sobrescreveria o que ele
digitou a cada recálculo.

**Verificações novas:** bateria de 8 casos (Orc por nível, Vampiro sem escada,
mestiço com Orc na herança, o jogador que pagou por cima, a troca de raça que
devolve o concedido) e a checagem "todo poder do catálogo tem card na aba".

### Corrigido — ações e reações de poder e de classe nunca somavam

A ficha contava só os ganhos por nível (bônus no 10, reação no 15, padrão no
19). Estavam de fora:

- **Destreza sobrenatural** — nível 1 "+1 reação extra", nível 3 "+1 Ação Bônus
  por Turno", nível 5 "+1 Ação padrão por Turno". Permanentes e incondicionais:
  agora somam.
- **Mártir ○** — "Você ganha uma 'Ação de Reação' **na ficha**; a partir do
  nível 10 serão duas". Soma como **restrita**: o número grande do card conta
  só o que é sempre usável, e a restrição ("só para receber um dano que
  acertaria um aliado a até 15 m") aparece na linha de baixo. Lemos "nível 10"
  como nível do **personagem**, já que os pontos de classe do Mártir vão só até
  8 — marcado no comentário como leitura, não como texto literal.

Ficaram de fora do número, como aviso, o que depende de situação:

- **Mago de batalha ○○○○** — +1 padrão e +1 bônus em desvantagem numérica.
- **Combatente crítico ○○○** (Guerreiro, Atirador e Duelista) — +1 padrão após
  um crítico, gasta na hora.
- **Força sobrenatural** níveis 3 e 5 — "+1 Ação de Ataque Extra por Turno".
  Esse termo aparece duas vezes no livro inteiro e **nunca é definido**.
  Decisão da mesa: é **multiataque**, mais um golpe dentro da mesma ação de
  ataque. Por isso não virou card.

**A varredura encontrou uma fonte que a revisão manual não tinha visto:**
*Espadachim / Ninja ○○○ — "+1 ação de movimento extra, para se mover depois de
um ataque corpo a corpo"*. É a única fonte de ação de **movimento** do sistema
inteiro. Entrou como aviso, já que a ação de movimento não tem contador.

A nota de rodapé do bloco de ações passou a ter três camadas — restritas, o que
ainda vai destravar por nível, e as condicionais — com altura calculada, porque
deixou de ser uma linha só.

**Verificação nova:** a checagem varre os oito catálogos atrás de qualquer
frase que conceda ação ou reação e compara com uma lista de assinaturas
conhecidas. Uma fonte nova **falha o build** até alguém decidir o que fazer com
ela. Foi ela que achou o Ninja.

### Infraestrutura

As verificações de empacotamento e as baterias de teste não vinham no zip (elas
moram fora da pasta do plugin de propósito — usam `io`/`dofile`, que derrubam a
ficha se forem empacotados junto). Foram reescritas: 15 checagens de
empacotamento e 4 baterias de teste rodando com `lua5.3` puro.

Duas checagens ganharam correção de critério, porque davam falso positivo e
falso positivo treina a gente a ignorar o relatório:

- "evento chama função inexistente" lia `"Encantamentos (magia/forja)"` dentro
  de uma string como chamada de função. Passou a limpar literais antes de
  varrer.
- "vários `align=client` no mesmo pai" acusava as nove abas, que são
  legitimamente todas `client` com uma só visível. Passou a ignorar quem está
  `visible="false"`.

## v0.31.3 — traço como a mesa joga, e as mensagens com cara de Petrichor

### Revertido — os campos de valor atual e as barras do jogador
Saíram inteiros. Os mestres já fazem a contagem de vida e energia em outro
programa, então "atual / máximo" no card era uma segunda fonte de verdade para
o mesmo número — e duas fontes divergem, sempre. Os cards voltaram a mostrar só
o máximo calculado, como antes.

Ficaram de pé as duas coisas daquela rodada que não tinham a ver com isso: os
campos de ajuste do mestre (`pontosAtributoAjuste` e `periciasAjuste`), que
eram lidos pelo cálculo e não existiam na tela, e a verificação de campos NDB
órfãos que os encontrou.

### Traço de personalidade — a regra certa
Com a ficha **em criação**, o jogador troca o próprio traço à vontade: clica em
outro e ele entra no lugar. O que ele não faz é mudar a **quantidade** —
acrescentar um segundo ou ficar sem nenhum é do mestre, porque traço novo vem
de narrativa.

Finalizada a ficha, nada disso: só o mestre. E destravar a ficha devolve o
direito, porque a marca do estado é o próprio `fichaFinalizada` — sem marcador
irreversível, que a v0.31.2 tinha introduzido por engano.

As recusas ensinam o caminho em vez de só barrar: quem clica no traço que já
tem lê "Remover um traço é do MESTRE. Para TROCAR, clique direto no traço que
você quer".

### Mensagens de mesa
Todas passaram a nascer de um vocabulário único, `anuncio(chave, título,
corpo)`, com emblema por assunto: 🎭 traço · 🕯️ favor · ⚖️ troca · 👑
proclamação · ✨ bênção · 🩸 mácula · 🔒 lacre · 🔓 rompido · 🛡️ mestre ·
📖 background.

A proclamação ganhou anúncio próprio, já que é o topo da hierarquia e não uma
troca comum. O texto foi reescrito para falar do personagem, e não do clique:
"Erundil deixou de ser Casto e agora é Lascivo", no lugar de "Fulano removeu X
e concedeu Y".

O separador entre título e corpo é uma constante única (`SEP`). Não está medido
se o chat desta instalação quebra linha, então trocar o separador por uma
quebra é mudar **uma linha** — e as 17 mensagens mudam juntas.

### Verificação nova — o arquivo tem de fechar em `</form>`
Um script meu despejou dez parênteses **depois** do `</form>`. Como estavam
fora do CDATA, o Lua compilou sem reclamar e só o parser de XML acusou. A
checagem agora confere o fim do arquivo direto.

## v0.31.2 — a trava do traço é irreversível

### Corrigido — a trava do traço fechava e reabria junto com a ficha
A v0.31.1 amarrou o traço de personalidade ao estado atual da ficha. Errado:
quando o mestre destravava a ficha para corrigir outra coisa, o jogador voltava
a poder mexer no traço.

A regra da mesa é outra. Enquanto a ficha **nunca** foi finalizada, o jogador
escolhe e troca o próprio traço à vontade — é criação de personagem. O primeiro
clique em "ficha finalizada" fecha isso **de vez**: dali em diante traço só muda
por narrativa, com o mestre, mesmo que a ficha volte para o modo criação.

Isso pediu um marcador que só anda para frente, `jaFoiFinalizada`, separado do
`fichaFinalizada` que é liga-desliga. É o primeiro estado da ficha que registra
"aconteceu uma vez" em vez de "está assim agora".

### Migração — fichas finalizadas antes desta versão
Elas não têm o marcador. Sem tratar isso, bastava o mestre destravar uma ficha
antiga para a trava reabrir sozinha. Ao abrir a ficha, toda ficha finalizada
recebe o marcador.

### Na criação, o jogador carrega um traço
Ele troca clicando no traço atual. Um segundo traço continua vindo do mestre,
porque traço novo é narrativa. A recusa diz as duas coisas: como trocar, e a
quem pedir para acumular.

### Verificação
Bateria com nove cenários. O que importa mais são dois: **a ficha reaberta pelo
mestre não devolve o traço ao jogador**, e a **ficha antiga migrada** também
não. Os dois casos passam pelo `alternarFichaFinalizada` de verdade, e não por
um campo montado à mão.

## v0.31.1 — o jogador escolhe o próprio traço inicial

### Corrigido — a trava do traço de personalidade estava larga demais
A ficha exigia o mestre para **qualquer** mexida em traço, inclusive a primeira
escolha. Errado: na criação o jogador escolhe o seu traço inicial sozinho.

A regra agora é: o jogador age quando as três coisas valem ao mesmo tempo —
ficha não finalizada, nenhum traço ainda, e a ação é **escolher**. Trocar,
remover ou acrescentar um segundo continua sendo do mestre, porque traço novo
vem de narrativa.

Cada recusa diz o motivo e quem libera, em vez de um "não permitido" seco:

- já escolheu aquele traço → "Trocar ou remover exige o MESTRE"
- já tem um traço → "Novos traços vêm da narrativa, com o MESTRE"
- ficha finalizada → "Só o MESTRE altera traços de personalidade"

O popup **abre sempre** e agora diz de saída o que aquele usuário pode fazer,
para o jogador não descobrir a trava clicando. O rótulo da aba só convida a
clicar ("Clique para escolher") para quem de fato pode.

Bateria nova com sete cenários cobrindo jogador e mestre, ficha em criação e
finalizada, e o caso do traço escolhido na criação sobrevivendo à finalização
sem poder ser removido depois.

## v0.31.0 — lições do Night City Noir aplicadas

### Corrigido — a formatação do chat estava saindo literal na tela
As mensagens usavam `[§K #C9A24B]TÍTULO[§K]`. Medições feitas no projeto Night
City Noir mostram que **nada disso existe**: `[§K]` sai literal, e
`[§K #RRGGBB]` pintava por acidente, porque o parser aceita a tag e cai numa
cor qualquer. A sintaxe real é `[§K<índice>]`, com índice numérico, e **não há
fechamento — o que existe é repintar**.

Em vez de trocar por índices de paleta que eu não medi nesta instalação, a cor
passou a viajar pelo **`defaultTextStyle`** do `talemarkOptions`, que a ficha já
usava e que aceita hexadecimal. O destaque dentro da frase virou CommonMark
(`**texto**`), que já estava habilitado.

As 15 mensagens foram convertidas e nenhuma tag `[§` sobrou.

### Adicionado — valor ATUAL dos recursos
A ficha calculava só os máximos. Em sessão o jogador tomava dano e não tinha
onde marcar.

Cada card de recurso ganhou **"atual / máximo"** com botões de − e +. É ação de
**jogo**: continua livre com a ficha finalizada. O valor nunca passa do máximo
nem fica negativo, e um recurso recém-ganho (o mago que pega Coração de Mana)
nasce cheio, não vazio.

### Adicionado — barras de status do jogador
Vida na barra 1, a energia principal do personagem na 2 (Aura, Mana, Prana ou
Vitae, conforme o caso) e Inspiração na 3. A linha editável mostra nome, raça e
classe.

São requisições assíncronas que não retornam sucesso, então a ficha guarda o
último valor enviado e **só manda o que mudou** — sem isso cada recálculo viraria
tráfego. Exige conta Gold Plus; quando não dá, a ficha não quebra: diz o motivo
e o botão continua desligado.

### Corrigido — dois campos de ajuste do mestre não existiam na tela
`pontosAtributoAjuste` e `periciasAjuste` eram lidos pelo cálculo mas não tinham
campo nenhum na interface — a válvula de escape existia no código e não na
ficha. Agora estão na aba de Atributos & Perícias.

### Verificações novas
- **Campos NDB órfãos**: o NDB só materializa campo preenchido, então
  `sheet.inspiracao` (nome errado) lê nil sem erro nenhum. A checagem exige que
  todo campo lido seja declarado no XML ou escrito pelo script. **Ela pegou, na
  estreia, um erro que eu tinha acabado de introduzir** na barra de Inspiração.
- **Forma das tags de TaleMark**: reprova qualquer `[§` que não seja
  exatamente `[§K<n>]` com n de 0 a 31. A checagem antiga media a simetria do
  que eu escrevia, não o que o jogador via.
- **Saída real das mensagens**: uma bateria monta as mensagens de verdade e
  inspeciona o texto final, em vez de conferir o código-fonte.

### Infraestrutura de teste
O ambiente passou a carregar o bloco `<script>` **inteiro**, e não um recorte.
Recorte separa escopos: uma `local` declarada no topo da ficha não existia no
pedaço de baixo, e testes falhavam por um motivo que não existia na ficha real.

## v0.30.1 — correção: a ficha não abria

### Corrigido — `partirTexto` era usada antes de existir
`lerTracos` ficou na linha 524 e chamava `partirTexto`, que só era declarada na
linha 3053. Como é uma `local`, em Lua ela não existe antes dessa linha — o
arquivo compila normalmente e o erro só aparece quando o jogador abre a ficha.

A função foi para o topo do arquivo, junto dos outros utilitários, com um
comentário explicando por que precisa ficar ali.

### Duas verificações novas no build
Esta é a **quarta vez** que essa armadilha aparece no projeto — antes com
`dataHoraTexto`, `ATRIBUTOS_DA_FICHA` e `SLOTS_EQUIPADOS`. Agora o
empacotamento acusa:

1. **`local` usada antes da declaração** — varre o bloco de script comparando a
   linha de uso com a de declaração.
2. **O bloco `<script>` inteiro é compilado**, e não um recorte a partir de
   "PODERES" como eu vinha fazendo. Um `end` sobrando ou faltando fora do
   trecho recortado passava batido — foi exatamente o que aconteceu ao mover a
   função, e a checagem nova pegou na hora.

## v0.30.0 — múltiplos traços de personalidade

### Adicionado — o personagem pode acumular traços
A narrativa pode conceder um traço novo ou tirar um existente, e a ficha
guardava só um valor. Agora guarda uma **lista**.

No popup, clicar num traço concede; clicar de novo remove. O campo no Perfil
passa a mostrar todos, separados por ponto.

**Só o mestre altera**, já que é ganho de narrativa oficial — e toda concessão
ou remoção é publicada no chat.

### Opostos: aviso, não bloqueio
Em regra não se tem Lascivo e Casto ao mesmo tempo, mas quem maneja isso é o
mestre. A ficha aceita os dois e avisa — "em regra não se tem os dois, confira"
— marcando o par com **(!)** no campo do Perfil.

### Compatibilidade
O campo é o mesmo de antes (`tracoPersonalidade`), agora com os nomes separados
por `;`. Fichas com um traço só continuam valendo: viram uma lista de um item,
sem nenhuma migração.

## v0.29.1 — ajuste fino das travas

### Corrigido — o popup de habilidade não abria com a ficha finalizada
Era o erro mais atrapalhado: o popup guarda o dado, o alcance, a duração e o
efeito da habilidade, que o jogador precisa consultar em jogo — e a trava
impedia até de abrir.

Agora ele **abre sempre**; quem trava é o botão de salvar, com um aviso dentro
do próprio popup dizendo que dá para consultar mas não alterar.

### Travado — o que faltava
- **Perícias**: adicionar, remover (o "x" da linha) e limpar a lista.
- **Atributos**: o valor **base** de cada um dos sete fica somente leitura,
  em cinza. Os campos de **bônus** seguem livres, assim como o **ajuste
  manual** das perícias — os dois mudam em jogo, com item equipado, feitiço ou
  bênção temporária.
- **Classe e subclasse**: definir, mudar de nível e remover.

### Auditoria
Varri de novo todas as funções que gravam dados de criação — classe, raça,
perícia, poder, item, favor e qualidade. As únicas sem trava são as quatro
ações de jogo, de propósito: equipar, desequipar, mover na mochila e gastar
munição.

### Background maior
Cabeçalho e linha do link ficaram mais enxutos, e as margens da aba diminuíram.
Toda a altura que sobrou foi para a área de escrita.

## v0.29.0 — texto formatado no Background e revisão das travas

### Adicionado — formatação e imagens no Background
O campo passou de `textEditor` para **`richEdit`**, que traz a barra de
formatação do próprio Firecast: negrito, itálico, tamanho, cor, alinhamento,
listas e imagens coladas. O `textEditor` só guardava texto puro.

O contador de caracteres saiu junto — o `richEdit` guarda texto formatado e não
dispara o evento que alimentava a contagem. No lugar, uma linha discreta
lembra que a formatação aparece ao selecionar o texto.

### Corrigido — a trava de "ficha finalizada" não alcançava as abas novas
Auditei as 18 funções que gravam dados. Nove não checavam a trava — todas nas
abas construídas depois que ela foi criada.

A revisão também separou **o que é criação do que é jogo**:

**Travado** (só o mestre libera): adicionar e remover item, editar os atributos
de um item, aplicar encantamento, escolher atributo ou perícia do item,
escolher a defesa do escudo psíquico, o atributo favorecido pela raça e a
defesa mental do Drow.

**Livre mesmo com a ficha finalizada**: equipar e desequipar, mover para
mochila ou baú, e gastar ou repor munição. Travar isso obrigaria a chamar o
mestre a cada troca de arma no meio do combate.

### Limpeza
Removidas três referências a widgets que não existem mais desde que a aba de
Combate foi refeita. Estavam protegidas por `~= nil` e não quebravam nada, mas
eram código morto.

## v0.28.1 — Background como campo livre

### Alterado — sem roteiro de perguntas nem validação de tamanho
As histórias da mesa já estão escritas, então a ficha não tem o que cobrar. Os
sete campos, o contador de perguntas respondidas e a barra de progresso saíram.

A aba virou **um campo único ocupando toda a altura**, para história e
anotações de sessão no mesmo lugar. Um contador discreto de caracteres fica no
canto superior, apenas informativo.

Aparência e Personalidade voltaram a existir só na aba de Perfil, onde já
estavam — não fazia sentido duplicar.

### Preservado
O **campo de link** continua, com o botão que o publica no chat para o mestre
abrir. Espaços em volta do endereço são descartados.

O texto de quem já usava o campo `background` segue intacto: é o mesmo campo.

## v0.28.0 — aba Background e reordenação das abas

**A ficha está com as nove abas construídas.**

### Alterado — Inventário passou para a posição 7
Inventário e Favores trocaram de lugar, e o Inventário vem logo depois de
Cálculos & Combate. Só a tabela de abas mudou: os painéis já eram
desacoplados da ordem, então nada mais precisou ser mexido.

### Background — as sete perguntas como estrutura
O livro é categórico: a história vai de 5.000 a 20.000 caracteres e precisa
responder sete perguntas, e "não serão toleradas histórias que não respondam
essas questões".

Por isso a aba não é uma caixa de texto solta. Cada pergunta tem seu campo,
com o enunciado do livro acima e a contagem de caracteres ao lado. Uma barra
lateral fica verde quando a resposta passa de 80 caracteres — abaixo disso não
conta como respondida.

No topo: o total de caracteres, quantas das sete estão respondidas e uma barra
de progresso rumo ao mínimo. A cor muda conforme o estado, e uma linha diz
exatamente o que falta: quais perguntas estão em branco, quantos caracteres
faltam para o mínimo, ou quantos passaram do máximo.

Há também **campo de link**, já que o livro permite entregar por Google Docs,
e um botão que publica no chat um resumo com tamanho e perguntas respondidas —
útil na hora da revisão do mestre.

**Aparência** e **Personalidade** ganharam espaço próprio aqui, usando os
mesmos campos da aba de Perfil: escrever num lugar reflete no outro.

### Preservado
Quem já tinha texto no campo `background` da aba antiga não perde nada — ele
virou a seção "Outros trechos" e continua contando no total.

### Detalhe técnico
A contagem desconta os bytes de continuação UTF-8: `#texto` conta bytes, e uma
história em português tem centenas de acentos. Sem isso o contador acusaria uns
10% a mais de caracteres do que o jogador realmente escreveu.

## v0.27.6 — preços das granadas e textos capitalizados

### Corrigido — a Granada tinha o preço dentro da qualidade
Ela é o único consumível que usa o formato `[Comum - 5 Lunaris]`, e o extrator
de consumíveis tratava tudo entre colchetes como qualidade. Por isso aparecia
"Comum - 5 Lunaris" na coluna da direita e o preço saía vazio.

Ao separar os dois, apareceu um problema maior: **73 itens estavam sem preço**.
Os 72 pergaminhos têm tabela própria no livro (Rank D = 25 Lunaris,
Rank C = 1 Aureu), e o Elixir da Ira usa "Mediano" onde as outras poções usam
"Mediana". Todos os 214 itens estão precificados agora, e o build acusa se
algum ficar sem.

### Corrigido — textos começando em minúscula
O livro escreve os efeitos em minúscula ("ao ser consumido restaura...").
Foram capitalizados 143 textos no catálogo, e a ficha passou a capitalizar
também o que monta em tempo de execução — descrições de item, resumos e as
linhas do detalhe.

A função trata acentuadas corretamente ("água" vira "Água"), já que em UTF-8
elas ocupam dois bytes e `upper()` sozinho não as alcança.

## v0.27.5 — texto dos efeitos aparece por inteiro

### Corrigido — efeitos longos eram cortados com reticências
O campo de efeito era uma linha de 26px com `wordWrap="false"`, e **todos os
150 consumíveis** têm texto que passa disso — 113 passam de 100 caracteres e o
maior, a Granada de Artífice, tem 1118.

O efeito virou um **bloco**: rótulo em cima, texto ocupando a largura inteira
com quebra de linha, e altura calculada pelo tamanho do conteúdo. O mesmo para
a receita de forja e para a linha de defesas, que também podia passar de uma
linha.

O painel de detalhe passou a ter altura variável — a soma das linhas visíveis —
em vez de 420px fixos. Assim o scroll funciona de verdade e nenhum texto fica
escondido.

### Detalhe técnico
A altura é acumulada **enquanto** os campos são preenchidos, e não relendo
`.height` depois: logo após gravar, o layout ainda não redesenhou e a
propriedade devolve o valor antigo.

### Teste
Percorre os 214 itens do catálogo e confere que a altura reservada cobre o
texto de cada um. Nenhum é cortado: o maior ocupa 16 linhas, e o teto é 24.

## v0.27.4 — correção: nome de tag duplicado impedia a compilação

### Corrigido — "Tratar doença" aparecia duas vezes
No livro, o item seguinte tem a seta `→` sozinha numa linha e o nome
("Tratar ferimentos") só na linha de baixo. O extrator não reconhecia esse
formato, mantinha o nome anterior e gerava **dois "Tratar doença"** com as
mesmas qualidades.

Como o nome do widget vem de nome + qualidade, saíam duas tags
`itmL_TratardoencaRankD` — e o Firecast exige nome único no arquivo.

A correção recuperou também o **"Tratar ferimentos"**, que estava sendo
perdido: são 65 consumíveis distintos, não 64.

### Verificação nova no build
Duas checagens que teriam pego isso antes do `rdk`:

- o gerador do catálogo agora falha se dois itens tiverem o mesmo par
  nome + qualidade;
- o empacotamento acusa **qualquer tag com nome repetido** no `ficha.lfm`,
  ignorando os atributos `name` dos `<event>`, que nomeiam o evento e não a
  tag.

## v0.27.3 — consumíveis completos e interpretações corrigidas

### Corrigido — só 4 dos 150 consumíveis estavam no catálogo
A seção de Consumíveis usa um formato **diferente** do resto do livro: nome,
depois qualidade e efeito em linhas separadas, com o preço numa tabela à parte.
O extrator só entendia `[Qualidade - Preço]`, então os únicos que passavam eram
os Tônicos, por coincidência de formato.

Com um extrator próprio entraram **64 consumíveis distintos, em 150 variantes**:
alimentação, poções de Cura/Aura/Mana, ungentos, antídotos, elixires, tônicos,
as dez bombas elementais, granadas e os pergaminhos (imbuir elementos,
metamorfose, falar com animais…). Cada um com o efeito descrito, e as poções de
cura com o dado e a fórmula separados.

O catálogo passou de 68 para **214 itens**.

### Corrigido — REGRA: alcance da arma ≠ alcance extra da munição
Os Virotes davam "+2m de alcance", e o extrator lia como se fossem uma arma de
2 metros. São **metros somados ao alcance de quem atira**. Os dois valores
agora são campos distintos, e o detalhe do catálogo escreve
"+4 metros ao alcance da arma".

### Corrigido — REGRA: nem toda armadura deixa escolher as defesas
**Cinto do Gladiador** e **Colar do Resiliente** nomeiam quais duas defesas
recebem o bônus — as duas físicas e as duas mentais, respectivamente. A ficha
dizia "à sua escolha" para os dois.

Agora o catálogo distingue: quando as defesas são nomeadas, o texto diz
"distribuído entre Defesa Telepática e Defesa Empática — apenas essas duas";
quando é livre (as armaduras), continua dizendo à sua escolha.

### Melhorado — o detalhe do catálogo mostra tudo
Entraram as linhas de espaços de mochila, visão no escuro, capacidade, dano em
área, efeito e receita de forja. Antes vários acessórios apareciam sem nenhum
efeito visível no catálogo, embora funcionassem depois de adicionados.

## v0.27.2 — efeitos recuperados, seletores e editor redesenhado

### Corrigido — a extração descartava vários efeitos
Escrevi uma verificação que lista os trechos do livro que o extrator **não
reconhece**, e ela apontou dezoito padrões sendo jogados fora. Recuperados:

- **espaços de mochila** — Mochila do Peregrino dá +2 (Comum) e +4 (Ótima);
- **deslocamento positivo** — Botas de Corrida, +2 e +4 metros (o extrator só
  entendia o valor negativo das armaduras);
- **visão no escuro** — Óculos do Espião, +12m e +14m;
- **capacidade de munição** — Aljava, Cinto do Atirador e afins;
- **dano em área** dos tônicos;
- **bônus entre defesas ou perícias nomeadas** — Cinto do Gladiador, Colar do
  Resiliente, Caneta do Acadêmico, Jóia do Socialite;
- **receitas de forja** ("1x Aço e 1x Pólvora; Criação meta 16").

O que a ficha aplica sozinha entrou como campo. O que depende de escolha vira
texto na descrição do item, orientando: *"Distribua +2 entre Defesa Física -
Aparar e Defesa Física - Esquiva nos campos de defesa acima."*

### Adicionado — atributo e perícia agora são escolhidos, não digitados
Os dois campos abriam margem para erro de grafia, e nome errado significa
automação silenciosamente quebrada. Viraram seletores: o de atributo lista os
sete, o de perícia lista as 64 do catálogo agrupadas por atributo. Ambos têm a
opção de deixar vazio.

### Editor redesenhado
As alturas eram calculadas no olho e o grupo de encantamentos ficava espremido.
Agora cada linha de campos tem altura fixa e a altura do grupo é derivada dela,
com rótulo de 14px e caixa de 28px em todos.

Campos novos: **espaços de mochila**, **visão no escuro** e **munições** —
todos editáveis também em item livre.

### Alterado — criar item do zero
O campo de texto ao lado do botão saiu. O botão **CRIAR ITEM DO ZERO** cria um
item em branco e já abre o editor, onde o nome é definido junto com o resto.

## v0.27.1 — campos do editor e botões da linha

### Corrigido — campos do editor espremidos
Os grupos tinham 56px de altura, e ali precisam caber o título da seção (16),
o rótulo do campo (15) e a caixa de texto — sobrava quase nada, e o campo
virava uma linha fina. Só o grupo de Defesas, que já tinha 84, aparecia
corretamente.

Todos os grupos foram para 80px (Defesas 88, Encantamentos 128), e as alturas
usadas pelo código ao mostrar e ocultar passaram a bater com as do XML.

O grupo de Identidade também não estava na lista de grupos visíveis, e
aparecia por acidente — agora é sempre mostrado, de propósito.

### Corrigido — botões da linha do item espremidos e fora de ordem
Estavam em duas linhas, com o "x" na frente. Agora vão todos numa linha só,
dentro de um container com filhos `align="left"` — o mesmo padrão que resolveu
isso nas perícias e qualidades — na ordem:

    −  +  EDITAR  EQUIPAR  MOCHILA  BAÚ  x

com o **"x" por último, à direita de tudo**, como no resto da ficha.

### Melhorado — slots de encantamento
O campo já era editável, mas o rótulo dizia apenas "SLOTS". Passou a
"SLOTS MÁXIMOS", com a dica explicando que o número normalmente vem da
qualidade e do material, mas um item especial pode portar mais — e que dá para
aumentar à vontade.

## v0.27.0 — itens editáveis e encantamentos

### Mudança de modelo: cada item guarda os próprios valores
Antes o item era só uma referência ao catálogo, e a ficha lia os efeitos de
lá. Agora os valores são **copiados uma vez** ao adicionar, e dali em diante o
item vive por conta própria.

É o que permite uma armadura forjada, encantada ou danificada divergir do
modelo do livro — e é o que faz a edição valer imediatamente: os cálculos leem
o que está gravado no item, não o catálogo.

A serialização passou a ser por chave e valor, porque a lista de campos cresce
(material, durabilidade atual, encantamentos) e o formato por posição quebraria
a cada campo novo.

### Editor completo de item
Clicar no nome do item, no botão EDITAR ou num slot equipado abre um popup com
tudo que um item pode ter, agrupado por função:

**Identidade** (nome, qualidade, material) · **Durabilidade** (atual e máxima) ·
**Requisito** (atributo e valor mínimo) · **Dano e alcance** ·
**Bônus de defesa** (os quatro, separados) · **Proteção e carga** (absorção,
deslocamento, espaços extras) · **Bônus de perícia** · **Quantidade** ·
**Encantamentos** · **Descrição**.

Os grupos aparecem conforme a categoria: consumível não mostra campo de defesa,
armadura não mostra alcance. Item livre mostra todos.

Isso substituiu o seletor de "duas defesas" que existia antes — agora o jogador
escreve o valor direto na defesa que a armadura protege, o que também cobre
itens forjados fora do padrão.

### Encantamentos — 64 do livro
Catálogo próprio, separado por classe (I, II e III) com o preço fixo de loja.
Cinco deles têm efeito numérico que a ficha aplica sozinha: Incorporação
(+5% absorção), Incorporação melhorada (+10%), Incorporação Total (+15%),
Mente fortalecida (+2 telepática) e Contrabando (+3 espaços de mochila). Os
demais são narrativos e ficam registrados como texto no item.

O livro é claro que **só dá para encantar item que tenha slot**, e que ter slot
depende da qualidade e do material da forja — então o número de slots é um
campo editável, e a ficha recusa aplicar além dele.

### Catálogo em master-detail
Lista à esquerda, detalhe à direita com todos os campos do item: preço,
categoria, qualidade, material, durabilidade, dano, alcance, requisito,
defesas, absorção, deslocamento, bônus de perícia, munições e slots de
encantamento.

### Corrigido durante os testes
`SLOTS_EQUIPADOS` estava declarada depois das funções que a percorrem, e em Lua
uma local só existe a partir da linha em que aparece — nenhum item contava como
equipado. Movida para o topo do bloco.

## v0.26.1 — correção: o plugin não compilava

### Corrigido — um item do livro se chama literalmente "Mecânica", com aspas
O nome vinha do texto com as aspas incluídas, e ao gerar o `onClick` isso
fechava a string Lua no meio: `adicionarItemCatalogo(""Mecânica"","Ótima")`.
O `rdk i` acusava `')' expected near 'Mec'`.

Na verdade eram dois problemas somados:

1. **A extração pegou o nome errado.** Aquela linha era parte da descrição de
   outro item — um acessório cujo efeito é "+N distribuídos entre as perícias
   Ofícios, Forja, Alfaiataria ou Mecânica". O parser passou a exigir que o
   nome seja uma linha limpa: sem aspas, sem ponto-e-vírgula, sem conectivos.
   Com isso apareceu também um efeito que estava escapando: **bônus
   distribuível entre perícias**, das Jóias do Socialite e das Luvas do
   Operário.

2. **O gerador não escapava aspas.** Agora escapa em todas as strings, tanto no
   Lua quanto no XML, então um nome com aspas deixa de ser capaz de quebrar o
   arquivo.

### Verificação nova no build
O empacotamento agora **compila cada bloco CDATA como Lua**, um por um — são
1197 na ficha. Um `onClick` malformado passava por todas as checagens
anteriores (o XML era válido, o Lua do corpo principal era válido) e só
aparecia no `rdk`. Agora não passa mais.

## v0.26.0 — aba Inventário

A estrutura veio da própria ficha do livro: bolsa de moedas, oito slots de
equipado, mochila com capacidade e baú.

### Catálogo com 68 itens
Extraídos da seção "Equipamentos": armaduras, armas, escudos, projéteis,
acessórios e consumíveis, cada um em qualidade Comum e Ótima, com preço,
durabilidade, dado de dano, alcance, requisito de atributo, absorção,
penalidade de deslocamento e bônus de perícia.

Ao lado dele, o campo de **item livre** para o que não está no livro — entra na
ficha sem efeito automático, e por isso também sem travas.

### Equipar aplica tudo sozinho
- **Escudos** somam em Defesa - Aparar; **acessórios** somam na perícia que
  nomeiam; **armaduras** dão absorção e tiram deslocamento.
- **Armaduras que dizem "+N em duas defesas à escolha"** abrem um seletor: o
  jogador marca duas, e só essas recebem. A escolha fica gravada no item.
- **Requisito de atributo trava o equipar** — Armadura pesada com Força 2
  recusa e diz "Requer 4 de Força e você tem 2".
- Cada slot só aceita a categoria certa: armadura não vai na mão.
- **Só o que está equipado bonifica.** Guardar o escudo na mochila zera o
  bônus na hora.

### Mochila com a regra dos lotes
A capacidade é a que a aba de Combate já calculava, e a contagem segue o livro:
**cada lote de 2 consumíveis iguais ocupa 1 espaço**. Quatro lotes de flechas
ocupam 2, e um escudo ocupa 1 inteiro.

### Bolsa de moedas
Drams, Florins, Lunaris e Aureus em campos separados, sem conversão automática
— as taxas ficam no hint de cada campo.

### Baú
Cada item pode ser mandado para o baú, que não tem limite mas fica fora de
alcance durante a campanha.

## v0.25.1 — Proclamação, hierarquia divina e patamares legíveis

### Adicionado — PROCLAMAÇÃO
O livro chama de proclamação o evento em que o Aspecto Divino anuncia
publicamente o semideus como seu campeão ou profeta. Com 3 favores da **própria
divindade**, o mestre pode gastá-los nisso — e só dela: com outras divindades o
equivalente é a bênção, então o botão de bênção some no card do próprio
aspecto.

É definitivo e acontece uma vez. O feito ganha destaque próprio:

- **na aba de Favores**, uma faixa dourada com "PROCLAMADO POR [DIVINDADE]",
  a data e a nota de que poucos semideuses recebem o título em toda a vida;
- **no Perfil**, um selo "✦ PROCLAMADO" ao lado da divindade, que passa a ser
  escrita em ouro.

### Corrigido — REGRA: a troca de favores sobe UM degrau na hierarquia
A ficha oferecia primordiais para qualquer divindade. O correto é:

    Menor  ›  Grande  ›  Primordial  ›  a Mãe

O rótulo do botão muda conforme a divindade ("3 → 1 FAVOR DE UM GRANDE",
"3 → 1 FAVOR PRIMORDIAL", "3 → 1 FAVOR COM A MÃE"), e o seletor passa a mostrar
apenas as divindades do degrau certo.

**A Mãe Celestial** entrou como destino próprio: ela está acima dos primordiais
e não consta no catálogo de deuses. Como o destino é único, a troca é
imediata, sem seletor. Ela também é o topo — não há degrau acima dela.

### Corrigido — "Como funciona" ilegível
Estava espremido numa coluna lateral em corpo 10. Virou três cards em largura
cheia, um por patamar, com o bônus passivo em destaque e as trocas
disponíveis em corpo 11. No lugar dele, na faixa superior, entrou um card curto
mostrando a hierarquia divina — que agora importa para entender as trocas.

Os cards de patamar dividem a largura pelo mesmo mecanismo da aba de Combate,
já que percentual não existe no SDK.

## v0.25.0 — aba Favores Divinos

A aba merecia existir sozinha: além de contar favores por divindade, ela é a
origem das bênçãos que liberam kits de poder e uma fonte de pontos de poder.

### Contagem por divindade, com meios-pontos
Meio favor é o padrão; humanos (passiva "Favorecimento divino"), filhos e
legados recebem 1 inteiro. Os pips mostram seis metades até o teto, e os
valores aparecem como "1½" em vez de "1.5".

O teto de **3 é por divindade** — dá para ter 3 com Ditrys e 3 com Kaern ao
mesmo tempo.

### Só o mestre registra
"Somente é possível ganhar favores através de narrativas oficiais", então os
botões de conceder, retirar e trocar aparecem apenas para o mestre. O jogador
consulta. Toda concessão e retirada é publicada no chat.

Retirar também está previsto: o livro diz que a divindade pode tomar de volta
o que deu.

### As quatro trocas que mexem na ficha
- 2 favores → 1 ponto de poder
- 3 favores → 3 pontos de poder
- 3 favores → **bênção**, que libera o kit de poderes da divindade (conecta
  direto com a aba de Poderes)
- 3 favores → 1 favor com um deus primordial, escolhido num seletor próprio

As demais trocas do livro (milagre, auxílio narrativo, conversa com a
divindade, ressurreição) são resolvidas na mesa e aparecem como referência no
topo da aba, junto dos bônus sociais de cada patamar (+1, +3 e +5).

### Mácula divina
O defeito marca uma divindade que **nunca** concede favores. A ficha recusa a
concessão e sinaliza na linha da divindade.

### Testes
Meio e inteiro, teto por divindade sem afetar as outras, bloqueio do jogador,
os três patamares de bônus social, as quatro trocas com desconto correto,
recusa por saldo insuficiente, mácula bloqueando, retirada sem passar de zero
e round-trip da serialização.

## v0.24.2 — cards sempre expandidos

### Corrigido — a aba abria com os cards espremidos
O layout expandido era o certo; o comprimido era o bug.

Na primeira montagem as linhas ainda não têm largura — retornam 0 ou um valor
minúsculo — e a grade dividia esse número entre os cards, espremendo todos.
Só ao mexer numa qualidade ou raça o recálculo rodava de novo, agora com o
layout já desenhado, e os cards se abriam. Reiniciar o Firecast voltava ao
estado espremido.

A medição passou a tentar, em ordem, a linha, o **scrollBox** e o **painel da
aba**, ignorando qualquer valor abaixo de 320px por não ser confiável. Como
scrollBox e painel já existem na primeira passada, a largura correta aparece
desde a abertura.

A grade também passou a ser recalculada ao **abrir a aba** — que é quando o
layout ganha tamanho real — e ao final da inicialização da ficha.

### Testes
Cobrem os quatro caminhos de medição: linha disponível, queda para o
scrollBox, queda para o painel, e o fallback quando nada é mensurável. Mais o
caso que causava o defeito: linha reportando 12px enquanto o scrollBox reporta
1400 — o valor pequeno é ignorado.

## v0.24.1 — respiro no rótulo de ajuste e grade que aguenta tela pequena

### Corrigido — "AJUSTE" colado na borda do card
Os 15 rodapés de ajuste ganharam margem lateral, igual à do resto do card. Os
cards sem ajuste receberam a mesma margem no espaçador, para as alturas
continuarem batendo.

### Corrigido — em tela pequena a linha estourava
A grade tinha um mínimo de 150px por card. Com cinco cards isso exige 750px de
linha, e abaixo disso o último era empurrado para fora da área visível.

O mínimo caiu para 96px e a divisão passou a ser pura: os cards sempre somam
exatamente a largura disponível. Verificado de 1600px até 640px — em todas, a
linha de 5 cards e a de 4 barras cabem inteiras.

### Adicionado — corpo do número acompanha a largura
Em card estreito, um valor de três dígitos em corpo 27 não caberia. A fonte
passa a 24, 21 ou 18 conforme o card encolhe. É uma chamada protegida: se a
versão do SDK não expuser o ajuste de fonte, o layout segue funcionando com o
corpo padrão.

## v0.24.0 — redesenho da aba Cálculos & Combate

### Um único formato de card, repetido em toda a aba
Antes cada bloco tinha estrutura própria: larguras diferentes, alturas
diferentes, o campo de ajuste em posições distintas e o Prana mais alto que os
vizinhos. Agora os 18 cards da aba seguem exatamente o mesmo desenho:

    faixa de cor (3px) · rótulo · valor · a conta · campo de ajuste

O ajuste ocupa a mesma posição em todos, então os campos ficam alinhados na
horizontal ao longo da linha inteira. Cards sem ajuste (Corrida, Proficiência,
Carga) mantêm o espaço reservado, para não desalinhar a fileira.

A faixa colorida no topo dá a leitura imediata do que é cada coisa: vinho para
Vida, dourado para Aura e defesas físicas, azul-chuva para Mana, violeta para
Prana e Inspiração, musgo para as defesas mentais.

### Os cards agora preenchem a linha
Era a origem do vão à direita: as larguras eram fixas em 168px, então sobrava
espaço em tela larga e apertava em tela estreita. Agora cada linha divide o
espaço disponível entre os cards **visíveis**, com mínimo de 150px.

Isso resolve junto o caso das barras condicionais: personagem comum vê duas
barras ocupando metade da linha cada; o mago vê três de um terço; a bruxa,
quatro; o vampiro, duas. Sempre preenchendo.

O recálculo da grade roda no `onResize` do scrollBox, seguindo o mesmo padrão
que a aba de Qualidades já usava.

### Outros ajustes
- Seções com título menor e linha divisória mais discreta, para o olho ir aos
  números e não aos cabeçalhos.
- Bloco de composição reorganizado em quatro campos de largura igual.
- Seletor do Escudo psíquico com respiro maior.

## v0.23.2 — percentuais de volta à barra que nomeiam

### Revertido — a mudança da v0.22.3
Cada qualidade age na barra que ela nomeia, e não na barra derivada:

- **Aura expandida/reprimida** → incide na **Aura**, sempre, inclusive em
  bruxas;
- **Vigor expandido/reprimido** → incide na **Vida**, sempre, inclusive em
  vampiros.

O **Prana** continua sendo a soma pura de Mana + Aura — e como a Aura já vem
com o percentual aplicado, o efeito chega nele por consequência, sem ser
aplicado duas vezes. O **Vitae** não recebe percentual.

Com Aura expandida em 2 pontos, o Prana volta a dar **190** (era 209 na versão
anterior).

Além de corresponder ao texto do livro, isso simplifica o código: sumiram os
quatro caminhos condicionais que a versão anterior tinha introduzido.

### Testes
Reescritos para a regra correta: percentual agindo na barra nomeada, Prana
herdando o efeito através da Aura, Vitae ficando de fora, e os reprimidos
reduzindo apenas a barra que nomeiam.

## v0.23.1 — correção: a ficha não abria

### Corrigido — os scripts de teste quebravam o plugin
A v0.23.0 empacotou a varredura dentro da pasta do projeto, em `testes/`. O
Firecast carrega **todo `.lua` do pacote** como parte do plugin, e esses
scripts usam `dofile`, que não existe no ambiente do Firecast — resultado:
erro na abertura e a ficha não subia.

A pasta saiu do pacote. A varredura continua existindo, mas é entregue **em
arquivo separado**, para rodar fora do Firecast.

### Verificação nova no build
O empacotamento agora recusa qualquer `dofile`, `loadfile`, `io.open`,
`os.exit` ou `arg[` dentro do pacote, e acusa arquivos `.lua` na raiz que
nenhum `require` carrega. Era exatamente o que faltava para pegar esse erro
antes de você.

## v0.23.0 — varredura automática do catálogo

Ferramenta nova em `testes/`, que percorre **29 raças, 48 poderes, 36
subclasses (273 níveis) e todas as qualidades e defeitos**, aplicando cada um
numa ficha limpa e conferindo se a ficha entrega o que o catálogo promete.
Roda em segundos com `lua5.3 varre_tudo.lua`.

Ela confere: bônus racial de atributo aplicado, teto elevado valendo no nível
certo, poder de atributo chegando a +6 no nível 5, qualidade prometida por
poder sendo concedida, bônus de defesa somando, tier de toda concessão
existindo no catálogo, efeitos numéricos com o valor certo, e os efeitos
permanentes de subclasse.

### Corrigido — três tiers de qualidade concedidos errados
A varredura pegou concessões com tier fora do que o catálogo aceita:

| qualidade | custo real | concedia | agora |
|---|---|---|---|
| Beleza sobrenatural | 3 pontos | 1 | 3 |
| Genialidade | 3 pontos | 1 | 3 |
| Vontade de ferro | 2 pontos | 1 | 2 |

O tier não é decorativo: é ele que seleciona a faixa de efeito e o que aparece
no selo de pontos do item. A verificação de tier virou parte da varredura.

### Adicionado — os dois efeitos permanentes de subclasse
Das 36 subclasses, apenas dois efeitos são permanentes, numéricos e incidem
sobre campos calculados:

- **Espadachim/Samurai nível 4** — +3 nas defesas telepática e empática;
- **Duelista/Passos de vento nível 2** — deslocamento e corrida dobram (a
  conta na tela passa a exibir "dobrado").

Os outros 12 candidatos são bônus em testes específicos (forjar, atuar,
seduzir) ou condicionais, e continuam com o mestre.

### Verificado, sem alteração
- Os bônus de atributo das 18 raças que os concedem estão todos corretos.
- Os 7 poderes de atributo chegam a +6 no nível 5.
- As 4 qualidades com efeito percentual somam o valor certo em cada tier.
- As 7 raças sem deslocamento e dado de vida são todas **Primordiais**, que
  não têm características no livro — esperado, não é falha.
- Os 5 avisos de "%" em qualidades são percentuais de **preço de compra e
  venda** (Boa Reputação, Endividado…), não de cálculo. Corretamente fora.

## v0.22.3 — ordem dos percentuais em Prana e Vitae

### Corrigido — REGRA: o percentual entra no fim do cálculo
E a ordem muda o resultado, não é detalhe de escrita:

- **Bruxas** — Aura expandida/reprimida incide sobre o **Prana já somado**, e
  não sobre a Aura. Com +30%, um Prana que dava 190 passa a dar **209**: a
  diferença é de 19 pontos, porque o percentual passa a multiplicar também a
  Mana.
- **Vampiros** — Vigor expandido/reprimido incide sobre o **Vitae**, e não
  sobre a Vida. A Vida do vampiro fica com o valor cru.

Para quem não é bruxa nem vampiro, nada muda: o percentual continua entrando
na Aura e na Vida como antes.

### As contas na tela mostram a ordem
O Prana exibe "mana 65 + aura 96 = 161, +30%" e o Vitae mostra o percentual
aplicado ao lado da fórmula. Sem isso o número pareceria não fechar com as
parcelas.

### Testes
Cobrem os dois casos novos, os dois casos antigos (para garantir que não
mudaram) e o percentual negativo — Aura reprimida também passa a incidir sobre
o Prana somado.

## v0.22.2 — barras aparecem sozinhas, sem caixas de marcar

### Alterado — as três caixas de marcar saíram
Mana, Prana e Vitae passaram a ser detectados a partir do que já está na
ficha, sem ninguém precisar marcar nada:

- **Mana** — qualidade "Coração de mana" (ou Linhagem de Unaris, já que toda
  bruxa é maga);
- **Prana** — qualidade "Linhagem de Unaris";
- **Vitae** — raça Vampiros, ou a característica "Sede de sangue" herdada por
  um mestiço.

Os campos internos continuam existindo porque os cálculos leem deles; agora são
escritos pela detecção.

### Alterado — cada barra só aparece para quem a tem
Personagem comum vê apenas Vida e Aura. O mago ganha a Mana, a bruxa ganha o
Prana, e o vampiro ganha o Vitae — que **oculta Aura e Mana**, já que toma o
lugar das duas.

### Alterado — cores trocadas
Aura em dourado, Prana em violeta.

### Corrigido — uma chamada essencial havia se perdido
`recalcularTudo` não estava mais chamando `aplicarConcessoes`: a linha
adicionada na v0.20.3 sumiu em algum patch posterior, o que faria os bônus de
raça voltarem a só aparecer ao reabrir a ficha. Recuperada.

Para não acontecer de novo, o build agora confere se `recalcularTudo` chama as
seis rotinas de que depende (marcadores de energia, concessões, limites de
atributo, contadores de perícia, painel de qualidades e aba de combate).

## v0.22.1 — Prana como barra própria, e a Aura não zera mais

### Corrigido — REGRA: eu tinha confundido Coração de Mana com Linhagem de Unaris
São coisas distintas, e a ficha tratava as duas como se fossem a mesma:

- **Coração de Mana** — todo mago tem. Libera **Mana**. A Aura dele continua
  existindo e sendo calculada normalmente.
- **Linhagem de Unaris** — a bruxa. Ganha **Prana**, uma terceira barra que é
  a soma de Mana e Aura, e é dela que gasta.

A versão anterior somava Aura dentro do Mp e zerava a Aura, o que estava
errado nos dois casos: dava fusão a quem não é bruxa e apagava uma energia que
continua existindo.

### Adicionado — quinta barra: PONTOS DE PRANA
Aparece só para bruxas, mostrando a conta ("mana 65 + aura 64"). Mana e Aura
seguem calculadas e visíveis em separado.

Junto veio o marcador **"É Bruxa (libera Prana)"**, ao lado dos de Coração de
Mana e Vampiro. A ficha já detecta a qualidade sozinha; o marcador serve para
o mestre corrigir casos de borda.

### Corrigido — a Aura não zera mais para ninguém
Nem para bruxas, nem para vampiros. Todo ser vivo tem Aura; o que muda é de
qual barra a energia é gasta. As notas de rodapé passaram a dizer exatamente
isso em vez de sugerir que a barra some.

### Conferido — a fórmula da Mana estava certa
15 + base por idade + (Nível × 2). Para idade 18 e nível 7: 15 + 36 + 14 = 65.
O 68 que aparecia vinha da fusão indevida, não do cálculo. A conta na tela
agora mostra a idade usada, para conferência rápida.

## v0.22.0 — aba Cálculos & Combate reconstruída

A aba foi refeita do zero no padrão visual das outras. Nenhum número é
digitado ali: tudo vem das demais seções.

### Princípio do desenho — cada valor mostra a conta
Abaixo de cada número aparece de onde ele saiu: "15 + 10 + (Con 5÷2 × 7)",
"9 + Força 5 + prof 3", "2 + For 5 + rank 2". Era a parte que mais podia
assustar, e é a mesma solução que funcionou nas perícias — o jogador confere
sem precisar abrir o livro.

### Quatro seções
**Recursos** — Vida, Aura, Mana e Vitae em cards grandes, cada um com seu
campo de ajuste. Abaixo, uma faixa com os valores que os compõem (dado de
vida, vida e aura acumuladas por nível, bônus de itens equipados).

**Defesas** — os quatro cards, cada um abrindo a conta e mostrando os bônus
que vêm de poderes, raça e escudo psíquico. Uma linha embaixo resume esses
extras.

**Movimento & Iniciativa** — deslocamento, corrida, iniciativa e proficiência.

**Ações, Inspiração & Carga** — as três ações separadas, os pontos de
inspiração e a capacidade da mochila. Uma nota diz o que ainda falta
destravar: "+1 ação bônus no 10 · +1 reação no 15 · +1 ação padrão no 19".

### Corrigido — campos calculados eram editáveis
Ações padrão, bônus e reação eram campos digitáveis. Como agora são
calculados, o recálculo sobrescreveria o que o jogador escrevesse. Viraram
valores calculados com campo de ajuste próprio, como o resto da ficha.

### Adicionado — Pontos de inspiração
Não existiam na ficha. Começam em 3, com teto de 3 e piso 0, ambos aplicados.

### Adicionado — seletor de defesa do Escudo psíquico
Aparece só quando o poder chega ao nível 3, e o título acompanha o valor
(+1 no nível 3, +2 no nível 5). Completa o conjunto de escolhas do mesmo tipo
já existentes na ficha.

### Preservado
Os marcadores de **Coração de Mana** e **Vampiro** viviam nesta aba e são a
única forma de destravar Mana e Vitae. Foram reintegrados junto aos recursos —
a validação do build acusou a ausência antes do empacotamento.

## v0.21.1 — Mente fechada: escolha entre as duas defesas mentais

### Corrigido — REGRA: a mesa tem DUAS defesas mentais
Eu tinha aplicado o +2 dos Drow ("Mente fechada") direto na Defesa telepática.
Telepática e Empática são ambas defesas mentais, e o jogador escolhe em qual o
bônus recai.

O seletor ficou no popup da raça, ao lado do de atributo favorecido, e só
aparece na raça que tem a característica. Enquanto nada é escolhido, o bônus
não entra — e trocar a escolha move o +2 de uma defesa para a outra.

### Nota
O mesmo padrão vale para o **Escudo psíquico** (+1 no nível 3, +2 no nível 5,
numa defesa à escolha). A lógica já está pronta e lendo o campo
`escudoPsiquicoDefesa`; falta apenas o seletor, que entra na aba de Combate.

## v0.21.0 — auditoria completa da documentação

Varredura do `.bib` inteiro (841 mil caracteres) cruzada com o que a ficha já
automatizava, procurando valores perdidos. Resultado abaixo, separado entre o
que foi corrigido agora e o que ficou pendente de decisão.

### Confirmado — as fórmulas existentes estão corretas
Hp, Mp, Ap, Pv, Deslocamento, Iniciativa, as quatro Defesas e Capacidade da
mochila foram conferidas uma a uma contra o texto do livro. Todas batem.
As quatro qualidades percentuais (Vigor/Aura expandido e reprimido) também já
estavam ligadas.

### Corrigido — bônus de perícia: eram 8 fontes, a ficha tinha 1
Só a dos Drow estava mapeada. Entraram: Elfos (Natureza e Sobrevivência),
Fadas (Natureza e Animais), Centauros (Arcos, Bestas e Natureza), Ursaris
(Intimidação e Subjugar), Goblins (Prestidigitação e Furtividade) e a
qualidade Vontade de ferro (+2 em Vontade, com vantagem a partir do nível 10).

**Armadilha encontrada:** "Conexão com a natureza" existe em Fadas e Centauros
com valores diferentes (+1/+2 contra +2/+4). As entradas ganharam filtro por
raça — sem isso, um Centauro receberia o bônus mais fraco.

### Adicionado — bônus de defesa que ninguém aplicava
- Os quatro poderes de atributo dão **+1 na defesa correspondente ao chegar
  ao nível 2** (Força→Aparar, Destreza→Esquiva, Carisma→Empática,
  Sabedoria→Telepática).
- **Escudo psíquico** dá +1 no nível 3 e +2 no nível 5, numa defesa à escolha.
- **Drow (Mente fechada)**: +2 na Defesa Mental, aplicada na Telepática.

### Adicionado — REGRA: Linhagem de Unaris funde Mana e Aura
O livro é explícito: *"os Pontos de mana e Pontos de aura serão fundidos em uma
coisa só dentro do MP, enquanto a Aura permanecerá sem valor"*. A Aura entra no
Mp e o campo de Aura zera.

### Adicionado — REGRA: vampiros usam Vitae no lugar de Aura/Mana
"Sede de sangue" faz habilidades e feitiços rolarem com Vitae. As duas barras
passam a zerar, para não sobrar energia que o personagem não usa.

### Adicionado — Corrida
O dobro do deslocamento, e o **triplo para Sátiros** ("Maratonista").

### Corrigido — ações eram um contador só, e são três progressões
O livro dá +1 ação **bônus** no nível 10, +1 **reação** no nível 15 e +1 ação
**padrão** no nível 19 — níveis diferentes para cada tipo. A ficha tinha um
campo único que não representava isso.

### Encontrado, ainda não implementado
- **Pontos de inspiração** — todo personagem começa com 3, máximo 3. Não existe
  na ficha; entra na aba de Combate.
- **Alcance de arremesso** — Destreza ×3 para arma apropriada, Destreza ÷2 para
  não-apropriada. Entra com o Inventário.
- **Escudos** dão +3 a +6 em Defesa - Aparar, e só valem equipados. Entra com o
  Inventário.
- **Passos de vento** (Duelista nível 2) dobra o deslocamento passivamente;
  fica para quando as subclasses tiverem efeitos permanentes ligados.
- Efeitos situacionais de subclasses e traços (32 e 21 ocorrências) ficam com o
  mestre: quase todos são condicionais ("sempre que", "quando estiver").

## v0.20.5 — blindagem e revisão antes da próxima aba

Sem mudanças de regra: passada de revisão rodando toda a bateria de testes
contra o código atual.

### Corrigido — duas funções podiam falhar em silêncio
`temCaracRacial` chamava `CatalogoRacas` sem verificar se o catálogo estava
carregado. Como o motor de concessões roda dentro de `pcall`, um erro ali era
engolido e **todas** as concessões falhavam sem aviso. Agora a função cai na
recordList se o catálogo não responder.

`escolherAtributoRacial` também passou a proteger as chamadas de recálculo e
de redesenho, pelo mesmo motivo.

### Testes revisados
A suíte tinha três arquivos testando modelos já substituídos (créditos antes
dos slots concedidos, e o ponto racial antes de ir para o bônus). Foram
atualizados ao comportamento atual — não eram regressões.

Um deles revelou um caso que vale registrar: com Sabedoria sobrenatural nível 3
mais o bônus racial, o campo de bônus acumula 4 (3 do poder + 1 da raça). As
duas fontes somam no mesmo campo sem se sobrescrever, e ao trocar de raça só o
+1 racial sai.

## v0.20.4 — os botões de atributo de fato, e bônus racial em tempo real

### Corrigido — os sete botões continuavam com `align="client"`
A correção da v0.20.3 não chegou ao arquivo: a substituição do bloco não pegou
e a minha própria verificação foi enganosa — contei os nomes dos botões, não o
alinhamento deles, e o resultado pareceu correto. Agora a troca foi feita
diretamente sobre cada botão e conferida contando `align="left"`: 7 de 7, e
nenhum `align="client"` restante.

### Corrigido — bônus racial só entrava depois de reabrir a ficha
`temCaracRacial` lia apenas a recordList de características, que é
reconstruída quando a aba de Raça desenha — e não no instante em que a raça
muda. Por isso o efeito só aparecia na reabertura.

A detecção passou a consultar primeiro o **catálogo da raça gravada em
`sheet.raca`**, que responde na hora. A recordList continua sendo consultada
depois, porque é ela que guarda as características **escolhidas** de um
mestiço, que não saem do catálogo de uma raça só. O caso do humano puro que
perde a característica exclusiva ao virar mestiço segue tratado.

Testado no cenário real: trocar de raça sem repopular a lista já move os
bônus na hora.

### Verificação nova no build
O empacotamento agora acusa layouts com mais de um filho direto
`align="client"` — a armadilha que sumiu com cinco dos sete botões, já que só
um elemento pode preencher o espaço restante.

## v0.20.3 — trocar de raça atualiza os bônus, e os sete botões voltam

### Corrigido — trocar de raça não trocava os bônus
`confirmarDefinirRaca` chamava o recálculo, mas nunca reavaliava as
concessões: os bônus da raça antiga ficavam na ficha e os da nova não
entravam. Trocar de Humano para Anão mantinha o +1 escolhido e não dava o
+2 de Constituição.

A reavaliação passou a rodar dentro do próprio `recalcularTudo`, antes dos
cálculos — assim qualquer caminho que mexa na ficha (trocar raça, subir de
nível, comprar poder) mantém os bônus em dia.

Testado trocando de raça seis vezes seguidas: nenhum resíduo fica para trás.

### Corrigido — cinco dos sete botões de atributo sumiam
Eu tinha usado `align="client"` nos botões da mesma linha para eles se
adaptarem à largura. Só um elemento pode preencher o espaço restante, então os
outros eram engolidos — sobravam Inteligência e Manipulação, um por linha.

Voltaram a ter **largura fixa** (104px), em duas linhas de 4 e 3, o que cabe
mesmo com o popup reduzido a 94% de uma tela pequena. A armadilha ficou
anotada no XML.

## v0.20.2 — seletor de atributo só onde faz sentido

### Corrigido — o seletor aparecia em TODAS as raças
A checagem olhava se o personagem tinha a característica, e não qual raça
estava aberta no popup — então o bloco de escolha surgia até em Anões, que já
têm o atributo favorecido definido (+2 Constituição).

Agora ele só aparece na raça que de fato deixa **escolher** o atributo (hoje,
apenas os Humanos, via Versatilidade humana). Todas as outras já dizem qual
atributo recebe o bônus, e esse é o favorecido delas — não há o que escolher.

### Corrigido — o bônus não entrava ao escolher o atributo
Em fichas vindas de versões anteriores a concessão já constava como aplicada,
embora nada tivesse sido lançado; o motor via a chave marcada e pulava.
A chave passou a ser limpa **sempre** antes de reaplicar, e não só quando havia
escolha anterior.

### Corrigido — seletor cortado em telas menores
Sete botões de largura fixa não cabiam. Foram para duas linhas com largura
elástica, que se adapta ao espaço disponível.

### Melhorado — uma concessão com erro não derruba as demais
O motor tinha um único `pcall` em volta do laço inteiro, então uma falha no
meio abortava tudo o que viesse depois. Agora cada concessão é isolada.

## v0.20.1 — regra correta do limite de atributo e bônus raciais completos

### Corrigido — REGRA: o limite do nível vale para TODOS
A v0.20.0 somava 2 ao teto do atributo favorecido em qualquer nível, o que
estava errado. A regra é: **o limite do nível vale para todos os atributos,
sem exceção** — no nível 7 nenhum passa de 5, tenha bônus racial ou não.

A progressão chega a 8 exatamente no **nível 17** (confirmado na tabela do
livro), e só a partir daí o teto racial — 9 ou 10, conforme a raça — passa a
valer no atributo favorecido. O campo de bônus continua sem teto algum.

### Adicionado — todas as raças que bonificam atributo
Havia 17 características raciais que dão bônus de atributo e elevam o teto, e
só a dos Humanos estava automatizada. Todas foram extraídas do catálogo:

Vigorosos (+2 Constituição, teto 10) · Super força (+1 Força, 10) · Agilidade
élfica (+1 Destreza, 10) · Agilidade aprimorada (+1 Destreza, 10) ·
Graciosidade (+1 Destreza e Carisma, **teto 9**) · Fisiologia de guerra
(+1 Força e Destreza, **teto 9**) · Manipuladores e Manipuladoras
(+1 Manipulação, 10) · Carismáticos (+1 Carisma, 10).

O bônus vai para o campo "+", nunca para o valor base.

### Corrigido durante os testes — bônus aplicado várias vezes
"Super força" aparece em seis raças e "Vigorosos" em três, sempre com o mesmo
efeito. Como a ficha guarda a característica e não a raça, uma entrada por raça
fazia a Constituição ganhar +6 em vez de +2. A tabela foi deduplicada por
característica: 16 entradas viraram 9, e a validação do build passou a acusar
chaves de concessão repetidas.

### Corrigido — teto ficava preso ao trocar o atributo escolhido
Ao mudar a escolha da Versatilidade humana, o bônus saía do atributo antigo mas
o teto 10 continuava lá. Agora o teto volta a 8 junto com o bônus.

## v0.20.0 — atributo favorecido pela raça e limites aplicados

### Corrigido — o ponto racial ia para o bolso errado
A v0.19.4 somava o ponto da Versatilidade humana aos pontos de evolução, o que
fazia o total sair de 18. Agora ele vai direto para o campo de **bônus** do
atributo escolhido, e o bolso de evolução continua 18 no nível 7.

### Adicionado — seletor de atributo no popup da raça
Sete botões dentro do detalhe da raça, visíveis apenas quando ela concede
"+1 ponto de atributo à escolha". O atributo escolhido recebe o +1 de bônus e
passa a ter limite 10.

Trocar a escolha move o bônus de um atributo para o outro, e o valor que o
jogador já tinha digitado no campo é preservado: 3 vira 4 ao escolher, e volta
a 3 ao trocar.

### Adicionado — limites de atributo aplicados de verdade
O limite por nível existia na ficha, mas era apenas exibido. Agora o **valor
base** é cortado no teto:

- teto do nível — 4 no nível 1, subindo até 8 no 19;
- teto absoluto de 8, que vira **10 no atributo favorecido pela raça**.

O campo de **bônus não tem teto** — é justamente por ali que raças, poderes e
itens ultrapassam o limite, como definido pela mesa. Quando um valor é cortado,
o painel avisa quais atributos foram ajustados.

### Nota sobre o teto 10
O livro diz "limite de 10 ao invés de 8", mas o limite normal varia com o
nível. A ficha soma 2 ao teto do nível, com máximo de 10 — assim o favorecido
chega a 10 no nível 19 e mantém a proporção nos níveis anteriores (no nível 7,
7 em vez de 5). Se a mesa preferir outra leitura, é uma linha em
`limiteBaseDoAtributo`.

## v0.19.4 — resumo atualizando na hora e concessões dos Humanos

### Corrigido — o painel de resumo só mudava ao reabrir a ficha
A chamada de atualização tinha ido parar em `ativarAba` em vez do recálculo,
então o painel só se refazia ao trocar de aba. Agora ela vive dentro de
`atualizarContadoresPericias`, que é chamada pelo recálculo geral, pela troca
de aba e por cada perícia adicionada ou removida — mexer num atributo ou numa
perícia reflete na hora.

### Corrigido — duas características dos Humanos não eram contadas
- **[Multitarefas]** — 1 perícia adicional livre. Como não pertence a um
  atributo específico, abre vaga no total geral, e não no limite de um
  atributo.
- **[Versatilidade humana]** — 1 ponto adicional de atributo. Entra no
  **bolso de pontos**, não como bônus no valor de um atributo: são coisas
  diferentes, e tratá-lo como bônus daria o ponto sem cobrar a distribuição.

No cenário relatado (humano, nível 7, Sabedoria sobrenatural nível 3) o total
passa de 11 para 12 perícias — 10 por evolução, +1 de Multitarefas e +1 do
poder — e o saldo sai de −1 para 0. Os pontos de atributo vão de 18 para 19.

### Nota de regra ainda não automatizada
A Versatilidade humana também diz que **o atributo escolhido passa a ter
limite 10 em vez de 8**. Como o livro não define qual atributo (é escolha do
jogador), isso ficou fora da automação — o limite continua sendo o do nível.
Se a mesa quiser, dá para adicionar um seletor como o da escola de magia.

## v0.19.3 — tabela de atributos corrigida e coluna direita alinhada

### Corrigido — REGRA: faltava o ponto de atributo do nível 4
A tabela de ganhos por nível estava sem o nível 4, então no nível 7 a ficha
mostrava 17 pontos em vez de 18. Reextraí as quatro progressões do livro,
nível a nível, e conferi contra os valores que o mestre publicou para o
nível 7:

| item | ficha | esperado |
|------|-------|----------|
| pontos de atributo | 18 | 18 |
| pontos de poder | 17 | 17 |
| perícias | 10 | 10 |
| pontos de classe | 3 | 3 |
| proficiência | +3 | +3 |
| rank | D | D |

Atributos passam a totalizar 24 no nível 20 (era 23). As outras três tabelas
já estavam certas.

### Corrigido — campos desalinhados na coluna direita
Total, manual e "x" tinham alturas e margens diferentes, então as caixas não
fechavam na mesma linha. Os três blocos passaram a ter a mesma estrutura —
rótulo de 12px em cima, caixa embaixo, margens iguais — e o total ganhou o
rótulo "TOTAL" para nascer na mesma altura do "MANUAL". O "x" tem um rótulo
vazio pelo mesmo motivo.

Mesmo tratamento aplicado às linhas de habilidade (origem, custo, x) e de
qualidade/defeito (pontos, x).

## v0.19.2 — padronização da coluna direita e popup que vazava a tela

### Corrigido — popup de descrição de qualidade estourava em telas menores
Era o único popup da ficha aberto com `:show()` direto, sem passar pelo
`abrirPopupAjustado`, que limita a 760x600 ou 94% da tela — o que for menor.
Agora segue o mesmo caminho dos demais.

### Corrigido — botão "x" agora fica sempre por último, à direita de tudo
Passa a valer como padrão em perícias, qualidades, defeitos, habilidades e
poderes.

A ordem dos elementos alinhados à direita não era confiável: o primeiro
declarado acabava aparecendo mais à esquerda, e blocos de tipos diferentes
(`layout` e `rectangle`) se intercalavam de formas distintas. Em vez de
depender desse comportamento, cada linha agora tem **um único container à
direita com filhos `align="left"`** — assim a ordem na tela é exatamente a
ordem de declaração.

Ordem final por linha:
- **Perícia** — total, manual, x
- **Qualidade/Defeito** — pontos, x
- **Habilidade** — origem, custo, x
- **Poder** — pips, contador, +, − (o botão que remove por último)

### Corrigido — campos de perícia com tamanhos diferentes
O total (62px) e o manual (66px) ficaram ambos com **70px**, alinhados.

### Verificação nova no build
O empacotamento agora acusa qualquer popup aberto com `:show()` direto, no
`ficha.lfm` e nos templates — era o que teria evitado esse vazamento.

## v0.19.1 — Linhagem de Unaris: [Magia inata] e escola com vantagem

Ao reler o efeito da qualidade, ficou claro que ali há **duas coisas
distintas** que estavam sendo tratadas como uma só:

- **[Magia inata]** — +1 em testes de magia até o nível 10, +2 do 11 em
  diante. Vale em **todas** as cinco perícias mágicas, sem escolha nenhuma:
  Encantamentos (Carisma), Transmutação (Destreza), Evocação (Inteligência),
  Invocação (Manipulação) e Clarividência (Sabedoria).
- **Vantagem** — a qualidade também deixa escolher **uma** escola de magia
  para rolar os dados com vantagem.

### Adicionado — bônus automático nas cinco perícias mágicas
Quem tem a qualidade recebe o bônus assim que a perícia entra na ficha, sem
precisar configurar nada. A conta na linha mostra a origem ("Magia inata +2").
Perícias não mágicas não são afetadas.

### Adicionado — seletor de escola com vantagem no popup da qualidade
Dentro do detalhe da Linhagem de Unaris, cinco botões escolhem onde a
personagem rola com vantagem. A perícia escolhida ganha a marca **VANTAGEM** e
borda violeta na aba de Perícias. Vantagem não é número, então não entra na
soma — fica como marcação.

Enquanto a escolha não é feita, o painel da aba de Atributos & Perícias avisa,
deixando claro que o bônus numérico já está valendo e o que falta é só definir
a escola da vantagem.

### Testes
Bônus valendo nas cinco escolas sem depender de escolha, perícia não mágica
sem bônus, escala de +1 para +2 no nível 11, vantagem apenas na escolhida,
troca de escolha movendo a vantagem sem mexer no bônus, coexistência com o
bônus racial dos Drow, e conferência de que as cinco perícias existem no
catálogo com os atributos certos.

## v0.19.0 — painel de pontos e cálculo de rolagem das perícias

### Adicionado — painel no topo da aba de Atributos & Perícias
Mesmo formato dos painéis de Qualidades e Poderes, com as duas economias lado
a lado: TOTAL / GASTOS / SALDO / EXTRAS para atributos, e
TOTAL / ESCOLHIDAS / SALDO / EXTRAS para perícias.

Números extraídos do livro: **15 pontos de atributo** no nível 1, mais um nos
níveis 2, 6, 8, 11, 13, 15, 17 e 18 (23 no nível 20). **6 perícias iniciais**,
mais as dos níveis 3, 5 (+2), 7, 9, 12, 14, 16 e 18 (+2) — 16 no nível 20.

Dois detalhes que evitam cobrança indevida: GASTOS soma apenas os campos
**base** dos atributos, nunca os bônus de raça e poder (que aparecem em
EXTRAS); e perícias concedidas não ocupam vaga, aparecendo em EXTRAS junto com
as vagas abertas por poderes.

### Adicionado — total de rolagem em cada perícia
Cada linha mostra o valor grande à direita e a conta aberta embaixo:
**atributo + proficiência + extras + manual**.

A proficiência vem da tabela de níveis (+2 no início, +7 no nível 20). Os
extras são bônus que outras partes do sistema dão àquela perícia específica —
hoje a característica dos Drow em "Animais", que escala de +1 para +2 a partir
do nível 11, e a linha diz de onde veio.

### Adicionado — campo de ajuste manual por perícia
Um campo editável por linha, para o que não cabe em regra fixa: um feitiço que
aumenta Percepção por alguns turnos, um item, uma situação. Aceita valores
negativos. É a válvula de escape do cálculo automático.

### Ajustado
Linha de perícia passou de 64 para 76px para acomodar o total, a conta e o
campo manual. Perícias concedidas ganharam borda dourada (antes só as
aprovadas pelo mestre tinham destaque, em vinho).

### Testes
Pontos por nível nas duas economias, gastos ignorando bônus, perícia concedida
fora da contagem, vagas extras somando ao total, cálculo da rolagem, bônus
racial escalando no nível 11 e aplicando-se só à perícia citada, ajuste manual
positivo e negativo, e proficiência acompanhando o nível.

## v0.18.0 — slots concedidos com desconto embutido

Reescrita da economia de habilidades no modelo definido pela mesa: quando o
personagem ganha algo de graça, a ficha **cria o slot** já com o desconto
dentro. Quem cria pelo botão normal paga o preço cheio, sem regra especial.

### Corrigido — o desconto não acompanhava a evolução do rank
Um feitiço Rank D concedido vale **2 pontos**, não 1. Subir esse slot para
rank C (custo 3) agora sai por 1, e para rank B (custo 5) por 3. Antes o
desconto era fixo em 1 ponto e valia só na criação.

O crédito fica preso ao slot: `custoPago = custo do rank − crédito do slot`.

### Corrigido — créditos de poder e de subclasse se embaralhavam
Antes o desconto era procurado na hora de criar, então a primeira habilidade
criada pegava o crédito "errado" — a Rank E do poder e a Rank D da subclasse
disputavam entre si. Com um slot por concessão, cada crédito é independente e
não há mais disputa.

### Como funciona agora
A ficha materializa um slot para cada concessão:
- um Rank E por poder ativo (o poder Magia gera um slot de FEITIÇO, os demais
  geram habilidade);
- os feitiços da Especialista arcano (D/C/B/A/EX nos níveis 1, 5, 6, 7 e 8 da
  subclasse);
- as duas habilidades Rank EX dos níveis 15 e 20.

O slot nasce sem nome, com os valores da tabela já preenchidos e marcado em
ouro com "clique para dar um nome". Perder a fonte remove o slot se ele ainda
estiver vazio; se já foi preenchido, o conteúdo é preservado e apenas o
desconto acaba.

### Corrigido durante os testes — reconstrução perdia campos novos
A rotina que recria a lista (usada ao editar) copiava uma lista fixa de campos,
e `creditoEmbutido` não estava nela: o desconto sumia depois da primeira
edição. Os campos novos entraram na lista, e ficou um aviso no código para
quem adicionar outro campo no futuro. A validação do build agora compara os
campos usados no template com os copiados na reconstrução.

### Ajustado
O rodapé do construtor mostra a conta aberta ("5 − 2 = 3 pontos") e a linha da
habilidade exibe o desconto ao lado do custo ("3 pt (−2)").

## v0.17.0 — concessões automáticas entre abas

Antes desta versão, o jogador pagava do próprio bolso por coisas que o sistema
deveria dar de graça. Agora raças, poderes e qualidades aplicam sozinhos o que
concedem nas outras abas.

### Adicionado — motor declarativo de concessões
Cada regra é uma linha que descreve a FONTE (o que precisa estar na ficha) e o
EFEITO (o que ela entrega). A ficha compara as fontes ativas com o que já foi
aplicado e ajusta a diferença, então rodar duas vezes não duplica nada e
**perder a fonte desfaz o efeito**.

Doze concessões mapeadas:

**De raça** — Drow recebem a perícia Animais; Vampiros "Sedutores" recebem a
qualidade Beleza sobrenatural; Vampiros "Cabeça a prêmio" recebem o defeito
Segredo obscuro; Harpias recebem Intolerância.

**De poder** — Carisma sobrenatural dá Beleza sobrenatural; Constituição dá
Vigor expandido no tier 2; Inteligência dá Genialidade; Sabedoria dá Vontade
de ferro. Força, Manipulação, Inteligência (níveis 3 e 5) e Sabedoria (nível 3)
abrem vagas de perícia à escolha.

**De qualidade** — Beleza sobrenatural concede a perícia Sedução. Isso encadeia:
comprar Carisma sobrenatural traz a qualidade, que por sua vez traz a perícia.

### Adicionado — bônus de atributo dos poderes sobrenaturais
Os sete poderes de atributo lançam o bônus direto no segundo campo do atributo
(+1 por nível até o quarto, +2 no quinto, totalizando +6). A ficha guarda
quanto já lançou e soma apenas a diferença, então **o valor que o jogador já
tinha no campo nunca é sobrescrito**: 5 escrito à mão vira 6, e volta a 5 se o
poder for devolvido.

### REGRA — defeito concedido não rende PD
Confirmado com o mestre: defeito ganho de graça não dá pontos de defeito. Como
o ganho de PD já era a soma de `pontosPagos`, gravar 0 resolve — o defeito
entra na ficha e vale para efeitos (o tier é preservado), mas não engorda o
saldo de qualidades.

### Adicionado — marcação de origem
Qualidades, defeitos e perícias concedidos exibem "◆ GRÁTIS por [FONTE]" em
ouro, com borda dourada. Os itens cresceram para caber a linha (qualidade
46→58px, perícia 52→64px).

### Adicionado — vagas de perícia concedidas contam no limite
Perícias concedidas entram fora do limite do atributo, e as vagas "à escolha"
aumentam o teto. O contador passa a mostrar "3 / 5 (+1)" para deixar claro de
onde veio a folga.

### Testes
Aplicação, idempotência (rodar três vezes não duplica), bônus subindo com o
nível do poder, preservação do valor manual do jogador, perícia entrando fora
do limite, defeito sem PD com tier preservado, encadeamento
poder→qualidade→perícia, e reversão completa ao remover a raça ou devolver o
poder.

## v0.16.0 — economia de pontos correta e concessões de subclasse

### Corrigido — o saldo ignorava as habilidades
`saldoPontosPoder()` descontava apenas os poderes, então criar ou evoluir uma
habilidade não mexia no total. Poderes e habilidades saem do MESMO bolso e
agora os dois entram na conta. O campo GASTOS ganhou uma linha discreta
mostrando a divisão ("3 poderes · 5 habilidades").

### Corrigido — REGRA: o Rank E grátis é um DESCONTO, não só o rank E
A tabela de custo é cumulativa (rank D = 1 do rank E + 1 da evolução), então o
primeiro nível gratuito vale como **1 ponto de desconto em qualquer rank**, e
não apenas quando a habilidade é rank E:

| rank | cheio | com o crédito do poder |
|------|-------|------------------------|
| E    | 1     | 0                      |
| D    | 2     | 1                      |
| C    | 3     | 2                      |
| B    | 5     | 4                      |
| A    | 6     | 5                      |
| EX   | 7     | 6                      |

O crédito continua sendo um por poder ativo e some depois de usado.

### Adicionado — habilidades e feitiços concedidos por subclasse
Varri as árvores de todas as subclasses do catálogo atrás de concessões
gratuitas. A **Especialista arcano** (Arcanista) é a que entrega itens que
saem do bolso de pontos: feitiço rank D no nível 1 da subclasse, e ranks C, B,
A e EX nos níveis 5, 6, 7 e 8.

O gatilho é o nível da SUBCLASSE, não o do personagem. Ao criar um feitiço do
rank concedido, ele sai por 0 e a origem fica registrada no item, para o
crédito não ser usado duas vezes. O painel de habilidades avisa quais ranks
ainda estão disponíveis de graça.

As outras concessões do catálogo (ataque extra do Mestre das Lâminas, favor e
artefato do Sacerdote, Ascensão Divina) não gastam pontos e por isso ficaram
de fora. Para incluir uma subclasse nova no futuro basta acrescentar uma linha
na tabela `CONCESSOES_SUBCLASSE`.

### Adicionado — campo EXTRAS na carteira
Mostra quantos pontos o **sistema** concedeu sozinho: concessões de subclasse,
EX dos níveis 15 e 20, o desconto do Rank E de cada poder e o ponto de skill do
nível 19. É calculado e não editável — diferente de CONCEDIDOS, que o mestre
preenche à mão por narrativa.

## v0.15.3 — edição atualiza na hora, e tags empilháveis

### Corrigido — editar habilidade só aparecia depois de reabrir a ficha
O `onNodeReady` do template roda apenas quando o item é CRIADO. Ao editar, os
campos calculados por script (rank, resumo, tags, custo, selo de origem) não
eram reprocessados — só o nome mudava, porque usa `field=` e tem binding
próprio.

Correção: ao salvar uma edição, a lista é reconstruída — os dados são lidos,
os nós apagados e recriados NA MESMA ORDEM, o que força o `onNodeReady` de cada
item. Usa apenas `append` e `deleteNode`, as APIs já comprovadas no projeto, e
nunca toca no nó-container.

### Adicionado — a mesma tag pode ser empilhada
Clicar numa tag agora ACUMULA em vez de alternar: Ofensivo, Ofensivo (2x),
Ofensivo (3x)… Cada repetição consome uma vaga do limite do rank, então um
rank E (2 tags) pode ter no máximo Ofensivo (2x).

Para tirar, cada tag escolhida vira um chip clicável abaixo do formulário, e
cada clique remove uma instância. O card da tag no catálogo mostra a contagem.

O livro não define quanto cada repetição acrescenta em dano ou cura, então a
ficha **não calcula nada** — apenas registra a pilha e deixa os números com o
mestre, como combinado.

Armazenamento: agrupado no nó ("Ofensivo (3x), Fogo"), que é como aparece na
ficha; o construtor expande de volta ao editar. Tags simples continuam
gravadas como antes, sem sufixo.

Tags opostas seguem bloqueadas mesmo com pilha: Ofensivo (2x) + Defensivo
continua recusado fora do rank EX.

### Corrigido durante os testes — duplicação na reconstrução
A primeira versão da reconstrução iterava a lista de nós enquanto apagava dela,
o que pula elementos: três habilidades viravam quatro, fora de ordem. Os nós
passaram a ser copiados para uma tabela própria antes da remoção. O teste que
compara a lista antes e depois pegou isso.

## v0.15.2 — regras de Magia, Linhagem de Unaris e acerto visual das linhas

### Corrigido — REGRA: o crédito grátis é POR PODER, não um bolso comum
O primeiro feitiço vinha cobrado. Causa: o crédito de Rank E gratuito era um
contador único, então o crédito gerado pelo poder Magia acabava consumido por
uma habilidade comum. Agora cada poder ativo carrega o próprio crédito — o da
Magia libera o feitiço Rank E, os demais liberam habilidades. Ter dois poderes
significa dois créditos independentes, que não se roubam.

### Corrigido — REGRA: Magia não gera habilidade comum
Era possível criar habilidade "de poder" a partir da Magia. Magia é o poder dos
feitiços e só produz feitiços. Foi retirada da lista de poderes de origem do
construtor, e o salvamento recusa a combinação. Quem só tem Magia recebe um
aviso explicando que deve usar o botão FEITIÇO.

### Adicionado — Linhagem de Unaris (bruxas)
A ficha agora detecta a qualidade **Linhagem de Unaris** e aplica a escala de
bruxa aos feitiços: dados maiores (feitiço rank C passa de 3d4 para 3d6) e uma
tag extra nos ranks C e A. O construtor mostra a condição numa caixa própria,
visível só em feitiços, que o mestre pode ligar ou desligar à mão — o override
manual vence a detecção automática.

Observação: a qualidade se chama "Linhagem de Unaris" no livro, não "Sangue de
Unaris".

### Corrigido — layout das linhas de habilidade
O texto vazava para fora do cartão e a linha de tags ficava cortada. A altura
do item passou de 52 para 64px, e a coluna da direita foi reorganizada em três
blocos alinhados verticalmente: origem, custo e remover. O selo de origem
ganhou moldura e a cor do tipo (violeta para poder, musgo para classe,
azul-chuva para feitiço).

### Corrigido — duração aparecia com ponto duplo
A tabela traz "instantâneo (1 turno)." com ponto final, o que produzia
"1 turno).." na tela. O ponto é removido ao preencher.

## v0.15.1 — correção do erro de compilação no rdk

### Corrigido — `horzTextAlign="right"` derrubava o `rdk i`
O rótulo de origem em `itemHabilidade.lfm` usava `horzTextAlign="right"`. Essa
propriedade aceita apenas `center`, `leading` e `trailing` — `left` e `right`
pertencem ao `align=`, que é outra coisa. Trocado por `trailing`.

Era a única ocorrência do projeto: os outros 50 usos já estavam corretos.
A armadilha ficou anotada no cabeçalho do template.

### Verificado — o resto do código novo
O `rdk` para no primeiro erro, então a seção de Habilidades e o popup
construtor ainda não tinham passado pelo compilador. Varredura feita antes de
reempacotar: valores inválidos em `horzTextAlign`, `vertTextAlign`, `align`,
`style`, `layout` e `type` (nenhum), `fontStyle` com "+" em vez de espaço
(nenhum), e comparação de todas as propriedades e elementos usados nas partes
novas contra as que o rdk já havia aceitado (nenhuma inédita).

## v0.15.0 — Habilidades e Feitiços

Nova seção na aba V, com título próprio. Habilidades são CRIADAS pelo jogador,
então aqui a ficha usa recordList de verdade (`itemHabilidade.lfm`) e não campo
serializado: são muitos campos e o jogador digita texto livre, onde qualquer
separador corromperia o registro.

### Adicionado — construtor de habilidades
Popup com tags à esquerda e formulário à direita. Escolher o rank preenche
sozinho aura, dado-base, modificador, alcance e duração pela tabela do livro —
e todos os campos continuam editáveis, porque várias regras mexem nesses
números.

### Três tipos, com regras distintas
- **De poder** — vinculada a um poder ativo. O rank é limitado pelo NÍVEL DO
  PODER (1→E/D, 2→C, 3→B, 4→A, 5→EX). Confirmado na mesa: o rank do
  personagem NÃO limita — um personagem rank C pode ter habilidade EX se subiu
  o poder o bastante.
- **De classe** — não exige poder e chega a EX, com efeitos mais fracos. Como
  a regra ainda não está fechada, esta categoria é a mais livre: a ficha não
  trava rank nem tags, só informa a tabela e avisa para combinar com o mestre.
- **Feitiço** — exige o poder Magia. Gasta MANA e tem tabela própria: dados
  mais fracos que habilidades (1d4 contra 1d6 no rank E) e menos tags, com
  valores melhores para "Bruxas". O botão só aparece com o poder Magia.

### Adicionado — gratuidades automáticas
- 1 habilidade Rank E grátis sempre que um poder ATIVO novo chega ao nível 1,
  em qualquer nível do personagem;
- primeira habilidade EX grátis no nível 15, segunda no nível 20;
- +1 ponto de skill do nível 19, abatido do custo de habilidades (não de
  poderes).

O painel mostra quantos créditos ainda estão livres, e cada linha gratuita
aparece marcada como GRÁTIS em ouro.

### Adicionado — validação de tags
68 tags oficiais em quatro categorias. Limite por rank aplicado, e tags opostas
bloqueadas (Ofensivo/Defensivo, Fogo/Água, Sagrado/Maldição, duas classes
diferentes…) — com a exceção do livro: no rank EX tudo é permitido.

### Adicionado — modificadores de alcance
Corpo-a-corpo fixa o alcance em 5m; em área usa sempre metade do alcance do
rank. São mutuamente exclusivos e recalculam o alcance na hora.

### Corrigido — REGRA: poder ativo fica preso ao personagem
O botão "−" no nível 1 removia o poder e devolvia o ponto, o que permitia
comprar e desfazer à vontade. Agora, com a ficha finalizada, só o mestre
remove; durante a criação segue liberado para corrigir erro de clique. E ao
remover um poder por completo, a habilidade Rank E gratuita que nasceu dele é
removida junto.

### Testes executados contra o código real
Os testes passaram a extrair o bloco Lua direto do `ficha.lfm`, e não de um
arquivo de trabalho paralelo — a primeira rodada passou num fonte defasado e
escondeu um erro de campo. Cobertura: teto de rank vindo do poder, bloqueio por
poder de nível baixo, Rank E grátis por poder ativo (e não valendo para
classe), EX grátis nos níveis 15 e 20, desconto do nível 19, preenchimento pela
tabela, corpo-a-corpo e área, tabela própria de feitiços com variante Bruxa,
limite de tags e tags opostas.

## v0.14.3 — correção do desalinhamento ao registrar bênçãos

### Corrigido — seção "FORA DOS KITS" pulava para o topo da aba
Ao registrar uma bênção **durante a sessão**, o poder Magia e seu cabeçalho
saltavam para cima da carteira de pontos e dos botões. Reabrir a ficha
corrigia sozinho — o que foi a pista decisiva.

Causa raiz: no Firecast, chamar `setVisible(true)` em runtime num elemento
`align="top"` que estava invisível o insere no **topo da pilha**, não na
posição em que foi declarado. Os slots já existentes no carregamento entravam
na ordem certa; o slot que aparecia depois ia para o topo.

Correção: os blocos da lista **nunca mais alternam visibilidade**. Cada linha
e cada cabeçalho de grupo agora vive dentro de um wrapper cuja **altura** é
alternada entre 0 e o valor cheio, o que preserva a ordem declarada no XML
independentemente de quando o elemento apareceu.

O mesmo tratamento preventivo foi aplicado a três outros pontos que tinham
exatamente o mesmo risco e ainda não haviam se manifestado:
- os pips de nível (se um reaparecesse no topo, a sequência de bolinhas
  cheias e vazias ficaria trocada);
- os dois botões do mestre na barra de ações (agora por largura);
- o bloco "registrar bênção" dentro do catálogo.

Não sobrou nenhum `setVisible` nos blocos posicionados da aba.

### Alterado — capacidade de 10 para 24 poderes
Cada bênção abre um kit inteiro de 5 poderes. Com 10 slots, um personagem com
três ou quatro bênçãos estouraria o limite de exibição. 24 cobre o kit do
pai/mãe mais três bênçãos completas com folga, e o aviso de limite continua
para o caso extremo.

### Testado — o cenário que motivou o relato
Simulação com pilha de widgets: kit do pai/mãe + Magia, depois bênção de Ammis
registrada em runtime, depois bênçãos de Mungus, Din e Aslot. Em todos os
passos a ordem se manteve — pai/mãe no topo, bênçãos no meio na ordem de
concessão, Magia sempre por último — e os slots não usados ficaram com altura
zero. Também verificado o retorno ao estado vazio.

### Ajustado
Selo de origem passou de 150px para 170px, para caber nomes de divindade mais
longos com o sufixo "· BÊNÇÃO".

## v0.14.2 — mestiçagem para qualquer raça, e reorganização da aba de Poderes

### Corrigido — REGRA: mestiçagem não é exclusiva de Humanos
A implementação anterior cravava "Humanos" como primeira metade da herança, em
sete pontos do código. Agora a base é a **raça principal** selecionada no campo
do topo da aba, e a única exigência é que ela seja das **Jogáveis** — a segunda
raça pode ser qualquer uma, respeitadas as travas de acesso já existentes.

Ajustado em todos os pontos: montagem do pool de características, cálculo de
Deslocamento e Dado de Vida (maior valor entre as duas raças), título e texto
de regra do popup, publicação no chat e textos da aba. Adicionadas duas travas
novas: não abre a mestiçagem sem raça principal ou com raça principal não
jogável, e a segunda raça não pode ser igual à principal.

Testado com as 10 raças jogáveis (todas funcionam como base) e as 12
não-jogáveis (todas bloqueadas como base).

### Corrigido — botões do mestre flutuavam no meio da lista
Os três botões apareciam em posições diferentes conforme o número de poderes.
Causa: o conteúdo da aba estava dentro de um `<rectangle height="1500">` usado
como moldura, e o empilhamento `align="top"` se perde dentro desse wrapper. As
abas que funcionam (Raça, Atributos) põem o conteúdo **direto no scrollBox** —
agora esta faz o mesmo.

### Alterado — layout da aba
- Carteira de pontos subiu para o topo, logo abaixo do título.
- Os três botões viraram uma barra fixa de largura igual: **ADICIONAR PODER**
  (roxo/aura), AUTORIZAR SUBIDA EXTRA (ouro) e ROMPER LACRE (vinho). O
  destrutivo ficou por último, longe do de uso frequente.
- Selo do lacre virou uma faixa própria acima da lista.
- Removido o cabeçalho "PODERES ADQUIRIDOS".

### Adicionado — origem visível de cada poder
Cada linha ganhou um selo com a divindade e o vínculo: **ouro** para o kit do
pai/mãe, **roxo** para os vindos de bênção, **azul-chuva** para Magia (Coração
de Mana). Os poderes agora também aparecem agrupados, com cabeçalho de seção
por origem.

### Alterado — ordem de exibição
Poderes do pai/mãe vêm sempre primeiro, depois cada bênção na ordem em que foi
concedida, e por último os que não vêm de divindade. A lista serializada
continua guardando a ordem de compra; a reordenação é só de exibição, e os
botões +/− seguem a lista reordenada.

## v0.14.1 — catálogo de poderes e correção do erro ao clicar em "+"

### Corrigido — "attempt to call a nil value (global 'dataHoraTexto')"
Causa raiz: `dataHoraTexto` é uma **`local function`** declarada na linha 1855,
e o bloco de poderes tinha sido inserido na linha 639. Em Lua uma `local` só
existe a partir da linha em que foi declarada — chamar de cima para baixo
devolve nil. É a mesma armadilha que já está anotada no topo do arquivo, na
declaração da paleta COR.

Duas correções: o bloco de poderes passou a ser inserido **depois de todas as
locais do arquivo** (logo antes de `inicializarFicha`), e o carimbo de data
agora é `carimboDeTempo()`, uma função global própria do bloco, sem depender
da ordem de declaração de ninguém.

### Alterado — a aba mostra só os poderes ADQUIRIDOS
Listar os 5 do kit em "nível 0" comunicava "preencha os cinco", exatamente o
oposto da regra da mesa. Agora a aba abre com um estado vazio explicando que o
kit é opcional, e poderes entram por um botão **ADICIONAR PODER**.

Cada linha adquirida mostra o poder, o tipo, a divindade de origem, os pips e
os botões +/−. No nível 1, o "−" remove o poder e devolve o ponto. Clicar no
nome abre o catálogo já naquele poder.

### Adicionado — catálogo de poderes (popup mestre-detalhe)
Mesmo padrão de Qualidades, Raças e Deuses: lista à esquerda, detalhe à
direita. A lista traz os kits dos 18 deuses grandes agrupados por divindade,
com o tipo de cada poder. O detalhe mostra descrição completa e **os 5 níveis
de progressão**, com o nível atual em ouro, os alcançáveis em roxo e os acima
do teto apagados. Nos poderes ativos, cada nível informa o rank de habilidade
que destrava (1→E/D até 5→EX).

O catálogo mostra TODOS os kits, mas só libera a compra do kit da própria
divindade ou de quem abençoou — e o botão diz o motivo do bloqueio em vez de
só ficar apagado.

### Adicionado — bênçãos
Trocar 3 Favores com um deus que não é seu pai/mãe dá a bênção dele, e com ela
o acesso ao seu kit. Registrado por botão **só do mestre**, dentro do catálogo,
e publicado no chat. Guardado em campo plano serializado, e o poder adquirido
grava de qual divindade veio — por isso o modelo de dados não usa campos
numerados fixos.

### Descoberto — "Magia" não pertence a kit nenhum
Dos 48 poderes, 47 estão em kits de divindade. **Magia** não: é o poder dos
feitiços, liberado pela qualidade Coração de Mana. Entrou no catálogo em uma
seção "FORA DOS KITS", com gate próprio ligado ao campo `temCoracaoDeMana`.
Sem isso o poder simplesmente sumiria da ficha.

### Corrigido — grafias divergentes geravam cards duplicados
Seis entradas de kit usavam grafia diferente da lista de poderes
("Carisma Sobrenatural", "Manipulação dos alimentos", etc.), o que produzia 50
cards para 48 poderes. Os nomes nos kits foram canonizados na fonte.

### Testes executados em Lua real
Correção do bug do lacre, gates de acesso por divindade e por Coração de Mana,
bênção só pelo mestre e coexistindo com o aspecto original, gravação da
divindade de origem por poder, estado vazio, operação dos botões por índice da
lista, teto de 10 slots — e a conferência de que as 48 chaves `chavePoder()`
batem exatamente com os cards `rectPod_*` do XML.

## v0.14.0 — Aba de Poderes: kit da divindade

Primeira fatia da aba V. Entra o kit de poderes; habilidades e feitiços
ficam para as próximas entregas.

### Adicionado — carteira de pontos de poder
TOTAL / GASTOS / SALDO, com um campo editável de CONCEDIDOS. Esse campo
existe porque Favores viram pontos (2 favores = 1 ponto, 3 favores = 3
pontos) e porque o mestre pode conceder por narrativa — a tabela de nível
sozinha não daria conta.

### Adicionado — kit da divindade, 5 slots com pips
Mesmo padrão visual das subclasses: 5 círculos por poder, ouro para
comprado, vazado para disponível, **invisível** acima do teto atual — sem
pips fantasma. Cada slot mostra o tipo (ATIVO/PASSIVO) e o que o nível
atual entrega.

O kit é OPCIONAL e a tela diz isso. Regra da mesa: o jogador pode adquirir
um único poder e investir todo o resto em habilidades e feitiços, e seguir
a campanha inteira assim. Nível 0 é estado legítimo, não slot vazio.

Slots com escolha ("Telepatia ou Manipulação dos sonhos") resolvem a
ambiguidade na primeira compra: a partir daí vale o poder adquirido.

### Adicionado — regras enforçadas
- 1 ponto por nível, teto de 5 níveis por poder.
- Teto de poder PASSIVO por nível de personagem (2/3/4/5/5 nos níveis
  1/5/9/13/17). Ativos não têm esse teto.
- Máximo de 3 poderes passivos no total.
- Máximo de 2 poderes que bonificam atributo (são 7 no catálogo, um por
  atributo do sistema).
- **Proibido subir o mesmo poder duas vezes no mesmo nível de personagem.**

### Adicionado — log de compra por nível
A regra acima é inaplicável sem registrar EM QUE nível cada ponto foi
gasto. Cada poder guarda um log compacto ("1@1,2@3,3@5" = nível 1 comprado
no nível 1 do personagem, nível 2 no 3, nível 3 no 5).

### Adicionado — lacre do Aspecto Divino
Mesma mecânica do lacre de mestiçagem. O lacre fecha sozinho ao gastar o
primeiro ponto de poder: a partir daí trocar de divindade zeraria o kit, e
é exatamente o exploit que isso fecha. O livro reforça — no rebalanceamento
dos níveis 9 e 18, "Aspecto Divino não pode ser modificado" e "não é
possível trocar poderes".

Dois botões só do mestre, ambos de uso único e publicados no chat:
- ROMPER LACRE DO ASPECTO — libera a próxima troca de divindade.
- AUTORIZAR SUBIDA EXTRA NESTE NÍVEL — abre exceção à regra do 2x.

### Decisão de arquitetura — por que texto serializado e não recordList
A UI do kit é de slots fixos, então recordList só traria a armadilha de
reciclagem conhecida sem ganho de layout. Mas a quantidade de poderes NÃO é
fixa: a mecânica de Bênção (3 favores com um deus que não é seu pai/mãe)
libera comprar do kit daquele deus também. Campos planos numerados
obrigariam a migrar fichas já preenchidas quando as bênçãos entrarem.

Serializar em campo plano resolve os dois: `nome|nível|log|deus`, registros
separados por ";". O campo "deus" já vai gravado desde agora, mesmo só
existindo o kit nativo. Nenhum dos 48 nomes de poder contém ";", "|" ou "@"
(conferido no catálogo).

### catalogoPoderes.lua enriquecido
Agora com a progressão nível a nível dos 48 poderes (todos têm exatamente
5 níveis descritos) e o campo `atributo`, preenchido nos 7 passivos que
bonificam atributo — é o que sustenta a regra do máximo de dois.

Nos ativos, cada nível destrava um rank de habilidade: 1→E/D, 2→C, 3→B,
4→A, 5→EX. Isso vai alimentar o construtor de habilidades da próxima
entrega.

### Testes de regra executados em Lua real
Economia por nível (1=2, 10=26, 20=53 pontos), compra e devolução, bloqueio
de 2x no mesmo nível, consumo de uso único da autorização do mestre, teto de
passivo mudando no nível 5, ativo chegando a 5, bloqueio do 4º passivo, do
3º poder de atributo, de compra sem saldo, round-trip da serialização e
resolução de slot ambíguo.

## v0.13.5 — reempacotamento (troca de PC)

Os dois catálogos criados na série 0.13.x — `catalogoDeuses.lua` e
`catalogoPoderes.lua` — foram **regerados a partir do `.bib`**, porque não
estavam no zip da v0.12.1 nem entre os arquivos soltos recuperados.

O `ficha.lfm` da v0.13.5, o `module.xml` e este changelog são os originais.

### Conferência de fidelidade da regeração
- 30 divindades: 9 primordiais, 18 grandes, 3 menores.
- As 30 `chave` batem 1:1 com os cards `rectDeus_<chave>` do `ficha.lfm`.
- 48 poderes: 27 ativos, 21 passivos.
- Todos os 18 kits têm 5 slots, com **3 ativos e 2 passivos** — a proporção
  que o livro da mesa exige. Nenhum kit fora do padrão.
- Todo poder citado em kit existe no catálogo (integridade referencial fechada).
- Uhtris e Unaris: 7 parágrafos, 3.752 caracteres — o mesmo número registrado
  no changelog da v0.13.5 original. Nellios: 3 parágrafos. A extração é
  equivalente à anterior, não uma aproximação.

### Divergências de grafia do próprio .bib, tratadas na regeração
O `.bib` grafa alguns poderes de um jeito na lista e de outro nos kits, então
`CatalogoPoderes.buscar()` normaliza caixa, acentuação, preposições e gênero
final:

| Nos kits | Na lista de poderes |
|---|---|
| Carisma Sobrenatural | Carisma sobrenatural |
| Fator de cura regenerativa | Fator de cura regenerativo |
| Fator de aura regenerativo | Fator de aura regenerativa |
| Manipulação dos alimentos | Manipulação de alimentos |
| Indução artística (Merewen) | Intuição artística |

O último é typo do documento (1 ocorrência contra 3 da forma correta) e está
mapeado explicitamente, com comentário no código.

Também: "Liderança absoluta" é o único poder cujo tipo o `.bib` escreve no
feminino ("Tipo: ativa"). O parser aceita os dois gêneros — sem isso, o poder
sumia do catálogo e três kits (Ras'buz, Oduwa, Ammis) ficavam quebrados.

## v0.13.5 — história dos deuses em um label só

### A diferença entre este popup e o de Raças
O popup de Raças nunca teve problema de espaçamento porque usa **UM label** com
o texto inteiro (`popRaca_lblLore`), dentro de um retângulo de altura fixa. O
`wordWrap` do próprio label quebra as linhas, e não existe espaço entre
parágrafos para a ficha errar.

O popup de Deuses usava **8 labels**, um por parágrafo, cada um com altura
calculada por estimativa. Como a ficha não consegue medir texto renderizado,
todo erro de estimativa virava um buraco visível no meio do texto — e eram
oito chances de errar.

Agora é igual ao de Raças: um label, parágrafos separados por linha em branco,
e uma única estimativa para a altura do bloco. Errar nessa estimativa só gera
espaço em branco no fim da rolagem, onde ninguém repara.

Verificado com o deus de maior lore da mesa (Uhtris e Unaris: 7 parágrafos,
3.752 caracteres) e com o menor (Nellios, 3 parágrafos).

### Lição para o projeto
Para texto longo de tamanho variável, **um label com o texto inteiro**. Dividir
em vários labels de altura calculada multiplica as chances de erro sem ganhar
nada — a ficha não tem como medir o texto depois de renderizado.

## v0.13.4 — buracos entre parágrafos, causa raiz

A v0.13.3 corrigiu duas causas e deixou a terceira, que era a maior.

**A largura era lida do próprio label (`lbl.width`) dentro de um popup que
ainda não tinha sido desenhado.** Nesse momento o controle não foi posicionado
e devolve um valor pequeno. Com largura ~300 em vez de ~740, cada parágrafo era
estimado com o dobro de linhas — daí os buracos de ~170px.

Agora a largura vem de `tamanhoPopupDeuses()`, calculada a partir do tamanho da
ficha, conhecida **antes** de qualquer desenho e independente de timing de
layout. A história da Qhyrana passou de ~700px para 340px, com folga máxima de
uma linha por parágrafo (sobra invisível; texto cortado, não).

Testado em ficha de 1100, 1266 e 1920px de largura.

### As três armadilhas desta função, para o histórico
1. `#texto` em Lua conta **bytes**, não caracteres — acentuação UTF-8 ocupa 2.
2. Largura chutada em número fixo, sem relação com o popup real.
3. Ler dimensão de um controle antes dele existir na tela.

## v0.13.3 — painel de detalhe do deus rola inteiro

### Corrigido — história espremida em tela pequena
Mesmo erro da aba de Raças, em escala menor: só a história rolava, dentro da
sobra de espaço de um painel de altura fixa. Em tela baixa isso virava três
linhas visíveis.

Agora **o painel direito inteiro é um scrollBox** — nome, categoria, kit e
história rolam juntos, com tudo `align="top"`. O botão de escolher fica fora do
scroll, sempre alcançável no rodapé.

### Corrigido — buracos entre os parágrafos da história
A altura de cada parágrafo era estimada com dois erros que se somavam:
1. **`#p` em Lua conta bytes, não caracteres.** Acentuação em UTF-8 ocupa 2
   bytes, então texto em português inflava a contagem em ~6% (num parágrafo de
   68 caracteres, 73 bytes).
2. A largura era chutada em 92 caracteres por linha, fixa, sem olhar a largura
   real do label.

Agora a ficha lê a largura real do label e conta caracteres com `utf8.len`.
Margem entre parágrafos reduzida de 8px para 4px — o resto do espaço vinha da
altura superestimada, não da margem.

### Alterado
O painel de kit encolhe de 188px para 62px quando a divindade não tem kit
definido, em vez de deixar cinco caixas vazias.

## v0.13.2 — só deuses grandes são selecionáveis

### Corrigido — ortografia dos deuses menores
O documento escreve os nomes em dois blocos de negrito separados
("**Vista,** **A Deusa da Colheita**"), e a extração perdia a vírgula.
Corrigido nos três: "Haliana, a Deusa da Pesca", "Morgara, a Deusa das Aves"
e "Vista, a Deusa da Colheita".

### Alterado — apenas deuses grandes concedem Aspecto Divino
Antes grandes e menores eram selecionáveis. Agora só os 18 grandes; os 3
menores e os 9 primordiais ficam no catálogo como lore, com o botão de escolha
desligado.

A ficha **explica o motivo** em vez de apenas desabilitar o botão:
- Primordiais: são entidades da criação e não concedem Aspecto Divino.
- Menores: ainda não têm kit de poderes definido no livro da mesa.

Se um dia os kits dos menores forem escritos, basta trocar `selecionavel` no
catálogo — o resto da ficha já trata os dois casos.

## v0.13.1 — catálogo de divindades completo (mestre-detalhe)

### Alterado — popup de Aspecto Divino
Virou mestre-detalhe, no mesmo padrão de Raças, Qualidades e Classes: lista à
esquerda agrupada por categoria, painel completo à direita com nome, categoria,
kit de poderes e a história completa da divindade.

- **30 divindades** agora (antes 19): 18 grandes, 3 menores e **9 primordiais**.
- Os primordiais aparecem como referência de lore, com o botão de escolha
  desligado e aviso explícito — só grandes e menores são selecionáveis.
- Cada slot do kit mostra o tipo do poder (ativo/passivo), lido do
  `catalogoPoderes.lua`. Slots com alternativa aparecem como "A ou B".
- A história vem em até 8 parágrafos, com altura calculada por parágrafo.

### Removido — vagas por divindade
As vagas do livro saíram da ficha e do popup. A ficha não tem como saber o que
as outras fichas da mesa escolheram, então exibir um número desatualizado seria
pior do que não exibir nada. O controle fica com o mestre, fora da ficha.

## v0.13.0 — Aspecto Divino com catálogo + base de dados de Poderes

### Adicionado — seletor de Aspecto Divino
O campo de texto livre virou campo clicável com catálogo, no mesmo padrão do
Traço de Personalidade (cards estáticos, cada um com o nome no próprio
`onClick` — nada de recordList reciclada).

- Novo `catalogoDeuses.lua`: **19 divindades** com categoria, vagas e o KIT DE
  PODERES completo (5 slots, com as alternativas "A ou B" preservadas).
- O card mostra o kit inteiro, que é a informação que de fato decide a escolha.
- Valores digitados à mão antes do catálogo são **preservados** e marcados como
  "fora do catálogo", em vez de apagados.

### Adicionado — `catalogoPoderes.lua` (base para a próxima aba)
- **48 poderes** (27 ativos, 21 passivos), árvores de 5 níveis.
- Tabela de pontos de poder por nível de personagem (2 no nv1 … 53 no nv20).
- Tabela de **nível máximo de poder passivo** por nível de personagem
  (2 até o nv4, 3 no nv5, 4 no nv9, 5 do nv13 em diante).
- Mapeamento dos 7 passivos de atributo e das 10 listas de perícias, para as
  regras de acumulação.
- Pares antagônicos evidentes, usados apenas para aviso.

### Divergências entre documentos (corrigidas no catálogo)
O documento "Deuses" e o "Poderes e Perícias" escrevem alguns nomes de forma
diferente: "Fator de cura regenerativa/o", "Indução/Intuição artística",
"Manipulação dos/de alimentos". Além disso "Liderança absoluta" está marcada
como `Tipo: ativa`. Todos reconciliados, com verificação automática de que
todo poder citado nos kits existe no catálogo.

## v0.12.5 — círculos de nível corrigidos

Os marcadores estavam ovais: 20px de largura contra 26px de altura (a linha do
slot tem 52px úteis e as margens verticais eram 13). Círculo exige largura ==
altura. Agora 14x14 com raio 7 — menores e redondos de verdade.

## v0.12.4 — atributos base do mestiço + redesenho dos níveis de subclasse

### Adicionado — regra de mesa: mestiço fica com o maior atributo base
**Esta regra não está escrita no `.bib`** — busquei nos 15 documentos e a
entrada da qualidade Mestiço só trata das habilidades raciais. Implementada
como regra da mesa, declarada no código.

O mestiço recebe o **maior valor entre as duas raças, atributo por atributo**
(não "o pacote da melhor raça"). Humanos (10m / 1d10) + Minotauros (8m / 1d12)
resulta em **10m / 1d12**.

Só é gravado nos momentos de decisão (escolher a raça, confirmar a mestiçagem),
nunca a cada refresh — os dois campos são editáveis à mão em Cálculos & Combate
e sobrescrever sempre brigaria com o jogador. O painel "Atributos Base" agora
explica de onde veio o valor quando o personagem é mestiço.

### Alterado — marcadores de nível de subclasse
- As "bolinhas" deixaram de ser os caracteres ● ○ dentro do texto e viraram
  **círculos de verdade** (rectangles com `xradius`/`yradius`), de 20px:
  preenchidos em ouro para níveis comprados, vazios em cinza para disponíveis,
  invisíveis para os que estão fora do teto daquela árvore.
- Rótulo numérico "3 / 8" ao lado, em verde quando a árvore está completa.
- **Removida a descrição do último nível comprado** da linha do slot.
- Linhas de slot de 44px para 58px; bloco de classe de 164px para 186px.

### Alterado — clicar na subclasse abre o catálogo nela
Clicar em um slot preenchido abre o catálogo **já posicionado naquela
subclasse**, com todos os níveis descritos. Antes abria na última visitada.

## v0.12.3 — aba Raça & Classe reestruturada com barra de rolagem

### Correção de abordagem
A v0.12.2 tratou o sintoma: espremia os blocos até caberem na altura da aba.
Isso parou a sobreposição, mas deixou a aba feia e com texto cortado
("SITUAÇÃO" chegava a truncar). A aba simplesmente tem conteúdo demais para
uma altura fixa — a resposta certa é **rolar**, não encolher, exatamente como
as abas de Atributos e Combate já fazem.

### Alterado — estrutura da aba
- Todo o conteúdo passou a viver dentro de um `<scrollBox align="client">`.
- **Todos os blocos agora são `align="top"`**, na ordem natural de leitura.
  Sumiu a acrobacia de `align="bottom"` (que só existia porque a lista de
  características era `align="client"` e precisava do espaço do meio) e sumiu
  junto o comentário sobre ordem de empilhamento invertida.
- A `recordList` de características passou de `align="client"` para
  `align="top"` com `height` calculado (`ajustarAlturaListaCaracs`): a lista
  cresce conforme os itens e quem rola é a aba. Lista com scroll próprio
  dentro de área com scroll é ruim de usar.

### Removido
- Todo o sistema de compactação em três níveis (`ajustarLayoutAbaRaca`,
  `ALTURAS_ABA_RACA`, `ALTURA_MINIMA_LISTA`) e o `onResize` do painel.
  Nada mais encolhe: cada bloco tem sua altura natural em qualquer monitor.

### Alturas restauradas (estavam apertadas)
- Situação: 46 → 54
- Atributos Base: 42 → 50 (e volta a aparecer sempre)
- Mestiçagem: 112 → 124

### Regra do projeto (atualizada)
Aba com conteúdo de altura imprevisível → `scrollBox` com tudo `align="top"`.
`align="client"` só quando existe exatamente um bloco elástico e a altura total
é garantida. Nunca resolver estouro de layout encolhendo conteúdo.

## v0.12.2 — layout responsivo (monitores menores)

Todos os três problemas tinham a mesma causa: dimensões travadas em pixel, que
só davam a proporção certa numa resolução específica.

Por que não migrar para o Grid System do SDK: ele resolveria isso nativamente,
mas exige SDK 3.7 e **não pode ser misturado com o atributo `align=`** — ou
seja, obrigaria a reescrever a ficha inteira. Como todo controle tem o evento
`onResize` e as propriedades `width`/`height` são graváveis, dá para fazer
proporção e adaptação em Lua, cirurgicamente.

### Corrigido — colunas de Qualidades & Defeitos 50/50 em qualquer tela
A coluna da esquerda tinha `width="895"` fixo: em 1920px dava meio a meio por
coincidência, em 1266px virava 70/30. Agora um `onResize` no container calcula
metade da largura disponível.

### Corrigido — popups cortados embaixo
Popups com `height` fixo maior que a janela do Firecast tinham o rodapé cortado.
A nova função `abrirPopupAjustado()` trata o tamanho declarado como **teto** e
limita o real a 94% do espaço da ficha. Aplicada aos 13 popups.

### Corrigido — aba Raça & Classe embaralhada
A aba tem muita altura fixa (topo: título, seletor, situação, atributos base,
mestiçagem; rodapé: título de seção e bloco de classe) e uma única área
elástica, a lista de características. Quando a soma das fixas passava da altura
do painel, o `align="client"` da lista colapsava e os elementos `align="bottom"`
subiam por cima dos `align="top"` — daí a sobreposição.

Agora `ajustarLayoutAbaRaca()` escolhe entre três níveis de compactação,
garantindo sempre no mínimo 120px para a lista:
- **Normal** — como estava, em telas altas.
- **Compacto** — blocos encolhidos; a linha de aviso do bloco de classe some.
- **Mínimo** — esconde também "Atributos Base" (que é informativo e aparece
  igual em Cálculos & Combate) e o slot 2 de subclasse quando está vazio.

Quando o personagem não tem a qualidade Mestiço, o painel de mestiçagem já
encolhe pela metade sozinho, porque vira só uma linha informativa.

### Regra nova do projeto
Largura/altura fixa em pixel **apenas para molduras** (botões, ícones, rótulos,
fotos). Onde a proporção importa, calcular no `onResize`.

## v0.12.1 — ajustes visuais e regra de árvores curtas

### Corrigido
- **Bug de entidade XML no cabeçalho das abas**: o campo `nome` da tabela
  `abasDef` está dentro de `<![CDATA[ ]]>`, onde `&amp;` NÃO é decodificado —
  o cabeçalho mostrava literalmente "SEÇÃO 04 • RAÇA &amp;amp; CLASSE".
  Trocado por `&` real nas 5 abas afetadas.
- **Rodapé do popup de Classes cortado**: os botões somavam 828px num painel
  de ~750px e o `+` ficava fora da área visível. Reduzidos para 528px.
- Retângulo do bloco de Classe subiu de 150px para 164px: a linha de aviso do
  rodapé estava sendo cortada.

### Alterado
- Título da aba passou a ser **RAÇAS**, e o bloco de Classe ganhou um
  **cabeçalho de seção próprio** no mesmo padrão (estrela violeta + Cinzel
  Decorative 19 + linha dourada de largura total), para o jogador enxergar
  onde termina uma seção e começa a outra.
- **Removidos os botões LIMPAR 1ª / LIMPAR 2ª.** Zerar o nível de uma
  subclasse (botão `−` no nível 1) agora a remove da ficha e devolve os
  pontos ao saldo — uma ação em vez de duas.

### Alterado — árvores curtas são regra, não dado faltando
Correção de premissa: "Combatente crítico", "Samurai" e "Ninja" têm 5 níveis
**de propósito**. Quem escolhe uma árvore curta chega ao topo mais cedo e
precisa investir os pontos restantes em outra subclasse; quem escolhe uma de 8
pode concentrar tudo numa só.
- O teto passou a ser **por subclasse** (`totalNiveis`), não um 8 fixo.
- Sumiram os avisos de "nível não descrito"; a lista mostra "· 5 níveis" e o
  detalhe informa o tamanho da árvore.
- Ao completar uma árvore, a ficha avisa que os próximos pontos precisam ir
  para a outra subclasse.
- Cards de nível acima do teto ficam invisíveis em vez de exibirem texto de
  pendência.

## v0.12.0 — Lacre de Sorteio (mestiçagem) + Classe & Subclasse

### Adicionado — LACRE DE SORTEIO
- O sorteio das características de mestiço agora grava um **lacre** na ficha
  (`mesticoLacre`, `mesticoLacreAutor`, `mesticoLacreData`, `mesticoLacreTier`).
  A partir dele, as características **SORTEADAS são imutáveis**; as
  **ESCOLHIDAS continuam trocáveis** à vontade.
- O popup de mestiçagem passou a ter dois modos: primeiro sorteio (escolhe,
  sorteia, lacra e publica no chat) e troca de escolhidas (nenhuma rolagem
  nova; as sorteadas são preservadas exatamente como estavam).
- Cards lacrados aparecem em azul-chuva com o prefixo `[LACRADA]` e não
  respondem a clique. Na aba, o card mostra `SORTEADA • IMUTÁVEL • <origem>`.
- **Publicação no chat da mesa** (TaleMark) do sorteio, da quebra de lacre e do
  reajuste de tier, com autor e data.
- Popup **LACRE / MESTRE** com três ações: quebrar o lacre (libera UM novo
  sorteio), autorizar reajuste de tier e cancelar autorizações pendentes
  (relacra). As autorizações são de **uso único**: consumidas na próxima ação
  do jogador, para não deixar ficha destravada por esquecimento.

### Corrigido — as quatro portas de re-sorteio
Antes, o jogador podia rolar as características quantas vezes quisesse até
cair um conjunto bom, sem custo. Existiam quatro caminhos, não dois:
1. `REFAZER HERANÇA` — agora bloqueado com o lacre (botão vira "LACRADA").
2. `LIMPAR RAÇA` — agora apaga a raça mas **preserva** a herança lacrada.
3. **Remover e recomprar a qualidade Mestiço** — o "x" da linha fica bloqueado
   para o jogador enquanto houver lacre (o mestre continua podendo remover).
   Como o lacre vive em campos planos, recomprar a qualidade devolve
   exatamente o mesmo sorteio.
4. **Trocar a raça secundária** — congelada: faz parte do sorteio lacrado.

### Decisão de regra da mesa (upgrade de tier)
Subir de Mestiço 1 PQ para 2 PQ **depois** do sorteio NÃO converte sorteadas em
escolhidas automaticamente. O tier fica congelado no lacre; só a autorização do
mestre aplica o tier atual. Downgrade segue a mesma lógica: nada acontece
sozinho.

### Adicionado — CLASSE & SUBCLASSE
- Novo `catalogoClasses.lua`, extraído do documento "Classes e Traços" do
  `.bib`: **12 classes, 36 subclasses**, árvores de 8 níveis, incluindo as
  observações `★` de Sacerdote e Mártir.
- Bloco no rodapé da aba Raça & Classe (`align="bottom"`) com os dois slots de
  subclasse, saldo de pontos, campo de ajuste manual e autorização do mestre.
- Popup mestre-detalhe no padrão de Raças/Qualidades: 36 cards estáticos à
  esquerda, árvore de 8 níveis à direita (adquiridos em ouro), rodapé com
  definir 1ª/2ª, subir/descer nível e limpar slot.
- Regras automatizadas: pontos de classe nos níveis 1/3/5/8/11/14/17/20;
  1 ponto por nível de subclasse; teto de 8; máximo de 2 subclasses; a segunda
  só a partir do nível 11 e com a primeira no nível 4 — tudo ignorável pelo
  checkbox de autorização do mestre.
- Válvula de escape: `pontosClasseAjuste` soma ou subtrai pontos à mão.

### Dados incompletos no documento (não inventados)
Cinco subclasses só têm os níveis 1 a 5 escritos no `.bib`: "Combatente
crítico" (Atirador, Duelista e Guerreiro), "Samurai" e "Ninja". Ficam marcadas
com ⚠ na lista e os níveis 6-8 exibem "nível ainda não descrito no documento da
mesa — combine o efeito com o narrador".

### Armadilha nova documentada
`&#9679;` e afins **dentro de `<![CDATA[ ]]>` não são decodificados** — a
entidade apareceria literal na tela. Dentro de CDATA use o caractere UTF-8 de
verdade (● ○ •). É a irmã da armadilha do `&#10;` em `text=`.

## v0.1.3 — compilação bem-sucedida, correções de instalação e runtime
### Corrigido
- `<form>` não declarava `formType="sheetTemplate"` nem `dataType`, então o plugin instalava mas não aparecia como "Modelo de ficha" ao criar personagem. Adicionado `formType="sheetTemplate" dataType="com.petrichor.fichapersonagem.Ficha" title="Petrichor"`.
- Os módulos `.lua` (`dadosSistema.lua`, `calculos.lua`, `catalogoPericias.lua`, `catalogoQualidadesDefeitos.lua`) estavam em uma subpasta `scripts/`; o `require()` do Firecast só resolve arquivos na raiz do projeto. Movidos para a raiz — isso também corrigia a ficha abrindo em branco (o `require` falhava antes de qualquer widget ser criado).
- Linhas do `catalogoQualidadesDefeitos.lua` geraram avisos de "linha muito longa" no compilador (cosmético, não bloqueia) — candidato a quebra de linha em versão futura.

## v0.1.2 — correção via código-fonte real do GitHub oficial
### Corrigido
- Fui ao repositório oficial (`rrpgfirecast/firecast` no GitHub) e achei um `.lfm` fonte real (não compilado): `FichaMultiaba_Aba.lfm`. Confirmei que o atributo correto para tipar um `<edit>` é `type="number"` / `type="text"`, não `dataType="D"`/`"S"` (que eu tinha inventado). Troquei em todos os arquivos.
- Confirmado também que `<tabControl>` não aceita `theme` (removido).
- Confirmado que `onClick`/`onChange` como atributo com código Lua inline também é sintaxe válida em alguns componentes (coexiste com `<event name="onClick">` filho) — a reescrita anterior para `<event>` continua correta e não precisou ser revertida.

## v0.1.1 — correção de padrão de eventos (pós-diagnóstico real)
### Corrigido
- `module.xml`: tag `<n>` trocada por `<name>` (exigida pelo rdk 3.7b).
- `<form>` não aceita `backgroundColor`/`fontColor`/`fontSize` diretamente — fundo movido para um `<rectangle>` filho, no padrão do SDK.
- Descobri (estudando `Main_lfm.lua`, um compilado real de uma ficha já usada na mesa) que minha suposição inicial de sintaxe estava errada em vários pontos:
  - Eventos são elementos filhos `<event name="onClick">...</event>`, nunca atributos `onClick="funcao"`.
  - `self` e `sheet` nunca são parâmetros de função — já existem prontos no escopo de todo o `<script>` e de cada `<event>`.
  - Não existe `onLoad`; o evento de ciclo de vida real é `onNodeReady`, como filho do `<form>`.
  - Popups usam `:show()`/`:close()` (não existe `:hide()`).
  - `recordList` precisa de `field="campo"` e `itemHeight` (não `recordHeight`).
  - Criar item: `self.nomeDaLista:append()`. Iterar: `NDB.getChildNodes(sheet.campo)`. Remover (de dentro do item): `NDB.deleteNode(sheet)`.
  - `comboBox` não tem getter direto — leitura via campo vinculado (`field=`) na ficha.
- Reescrevi `ficha.lfm`, `itemPericia.lfm` e `itemQualidadeDefeito.lfm` inteiros com o padrão correto. Todos os 41 eventos convertidos, recordLists e comboBoxes corrigidos, XML revalidado.

## v0.1.0 — primeira entrega
### Adicionado
- Estrutura do módulo (`module.xml`) e ficha raiz (`ficha.lfm`) com `tabControl` de 9 abas.
- Motor de nível/rank/proficiência (`dadosSistema.lua`), cobrindo níveis 1–20 com herança de valores (rank, limite de atributo, nível máx. de poder passivo).
- Motor de cálculos derivados (`calculos.lua`): Hp, Mp, Ap, Pv (vitae), Deslocamento, Iniciativa, 4 Defesas, capacidade de mochila — todos testados com Lua real (ver testes em `/tmp/test_calc.lua` durante o desenvolvimento).
- Catálogo completo de Perícias por atributo (`catalogoPericias.lua`) — 64 perícias em 6 atributos.
- Catálogo completo de Qualidades & Defeitos (`catalogoQualidadesDefeitos.lua`) — 49 itens com descrição/efeito completos.
- Templates de item: `itemPericia.lfm`, `itemQualidadeDefeito.lfm` — ambos com popup de descrição carregado ao vivo do catálogo (sem duplicar texto, sem cair na armadilha do popup vs. raiz da ficha).
- Aba **Dados Pessoais** completa.
- Aba **Atributos & Perícias** completa.
- Aba **Cálculos & Combate** completa, com campo de ajuste manual em todo valor automático.
- Aba **Qualidades & Defeitos** completa.
- Abas **Raça & Classe**, **Poderes & Habilidades**, **Favores Divinos**, **Inventário** — placeholders (`Em construção`).
- Aba **Background** — campo de texto livre já plugado ao `dataType`.

### Preservado / decisões de design
- Idade e Aniversário separados em dois campos (ver LEIA-ME.txt).
- "Rank" nas fórmulas numéricas assumido como E=1...EX=6 (a validar com a mesa).
- Mp e Pv ocultos por padrão até a qualidade correspondente ser marcada (Coração de mana / Vampiro).

### Pendente para próxima versão
- Catálogos de Raças e Classes/Traços (documentos extensos, entrega dedicada).
- Catálogo de Poderes por divindade + habilidades.
- Favores Divinos, Inventário completo (com automação de equipados → bônus de defesa).
- Compile real via `rdk c` + ajustes de layout com base em screenshots.
