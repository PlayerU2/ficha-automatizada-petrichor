-- catalogoEncantamentos.lua
-- Os 64 encantamentos da secao "Encantamentos" do .bib.
--
-- Um item so pode receber encantamento se tiver SLOT para isso, e ter slot
-- depende da qualidade e do material com que foi forjado.
--
-- Preco fixo na loja: Classe I = 5 aureus | II = 10 | III = 15.
--
-- "efeitos" traz o que a ficha aplica sozinha ao equipar. A maioria dos
-- encantamentos e narrativo (afinidades, resistencias, poderes especiais) e
-- fica so como texto no item.

local CatalogoEncantamentos = {}

CatalogoEncantamentos.precoAureus = { I = 5, II = 10, III = 15 }

CatalogoEncantamentos.itens = {
  {
    nome = "Afinidade de fogo",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Fogo].",
  },
  {
    nome = "Afinidade de gelo",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Gelo].",
  },
  {
    nome = "Afinidade de água",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Água].",
  },
  {
    nome = "Afinidade de luz",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Dia].",
  },
  {
    nome = "Afinidade de sombra",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Noite].",
  },
  {
    nome = "Afinidade de eletricidade",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Eletricidade].",
  },
  {
    nome = "Afinidade de terra",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Terra].",
  },
  {
    nome = "Afinidade de vento",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Vento].",
  },
  {
    nome = "Afinidade de veneno",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Veneno].",
  },
  {
    nome = "Afinidade de planta",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Planta].",
  },
  {
    nome = "Afinidade de maldição",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Maldição].",
  },
  {
    nome = "Afinidade de sagrado",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento recebe afinidade com o elemento [Sagrado].",
  },
  {
    nome = "Aprendiz arcano",
    classe = "I",
    preco = 5,
    -- Texto conferido contra livro/por-documento/2.9.md:688
    descricao = "escolha um poder ativo, e toda vez que o portador usar uma habilidade de tal poder receberá +1 de acerto ou +1 dado de dano/escudo/cura; Escolha durante fabricação",
  },
  {
    nome = "Aracnopassos",
    classe = "I",
    preco = 5,
    descricao = "torna o portador do objeto com este encantamento capaz de andar pelas paredes e pelo teto respeitando seu deslocamento.",
  },
  {
    nome = "Chefe do Ninho",
    classe = "I",
    preco = 5,
    descricao = "o portador se torna capaz de falar com uma espécie específica de Criaturas; Não é possível com Entidades ou Aberrações.",
  },
  {
    nome = "Contrabando",
    classe = "I",
    preco = 5,
    descricao = "o recipiente com este encantamento recebe +3 espaços permanentemente, seja ele um baú, caixa, barril, mochila etc.",
    efeitos = { espacos = 3 },
  },
  {
    nome = "Guia do aventureiro",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento sempre saberá as quatro direções cardeais independente de estar vendo o céu ou não.",
  },
  {
    nome = "Incorporação",
    classe = "I",
    preco = 5,
    descricao = "acrescenta +5% de Absorção de Danos ao portador, respeitando os limites de Absorção de Dano.",
    efeitos = { absorcao = 5 },
  },
  {
    nome = "Mente fortalecida",
    classe = "I",
    preco = 5,
    descricao = "garante ao portador do objeto com este encantamento +2 em sua defesa telepática, torna acertos críticos de oponentes em acertos comuns.",
    efeitos = { telepatica = 2 },
  },
  {
    nome = "Queda suave",
    classe = "I",
    preco = 5,
    descricao = "torna o portador do objeto com este encantamento imune a dano de quedas, sempre antes de cair sua queda se torna muito suave.",
  },
  {
    nome = "Refúgio do aventureiro",
    classe = "I",
    preco = 5,
    descricao = "personagens que possuam objetos com este encantamento recebem os efeitos de um descanso longo com um mero descanso curto.",
  },
  {
    nome = "Remover Encantamento I",
    classe = "I",
    preco = 5,
    descricao = "o artíficie remove um encantamento de Classe I de um objeto, desde que seja um encantamento presente nesta loja.",
  },
  {
    nome = "Retorno místico",
    classe = "I",
    preco = 5,
    descricao = "o portador gasta uma ação bônus para fazer este objeto retornar até ele automaticamente; Raio de funcionamento (10 x Rank) metros de distância.",
  },
  {
    nome = "Sifão arcano",
    classe = "I",
    preco = 5,
    -- Texto conferido contra livro/por-documento/2.9.md:701
    descricao = "sempre que uma arma/canalizador com este encantamento fizer um Acerto Crítico, irá restaurar 1d6 de Aura ou Mana de seu portador.",
  },
  {
    nome = "Sifão de sangue",
    classe = "I",
    preco = 5,
    -- Texto conferido contra livro/por-documento/2.9.md:702
    descricao = "sempre que uma arma/canalizador com este encantamento fizer um Acerto Crítico, irá restaurar 1d6 de Vida ou Vitae de seu portador.",
  },
  {
    nome = "Sorte de aventureiro",
    classe = "I",
    preco = 5,
    descricao = "personagens que possuam objetos com este encantamento podem rolar os d100 de viagem/sorte em narrativas com vantagem, e escolherem o melhor resultado.",
  },
  {
    nome = "Telemancia",
    classe = "I",
    preco = 5,
    descricao = "o portador do objeto com este encantamento se torna capaz de enviar mensagens telepáticas curtas para aliados a até 8 metros de distância; 3 usos por hora.",
  },
  {
    nome = "Vontade fortalecida",
    classe = "I",
    preco = 5,
    descricao = "garante ao portador do objeto com este encantamento +2 em sua defesa empatica, torna acertos críticos de oponentes em acertos comuns.",
  },
  {
    nome = "Altar do aventureiro",
    classe = "II",
    preco = 10,
    descricao = "sempre que o portador do objeto com este encantamento gastar um ponto de favor, deverá rolar 1d100: se tirar de 85 a 95, meio ponto de favor será restituído; Acima de 95 o ponto inteiro.",
  },
  {
    nome = "Autoequipamento",
    classe = "II",
    preco = 10,
    descricao = "o objeto pode se equipar e desequipar uma vez por turno, trocando com outro objeto no inventário/mochila.",
  },
  {
    nome = "Autocarga",
    classe = "II",
    preco = 10,
    descricao = "Quando a munição acaba, o equipamento recarrega automaticamente ao custo de uma ação de Reação desde que a munição esteja no bolso ou em um acessório.",
  },
  {
    nome = "Chamado do portador",
    classe = "II",
    preco = 10,
    descricao = "o portador do objeto com este encantamento gasta uma ação bônus para fazê-lo retornar voando para si; Raio de funcionamento [rank] quilômetros de distância.",
  },
  {
    nome = "Domesticador",
    classe = "II",
    preco = 10,
    descricao = "garante ao portador do acessório com este encantamento vantagem nos testes sociais para amansar e domar criaturas durante o primeiro contato.",
  },
  {
    nome = "Escudeiro do aventureiro",
    classe = "II",
    preco = 10,
    descricao = "o portador do objeto com este encantamento pode rolar dados de iniciativa com vantagem e ficar com o critério de desempate ao seu favor.",
  },
  {
    nome = "Golpe duplo",
    classe = "II",
    preco = 10,
    descricao = "sempre que o portador da arma/canalizador com este encantamento tirar crítico positivo no acerto, ganhará o direito de rolar um segundo ataque contra o mesmo oponente.",
  },
  {
    nome = "Guerreiro arcano",
    classe = "II",
    preco = 10,
    -- Texto conferido contra livro/por-documento/2.9.md:714
    descricao = "escolha um poder ativo, e toda vez que o portador usar uma habilidade de tal poder receberá +2 de acerto ou +10 de dano/escudo/cura; Escolha durante fabricação",
  },
  {
    nome = "Incorporação melhorada",
    classe = "II",
    preco = 10,
    descricao = "acrescenta +10% de Absorção de Danos ao portador, respeitando os limites de Absorção de Dano.",
    efeitos = { absorcao = 10 },
  },
  {
    nome = "Melhor amigo",
    classe = "II",
    preco = 10,
    descricao = "garante ao equipamento com este encantamento a capacidade de se transformar em uma Besta doméstica comum, leal ao portador.",
  },
  {
    nome = "Quebrador",
    classe = "II",
    preco = 10,
    descricao = "a arma/canalizador com este encantamento aplica 50% mais de dano contra construções e outros objetos.",
  },
  {
    nome = "Remover Encantamento II",
    classe = "II",
    preco = 10,
    descricao = "o artíficie remove um encantamento de Classe II de um objeto, desde que seja um encantamento presente nesta loja.",
  },
  {
    nome = "Salvaguarda",
    classe = "II",
    preco = 10,
    descricao = "uma vez por combate, o portador do objeto com este encantamento pode recuperar 4d6 de vida; Este valor é 6d6 caso esteja caído.",
  },
  {
    nome = "Tenacidade flamejante",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Fogo].",
  },
  {
    nome = "Tenacidade aquática",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Água].",
  },
  {
    nome = "Tenacidade iluminada",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Dia].",
  },
  {
    nome = "Tenacidade sombria",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Noite].",
  },
  {
    nome = "Tenacidade elétrica",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Eletricidade].",
  },
  {
    nome = "Tenacidade terrana",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Terra].",
  },
  {
    nome = "Tenacidade sagrada",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Sagrado].",
  },
  {
    nome = "Tenacidade maldita",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Maldição].",
  },
  {
    nome = "Tenacidade venenosa",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Veneno].",
  },
  {
    nome = "Tenacidade vegetal",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Planta].",
  },
  {
    nome = "Tenacidade aérea",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Vento].",
  },
  {
    nome = "Tenacidade gelada",
    classe = "II",
    preco = 10,
    descricao = "o portador do escudo/armadura com este encantamento recebe resistência ao elemento [Gelo].",
  },
  {
    nome = "Artefato arcano",
    classe = "III",
    preco = 15,
    -- Texto conferido contra livro/por-documento/2.9.md:733
    descricao = "permite que um pergaminho de habilidades seja absorvido pelo objeto com este encantamento, e dará ao portador a capacidade de usar a habilidade por uma estação, com o gasto de aura/mana.",
  },
  {
    nome = "Contragolpe",
    classe = "III",
    preco = 15,
    descricao = "dá ao portador do escudo/armadura/arma/canalizador com este encantamento a chance de gastar uma reação por combate, por inimigo, para atacar o mesmo caso o portador seja atacado.",
  },
  {
    nome = "Domínio da leitura",
    classe = "III",
    preco = 15,
    descricao = "acessórios com este encantamento dão ao portador capacidade de ler e escrever sem a necessidade da perícia \"Acadêmicos\", desde que seja um idioma que o portador conheça.",
  },
  {
    nome = "Fígado de mendigo",
    classe = "III",
    preco = 15,
    descricao = "o portador do objeto com este encantamento se torna imune a efeitos de [Embriagado], [Ébrio] e [Dopado].",
  },
  {
    nome = "Golpe arcano",
    classe = "III",
    preco = 15,
    -- Texto conferido contra livro/por-documento/2.9.md:737
    descricao = "aumenta o passo de dano da arma em 1. Em canalizadores energéticos, apenas funciona com habilidades ou feitiços de dano.",
  },
  {
    nome = "Herói arcano",
    classe = "III",
    preco = 15,
    -- Texto conferido contra livro/por-documento/2.9.md:738
    descricao = "escolha um poder ativo, e toda vez que o portador usar uma habilidade de tal poder receberá +3 de acerto ou +15 de dano/escudo/cura; Escolha durante fabricação",
  },
  {
    nome = "Incorporação Total",
    classe = "III",
    preco = 15,
    descricao = "acrescenta +15% de Absorção de Danos ao portador, respeitando os limites de Absorção de Dano.",
    efeitos = { absorcao = 15 },
  },
  {
    nome = "Nemesis",
    classe = "III",
    preco = 15,
    -- Texto conferido contra livro/por-documento/2.9.md:740
    descricao = "durante o encantamento de uma armadura ou escudo, o portador escolhe um tipo de [Criatura], que se tornará o Nemesis do objeto, e toda vez que enfrentar tais criaturas receberá +3 em todas as suas defesas.",
  },
  {
    nome = "Remover Encantamento III",
    classe = "III",
    preco = 15,
    descricao = "o artíficie remove um encantamento de Classe III de um objeto, desde que seja um encantamento presente nesta loja.",
  },
  {
    nome = "Tenacidade múltipla",
    classe = "III",
    preco = 15,
    descricao = "escolha dois elementos não-neutros para ganhar resistência aos mesmos.",
  },
  {
    nome = "Tesouro do aventureiro",
    classe = "III",
    preco = 15,
    -- Texto conferido contra livro/por-documento/2.9.md:743
    descricao = "permite ao portador do objeto com este encantamento rolar todos os seus testes de loot com vantagem, e escolher o resultado que preferir.",
  },
}

function CatalogoEncantamentos.buscar(nome)
  for _, e in ipairs(CatalogoEncantamentos.itens) do
    if e.nome == nome then return e end
  end
  return nil
end

function CatalogoEncantamentos.porClasse(classe)
  local r = {}
  for _, e in ipairs(CatalogoEncantamentos.itens) do
    if e.classe == classe then table.insert(r, e) end
  end
  return r
end

return CatalogoEncantamentos
