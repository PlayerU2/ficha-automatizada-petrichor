-- =====================================================================
-- CATALOGO DE RACAS - Ficha Petrichor
-- Fonte: [1.6] Racas (compilacao .bib)
--
-- CATEGORIAS E LIBERACAO (regra da mesa):
--   'Jogavel'    (10) - livres, sem restricao (salvo o que a propria raca disser)
--   'NaoJogavel' (13) - exigem uma qualidade que libere especificamente a
--                       raca, ou autorizacao expressa do mestre
--   'Primordial' (7)  - NUNCA disponiveis; so com autorizacao explicita do
--                       mestre (marcada na propria ficha)
--
-- Restricoes especificas vindas do texto das qualidades:
--   sangueAntigas   = true se a raca esta na lista de 'Sangue das racas antigas'
--                     (Lobisomens NAO esta, apesar de ser nao-jogavel)
--   mesticoPermitido= false para Vampiros e Lobisomens (o texto de 'Mestico'
--                     veta essas duas expressamente)
--
-- 'caracteristicas' = os tracos raciais ja divididos item a item
-- (nome + descricao), para a ficha exibir cada um em seu proprio painel e
-- para o sorteio/escolha do Mestico funcionar por caracteristica.
-- =====================================================================

local CatalogoRacas = {}

-- Caracteristica exclusiva de humanos PUROS: mesticos de humano com outra
-- raca nao podem receber "Favorecimento divino".
CatalogoRacas.CARACTERISTICA_SO_HUMANO_PURO = "Favorecimento divino"

CatalogoRacas.itens = {
    {
        chave = "Anoes",
        nome = "Anões",
        categoria = "Jogavel",
        origem = "Grún",
        tipo = "Terrestre",
        alinhamento = "Leal-Neutro",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[8 metros]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 8 },
        caracteristicas = {
            {
                nome = "Vigorosos",
                descricao = [==[Receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Anões passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à escuridão das montanhas e cavernas, os anões conseguem enxergar no escuro em tons de cinza, até 18 metros à frente]==],
            },
            {
                nome = "Artesão",
                descricao = [==[Escolha entre ferramentas de ferreiro, pedreiro ou cervejeiro. Os anões possuem um talento natural para o artesanato, especialmente relacionado a pedra e metal. Quando em terrenos rochosos ou montanhosos, os anões podem realizar testes de Inteligência (Acadêmicos) relacionados a estruturas, túneis ou formações naturais, dobrando seu bônus de proficiência]==],
            },
        },
        tracos = [==[[Vigorosos] receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Anões passa a ser 10 ao invés de 8. [Visão no Escuro] Acostumados à escuridão das montanhas e cavernas, os anões conseguem enxergar no escuro em tons de cinza, até 18 metros à frente. [Artesão] Escolha entre ferramentas de ferreiro, pedreiro ou cervejeiro. Os anões possuem um talento natural para o artesanato, especialmente relacionado a pedra e metal. Quando em terrenos rochosos ou montanhosos, os anões podem realizar testes de Inteligência (Acadêmicos) relacionados a estruturas, túneis ou formações naturais, dobrando seu bônus de proficiência.]==],
        lore = [==[Fisiologia
  São seres robustos e compactos, geralmente medindo entre 1,25 e 1,55 metros de altura, possuem uma estrutura corporal única que os torna perfeitamente adequados para seu estilo de vida subterrâneo e suas ocupações tradicionais. Sua estrutura óssea excepcionalmente densa proporciona uma força e durabilidade surpreendentes para seu tamanho. Esta densidade óssea, combinada com uma musculatura compacta e poderosa, resulta em um peso corporal proporcionalmente maior que o de outras raças, geralmente variando entre 60 e 90 kg. A ênfase na força do tronco superior e dos braços os torna ideais para o trabalho pesado de mineração e forja, enquanto suas pernas curtas e robustas, oferecem estabilidade em terrenos irregulares comuns em cavernas e minas.   Os cabelos e pelos faciais dos anões são outro aspecto distintivo de sua fisiologia. Grossos e resistentes, os cabelos crescem rapidamente, e as barbas nos homens começam a se desenvolver desde cedo na adolescência. As cores variam, mas geralmente incluem tons de castanho, ruivo e preto, com ocorrências raras de loiro ou grisalho. Estes pelos não são apenas uma característica estética, mas também oferecem proteção adicional contra o frio e a umidade das cavernas. Sua pele é grossa é resistente, que proporciona uma proteção natural contra abrasões e pequenos cortes e capacidade de suportar temperaturas extremas, especialmente o calor intenso das forjas. A pigmentação desta varia em tons de bronze a marrom escuro, embora existam tons mais claros.    São adaptados para viverem nas profundezas, com um pulmão mais resistente e um coração mais forte. Seus sentidos são sintonizados com seu ambiente. Donos de olhos geralmente em tons de castanho, verde ou cinza, são capazes de ver em condições com pouca luz e possuem uma proteção adicional contra os detritos da mina. Sua audição é aguçada, o que lhes torna capazes de detectarem vibrações sutis nas rochas e seu olfato é mais desenvolvido, útil para detectar gases perigosos em minas. Curiosamente, muitos anões também nascem com uma afinidade natural para sentir a presença de metais e pedras preciosas, uma habilidade que beira o sobrenatural.   Devido ao local em que vivem, sua alimentação é adaptada para extrairem mais nutrientes e possuem uma tolerância natura a certos tipos de fungos e minerais que seriam tóxicos para outras raças. São seres longevos, com uma expectativa de vida de 300 a 400 anos. Envelhecem fisicamente de forma muito mais lenta que raças de vida mais curta, mantendo seu vigor por décadas a fio. Esta longevidade se reflete também em seu desenvolvimento: a maturidade sexual é atingida apenas por volta dos 30-40 anos. Tem uma capacidade única e misteriosa, a de entrar em um estado conhecido como "transe de pedra", que lhes dá a habilidade de permanecerem imóveis por longos períodos e serve muito bem como uma forma de camuflagem em ambientes rochosos.

 História
  Quando o mundo ainda estava em formação, Grún concebeu os anões como seus filhos prediletos, dotando-os de força, resistência e uma afinidade inata com a pedra e os metais. Desempenham um papel crucial na formação do mundo, uma vez que suas habilidades inatas em engenharia e construção são fundamentais para estabilizar estruturas geológicas. Escavam túneis, reforçam cavernas e erguem suas cidades subterrâneas, criando uma rede intrincada de passagens e salões que se estendem por todo o subsolo do mundo.   À medida que suas habilidades se desenvolviam, os anões descobriram os segredos da metalurgia e da forja. Grún, em sua sabedoria, revelou a eles os mistérios dos metais e das gemas, e os anões logo se tornaram mestres inigualáveis na arte de trabalhar estes materiais. Suas criações, desde simples ferramentas até armas e armaduras lendárias, tornaram-se objetos de desejo e admiração. Seus reinos crescem em poder e esplendor, com cidades esculpidas nas entranhas de montanhas, adornadas com outro e pedras preciosas.   A riqueza dos anões cresceu, assim como sua influência no mundo superior. Estabeleceram-se rotas comerciais, e os produtos do artesanato anão tornaram-se altamente valorizados por todas as outras raças. Existem conflitos, pois nem todos permaneceram fiéis a divindade materna e aos princípios de ordem e riação. Alguns grupos de anões foram seduzidos por promessas de poder e liberdade oferecidas pelas forças do caos, que os levou a guerras internas que levou à formação de clãs e facções diferentes, alguns dos quais se afastaram das tradições ancestrais.  Conflito com elfos por recursos naturais, batalham contra orcs e goblins que ameaçam suas fortalezas, drows que buscam suas riquezas e dragões que fazem suas cidades de ninhos, moldam a cultura guerreira dos anões que se tornaram formidáveis, conhecidos por sua tenacidade e bravura nos campos de batalha. Dentre todos os acontecimentos, alguns clãs anões estabeleceram colônias na superfície em cidades-fortaleza nas enconstas de montanhas. Tais comunidades servem como pontos de contato entre o mundo anão e outras raças, permitindo que o comércio seja facilitado.   A Era dos Heróis viu o surgimento de lendários campeões anões, cujos feitos são cantados até hoje em salões subterrâneos e tavernas da superfície. Estes heróis não apenas defenderam seus lares contra ameaças externas, mas também empreenderam jornadas épicas, descobrindo artefatos perdidos e desvendando segredos antigos. A chegada da magia arcana ao mundo trouxe novos desafios e oportunidades para os anões. Embora naturalmente mais inclinados às artes práticas, muitos anões abraçaram o estudo da magia, desenvolvendo uma forma única de encantamento rúnico que combinava seu conhecimento ancestral de metalurgia com os novos poderes arcanos.

 Estilo de Vida   No coração da vida anã está o clã: sua estrutura social é centrada em torno dessas unidades familiares extensas, que frequentemente remontam suas linhagens a heróis lendários ou fundadores de grandes cidades subterrâneas. Dentro do clã, cada anão tem um papel e uma responsabilidade específicos, contribuindo para o bem-estar coletivo. A lealdade ao clã é considerada sagrada, e os laços familiares são mantidos por gerações.   O dia a dia na sociedade gira em torno do trabalho, que é visto não apenas como um meio de subsistência, mas como uma forma de honrar Grún e contribuir para a grandeza de seu povo. Os anões acordam cedo, mesmo vivendo em cidades subterrâneas onde a luz do sol não penetra. O ritmo de suas vidas é marcado não pelo sol, mas por sinos profundos que ecoam através dos túneis e cavernas, anunciando o início e o fim dos turnos de trabalho. A maioria dos anões se dedica a profissões relacionadas à mineração, metalurgia, joalheria ou engenharia. As minas anãs são obras-primas de eficiência e segurança, com sistemas complexos de ventilação, drenagem e transporte. Nas forjas, os mestres artesãos trabalham incansavelmente, transformando metais brutos em obras de arte funcionais. A busca pela perfeição técnica é uma constante, com aprendizes passando décadas aperfeiçoando suas habilidades sob a tutela de mestres experientes.   Suas cidades são vastos complexos subterrâneos, com salões grandiosos sustentados por colunas maciças e decorados com entalhes intrincados. As habitações, embora robustas e práticas, não carecem de conforto. A cerveja anã é uma parte integral de sua dieta e cultura, com cada clã orgulhosamente produzindo suas próprias variedades únicas. Desde cedo, as crianças anãs são introduzidas às tradições de seu clã e às habilidades básicas de mineração e artesanato. A alfabetização é universal, com grande ênfase no estudo da história anã e nas complexas técnicas de engenharia e metalurgia. O treinamento militar também é uma parte importante da cultura deste povo.   A espiritualidade permeia todos os aspectos de sua vida. A veneração a Grún é central em sua cultura, com rituais e festivais dedicados à deusa ocorrendo regularmente. Muitos anões também praticam uma forma de meditação conhecida como "comunhão com a pedra", onde buscam sintonizar-se com a própria essência da terra.]==],
    },
    {
        chave = "Drow",
        nome = "Drow",
        categoria = "Jogavel",
        origem = "Noctefir",
        tipo = "Terrestre",
        alinhamento = "Neutro mau",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[10 metros]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 10 },
        caracteristicas = {
            {
                nome = "Mestres da domesticação",
                descricao = [==[Recebem a perícia "Animais (Carisma)" gratuitamente e rolam os testes da mesma com +1 até o nível 10, e a partir do 11 com +2]==],
            },
            {
                nome = "Mente fechada",
                descricao = [==[Recebe +2 no modificador Defesa Mental (DM)]==],
            },
            {
                nome = "Resistência a venenos",
                descricao = [==[Recebe resistência contra danos de quaisquer venenos de origem mundana]==],
            },
        },
        tracos = [==[[Mestres da domesticação] recebem a perícia "Animais (Carisma)" gratuitamente e rolam os testes da mesma com +1 até o nível 10, e a partir do 11 com +2. 
[Mente fechada] recebe +2 no modificador Defesa Mental (DM). 
[Resistência a venenos] recebe resistência contra danos de quaisquer venenos de origem mundana.]==],
        lore = [==[Fisiologia
  Os Drow, habitantes das profundezas de Petrichor, possuem uma fisiologia adaptada ao ambiente hostil e sombrio das cavernas. Como uma raça criada para prosperar na escuridão, suas características físicas e habilidades refletem sua capacidade de sobrevivência e domínio sobre as profundezas. Possuem pele variando do ébano profundo ao cinza escuro, que lhes confere camuflagem natural em ambientes subterrâneos. Seus corpos são esguios e graciosos, com uma musculatura definida que lhes permite agilidade e flexibilidade em combate e movimento. Seus olhos brilham com tons que vão do vermelho ao violeta, refletindo a capacidade de enxergar nas trevas absolutas. Esses olhos são altamente sensíveis à luz, tornando-os vulneráveis em ambientes muito iluminados. Os cabelos dos Drow variam de brancos e prateados a tons mais escuros, como negro ou azul-escuro, muitas vezes usados como símbolo de status ou linhagem dentro de sua sociedade.
  Adaptados à vida nas trevas, sua visão é excepcional no escuro, podendo enxergar com clareza mesmo nas cavernas mais profundas. Seus ouvidos são igualmente aguçados, captando sons sutis e distantes, o que os torna mestres na arte da emboscada e da evasão. O olfato dos Drow é sensível a cheiros específicos do submundo, como gases tóxicos ou a presença de certas criaturas perigosas, permitindo-lhes detectar ameaças antes mesmo de serem vistas. Os Drow são uma raça de vida longa, vivendo séculos e, em casos raros, até milênios. Sua longevidade lhes confere uma perspectiva ampla e paciente, o que os torna mestres da intriga e da política. Embora esguios, são extremamente resistentes, suportando toxinas e venenos que seriam letais para outras raças. Essa resistência é um reflexo de sua adaptação ao ambiente venenoso das profundezas, onde plantas e criaturas venenosas são comuns.
  Possuem uma afinidade natural com a magia das sombras e da escuridão., sendo especialistas em feitiços que envolvem ilusão encantamento e necromancia. Muitos se tornam arquimagos poderosos, capazes de manipular a própria essência das trevas para seus propósitos. Além disso, são exímios na criação e domesticação de criaturas do submundo, utilizando sua inteligência e astúcia para transformar feras perigosas em aliados poderosos. Eles treinam criaturas como Driders, Aranhas Gigantes e Lacraias Colossais para servir como guardiões e montarias em suas cidades subterrâneas. Uma das raças mais comuns que os Drow mantêm sob seu domínio são os Goblins, pequenos e ágeis troglóbios criados pelo deus Mungus. Embora não considerem os Goblins parte de sua hierarquia, os utilizam como mão de obra, batedores e, ocasionalmente, como espiões e saqueadores. Eles toleram tais criaturas em suas cidades, fornecendo-lhes proteção em troca de lealdade e serviço.

 História
  Os Drow foram criados pelo deus Noctefir, o Senhor das Trevas e dos Mistérios, como uma raça que encarnava a essência da escuridão e a beleza oculta nas profundezas do mundo. Com o objetivo de equilibrar o poder da luz trazido ao mundo pelos Elfos de Ditrys, Noctefir moldou os Drow em cavernas profundas, onde a escuridão reinava absoluta. Noctefir, utilizando o silêncio eterno das cavernas, o brilho sutil dos cristais lunares e a essência das sombras mais profundas, deu vida aos primeiros Drow. Eles emergiram como seres de pele escura, olhos brilhantes como estrelas e uma conexão inata com as trevas. Desde o início, foram dotados de uma inteligência afiada, habilidades mágicas extraordinárias e uma inclinação natural para o sigilo e a astúcia.   Após sua criação, estabeleceram o Reino de Aethralis nas vastas redes de cavernas abaixo da superfície. As cidades Drow, como Llyr'nath e Nythralis, eram esculpidas em pedra negra, adornadas com cristais brilhantes e iluminadas por líquenes fosforescentes. Aethralis tornou-se um bastião de conhecimento arcano e intrigas políticas, onde os Drow exploravam os segredos da magia e do universo, sempre buscando expandir seu domínio e poder. Os Drow se organizavam em clãs e famílias poderosas, cada uma liderada por um arquimago ou guerreiro de grande renome. Eles reverenciavam Noctefir como seu criador e protetor, realizando rituais secretos em sua honra e buscando seu favor nas decisões mais importantes. A sociedade Drow, baseada em hierarquia e mérito, era competitiva e implacável, onde apenas os mais fortes e astutos prosperavam.
  Enquanto os Drow prosperavam nas profundezas, os Elfos de Ditrys, criados para representar a perfeição e a harmonia da luz, floresciam nas florestas e vales da superfície. Apesar de ambos os povos serem belos e imortais, eles viam o mundo de maneiras opostas, o que plantou as sementes de uma rivalidade inevitável. O primeiro encontro entre Elfos e Drow ocorreu durante uma expedição élfica às profundezas, quando um grupo de exploradores descobriu uma entrada para o reino subterrâneo. Embora inicialmente o contato tenha sido pacífico, com trocas culturais e de conhecimento, a desconfiança mútua rapidamente se estabeleceu. Os Elfos, que adoravam a luz e a transparência, viam os Drow como perigosos e traiçoeiros, enquanto os Drow consideravam os Elfos arrogantes e cegos ao verdadeiro poder que residia na escuridão.   Os Elfos começaram a suspeitar que os Drow estavam se infiltrando em suas florestas e espiando seus segredos. Por outro lado, os Drow acreditavam que os Elfos planejavam tomar suas riquezas e destruir suas cidades. A paranoia cresceu de ambos os lados, e pequenos conflitos começaram a estourar nas fronteiras de seus domínios. O que começou como emboscadas e confrontos isolados logo evoluiu para um conflito de proporções cada vez maiores. O evento que desencadeou a guerra total foi o roubo de uma relíquia sagrada dos Elfos, que acreditavam que os Drow haviam tomado para enfraquecê-los. Em resposta, os Elfos atacaram uma cidade fronteiriça dos Drow, acusando-os de desrespeitar os pactos de paz. Os Drow, indignados, responderam com força total, e a rivalidade se transformou em uma guerra aberta.
  A Primeira Guerra das Estrelas foi o primeiro grande conflito que se tem registro, e a devastação que trouxe ao mundo é lembrada até hoje como um dos períodos mais sombrios da história. Com o ataque dos Elfos às suas cidades fronteiriças, os Drow convocaram todas as suas forças. Usando a magia das sombras e seu conhecimento submundano, eles lançaram ataques devastadores contra as fortalezas élficas. Durante a noite, os Drow se moviam como sombras mortais, invisíveis e implacáveis, enquanto durante o dia, os Elfos retaliavam com a luz de Ditrys, queimando e purificando tudo o que encontravam em seu caminho. As batalhas se estenderam tanto na superfície quanto nas profundezas. Os Drow usaram seus túneis e cavernas para lançar emboscadas mortais, enquanto os Elfos trouxeram sua magia natural e suas armas encantadas para enfrentar os Drow em seus próprios domínios. A guerra parecia interminável, com ambos os lados sofrendo pesadas perdas e nenhum conseguindo uma vitória decisiva.   A medida que a guerra se arrastava e o mundo se enchia de destruição, os deuses intervieram. Noctefir e Ditrys desceram ao campo de batalha, interrompendo o conflito em um evento conhecido como o Eclipse da Cisão. Reunindo os líderes dos Drow e dos Elfos, os deuses anunciaram que a guerra deveria cessar, mas que os culpados seriam punidos. Os Drow foram considerados os principais responsáveis pela guerra, acusados de manipulação e traição. Antes que a punição fosse aplicada, o Rei Drow, Sylas, se adiantou e assumiu a responsabilidade por todos os atos de seu povo. Ele implorou para que seus súditos fossem poupados e ofereceu a própria vida como sacrifício. Ditrys, impressionada pela coragem de Sylas, aceitou seu pedido e poupou os Drow da destruição completa, mas decretou que eles seriam exilados para as profundezas mais escuras da terra, longe da luz e do calor da superfície. Noctefir, triste e furioso, lançou uma maldição sobre Sylas e sua corte, transformando-os nos primeiros vampiros, condenados a uma eternidade de exílio e perseguição.
  Com a maldição de Noctefir e o decreto de Ditrys, os Drow foram forçados a abandonar suas cidades mais próximas da superfície e se refugiaram nas profundezas mais escuras. O exílio levou à fragmentação de sua sociedade, e muitos se perguntaram se um dia voltariam a ter o poder e a glória que um dia possuíram. Os Drow buscaram refúgio nas cavernas mais profundas, onde o calor da superfície não alcançava. Eles viajaram por túneis antigos e esquecidos, enfrentando perigos inomináveis e criaturas ancestrais que habitavam as profundezas. A necessidade de sobreviver em um ambiente ainda mais hostil uniu o povo Drow, que começou a se reorganizar em novas cidades e comunidades.   A sociedade Drow, antes governada por famílias e clãs nobres, fragmentou-se em pequenos grupos, cada um lutando para estabelecer seu próprio domínio. Muitos dos nobres Drow perderam suas posses e influência, e novos líderes surgiram, adaptando-se rapidamente às novas condições de vida. As novas cidades subterrâneas eram fortalezas esculpidas na rocha viva, protegidas por armadilhas e guardas, isoladas umas das outras. Para tentar manter a coesão entre as diferentes facções, foi criado o Conselho das Sombras, uma assembleia de líderes Drow que se reunia para tomar decisões importantes e resolver disputas. Embora o conselho não tivesse um poder absoluto, ele representava um esforço para manter a unidade e a identidade do povo Drow em meio ao caos do exílio, os Drow nunca esqueceram a humilhação que sofreram. Eles mantinham um profundo rancor contra os Elfos e a luz de Ditrys, vendo-se como vítimas de uma injustiça cósmica. Prometeram a si mesmos que um dia reconquistariam seu lugar no mundo e vingariam a traição dos Elfos.
  Apesar do exílio e das dificuldades, os Drow mostraram uma resiliência surpreendente, transformando as adversidades em força e redefinindo seu papel no mundo. Nas profundezas, os Drow encontraram novos recursos e oportunidades. Eles exploraram vastos sistemas de cavernas, encontrando minérios raros e plantas luminescentes que usaram para criar armas, artefatos mágicos e poções poderosas. Eles também estabeleceram contato com outras criaturas subterrâneas, formando alianças e protegendo seus territórios de ameaças externas. Os Drow, apesar da maldição, mantiveram sua devoção a Noctefir, mas o culto ao deus tornou-se mais sombrio e reservado. Eles viam seu deus como um mártir traído pelos deuses da luz, e seus rituais se tornaram ainda mais secretos e místicos. Os sacerdotes e sacerdotisas de Noctefir, agora conhecidos como os Guardiões das Trevas, ganharam grande influência, guiando o povo com visões e profecias.   Eventualmente, os Drow se reencontraram com os descendentes de Sylas e sua corte amaldiçoada, agora transformados em vampiros. Embora houvesse desconfiança e hostilidade, alguns Drow viram nos vampiros uma oportunidade de aliança, utilizando seu poder para influenciar o mundo da superfície. Outros, porém, rejeitaram completamente esses parentes distantes, considerando-os uma lembrança vergonhosa de sua queda. Com o tempo, uma parte dos Drow abandonaram a esperança de retornar à superfície. Eles se redefiniram como os Senhores das Sombras, mestres das profundezas e do conhecimento proibido. Sua sociedade se tornou uma teia de intrigas e segredos, onde cada passo era calculado e cada palavra tinha um significado oculto. Eles abraçaram sua identidade como um povo destinado a prosperar na escuridão, sempre esperando pelo momento certo para emergir e mostrar ao mundo sua verdadeira força.

 Estilo de vida
  A sociedade Drow é intrincada e baseada em uma rígida hierarquia de poder e influência, onde o mais forte e astuto sempre deve estar no topo. Vivendo em um mundo de escuridão e traição, os Drow desenvolveram uma cultura focada em sobrevivência, poder e controle. A raça é organizada em Casas e Clãs, cada um governado por um líder poderoso, seja um guerreiro de renome ou um arquimago influente. Cada Casa compete por poder e influência dentro da sociedade Drow, utilizando meios como a intriga, o assassinato e alianças temporárias para ganhar vantagem sobre as outras. A liderança de uma Casa é geralmente herdada, mas pode ser desafiada por outros membros através de rituais de duelo ou conspirações. A sobrevivência do mais forte é uma regra fundamental entre os Drow, e traição é vista como uma ferramenta legítima de ascensão.
  Embora não possuam um sistema de monarquia, os Drow se organizam em um Conselho das Sombras, composto pelos líderes das Casas mais poderosas. Este conselho toma decisões importantes que afetam todas as cidades Drow e mantém a ordem entre as diferentes facções. O Conselho das Sombras é um ninho de intrigas e manipulação, onde cada líder tenta expandir sua influência enquanto protege seus próprios interesses. Lealdade e confiança são raros, e alianças mudam rapidamente conforme as circunstâncias. Valorizam tanto a força física quanto a intelectual. Aqueles que demonstram poder em combate e habilidade mágica ocupam as posições mais altas na sociedade. Abaixo dos líderes, estão os soldados de elite, magos e assassinos, que executam as ordens e protegem os interesses de suas Casas. Os mais fracos ou incompetentes são relegados a posições subservientes, e muitos Drow passam a vida buscando formas de ganhar poder e prestígio, seja pela força ou pelo conhecimento. As Casas estão constantemente em conflito, buscando destruir ou enfraquecer seus rivais. No entanto, em momentos de ameaça externa, eles são capazes de se unir temporariamente para enfrentar um inimigo comum, apenas para voltar a lutar entre si quando a ameaça passa.
  Os Goblins, embora vistos como inferiores, são uma parte importante da sociedade Drow. Eles realizam tarefas como mineração, espionagem e manutenção das defesas das cidades subterrâneas. Os Drow, apesar de desprezarem os Goblins, os utilizam como mão de obra barata e descartável, recompensando-os apenas com o suficiente para garantir sua lealdade. Em troca de proteção e algum acesso ao poder dos Drow, os Goblins agem como batedores e saqueadores, acumulando riquezas para si e seus mestres. Muitas vezes, são forçados a viver em áreas mais pobres das cidades Drow, longe dos olhos da nobreza.
   A ascensão ao poder entre os Drow é marcada por rituais complexos e muitas vezes mortais. Para provar seu valor, os Drow devem passar por provas de habilidade, intelecto e traição, eliminando rivais e conquistando alianças. Os rituais de ascensão são momentos de grande tensão, onde qualquer erro pode significar a morte ou o exílio. Veneram Noctefir como seu criador e protetor, realizando rituais e sacrifícios em seu nome. O culto a Noctefir é mantido por sacerdotes e sacerdotisas que detêm grande poder e influência na sociedade. Eles são responsáveis por interpretar a vontade do deus e guiar os Drow em tempos de crise. A domesticação de criaturas do submundo é uma arte dominada pelos Drow. Eles criam feras como aranhas gigantes, lagartos cavernosos e até wyverns sombrios como parte de sua defesa e arsenal de guerra. Essas criaturas são treinadas para obedecer apenas aos comandos de seus mestres, e a perda de uma dessas feras é vista como um grande fracasso.
   Os Drow construíram um império subterrâneo nas profundezas de Petrichor. Suas cidades são fortalezas ocultas, conectadas por túneis e passagens secretas. Cada cidade é autossuficiente, com seus próprios recursos e defesas, mas todas fazem parte de uma rede maior de influência e poder. São desconfiados de todas as outras raças e raramente se envolvem em alianças permanentes. Eles veem os Elfos da superfície como inimigos mortais e os humanos como ferramentas para seus próprios fins. Os Goblins são tolerados apenas por sua utilidade, e outras criaturas do submundo são vistas como rivais ou possíveis aliados temporários. São considerados mestres do comércio de itens proibidos e contrabando. Eles negociam artefatos mágicos, venenos e informações com outras raças, sempre mantendo suas verdadeiras intenções ocultas. Suas rotas de contrabando são secretas e vigiadas por assassinos e criaturas treinadas.]==],
    },
    {
        chave = "Elfos",
        nome = "Elfos",
        categoria = "Jogavel",
        origem = "Ditrys",
        tipo = "Terrestre",
        alinhamento = "Neutro",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[10 metros]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 10 },
        -- O "OU" DO LIVRO (v0.42.0, B-04). [1.6], Elfos: "[Magia inata] receba
        -- +1 em testes de magia até o nível 10, a partir do 11 este bônus é
        -- de +2 OU [Conexão com a Natureza] receba +1 em testes das perícias
        -- Natureza e Sobrevivência...". E escolha EXCLUSIVA: o elfo fica com
        -- uma das duas. O extrator quebrou o texto em dois cards e a ficha
        -- aplicava so a Conexao, sem perguntar. A escolha fica em
        -- sheet.racaTracoEscolhido; temCaracRacial() so responde true para a
        -- escolhida. Unico caso em 29 racas (medido em 04/09/2026).
        escolhaExclusiva = { "Magia inata", "Conexão com a Natureza" },
        caracteristicas = {
            {
                nome = "Magia inata",
                descricao = [==[Receba +1 em testes de magia até o nível 10, a partir do 11 este bônus é de +2. (Escolha UMA: esta OU Conexão com a Natureza.)]==],
            },
            {
                nome = "Conexão com a Natureza",
                descricao = [==[Receba +1 em testes das perícias "Natureza" e "Sobrevivência" até o nível 10, a partir do 11 este bônus é de +2. (Escolha UMA: esta OU Magia inata.)]==],
            },
            {
                nome = "Agilidade élfica",
                descricao = [==[Receba 1 ponto adicional no atributo Destreza durante a criação da ficha, além disso o limite do mesmo para os Elfos passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Imunidade solar",
                descricao = [==[Devido a natureza de sua origem, os elfos são imunes a quaisquer danos vinculados ao elemento "Dia" ou derivados]==],
            },
        },
        tracos = [==[[Magia inata] receba +1 em testes de magia até o nível 10, a partir do 11 este bônus é de +2 OU [Conexão com a Natureza] receba +1 em testes das perícias "Natureza" e "Sobrevivência" até o nível 10, a partir do 11 este bônus é de +2. [Agilidade élfica] receba 1 ponto adicional no atributo Destreza durante a criação da ficha, além disso o limite do mesmo para os Elfos passa a ser 10 ao invés de 8. [Imunidade solar] devido a natureza de sua origem, os elfos são imunes a quaisquer danos vinculados ao elemento "Dia" ou derivados.]==],
        lore = [==[Fisiologia
  Os elfos possuem uma estrutura corporal esguia e elegante, com uma altura média que varia entre 1,60 a 2 metros. Possuem uma musculatura tonificada e definida, que combina força e agilidade. São dotados de uma beleza incomparável e o tom de pele varia entre o branco como a neve até o moreno amêndoa, e é geralmente suave e sem imperfeições, conferindo-lhes uma aparência jovem mesmo em idade avançada. A característica mais marcante dos elfos são suas orelhas pontiagudas, que são mais longas e afiadas do que as dos humanos. Essas orelhas sensíveis captam uma gama mais ampla de sons, permitindo-lhes ouvir ruídos a longas distâncias e detectar aproximações furtivas.   Além disso a longevidade dessa raça é incomparável com os outros mortais, pois, apesar de não serem imortais fisiologicamente, essa raça é capaz de viver centenas ou até milhares de anos, isso devido à Lumina Astra, um artefato lendário concedido por Unaris, que reside nas terras élficas e garante o dia eterno. Os elfos são capazes de permanecerem jovens desde que estejam em contato com a luz do dia em outras terras ou da própria Lumina Astra, não envelhecendo nestas condições.

 História
  A criação dos elfos, vinda de Ditrys, partiu da idealização de uma raça perfeita, que combinasse tanto inteligência, quanto beleza e destreza. Foi uma das raças mais tardias a serem criadas, pois enquanto seus irmãos criavam todas outras, ela os observava, analisando as imperfeições, falhas, a falta de virtudes, para que assim pudesse, trazer tudo corrigido em uma só. Em uma manhã dourada, quando o sol alcançou seu ápice, Ditrys usou a luz do dia, a pureza da natureza e a essência da magia de Unaris para moldar os primeiros elfos. Ela os criou em uma clareira encantada, onde os raios solares dançavam entre as folhas, infundindo vida e energia em suas criações, sendo essa clareira atualmente um território sagrado e secreto, onde diversos cultos acontecem e protegido por toda a raça élfica. Sua criação foi considerada um completo sucesso, exceto pelo defeito reflexo da própria deusa, seu orgulho, a necessidade por perfeição, a exigência máxima, sendo esse o defeito dos elfos, nunca visto como um defeito para Ditrys.   Os primeiros elfos, conhecidos como os Primogênitos, despertaram sob a luz de Ditrys, com uma compreensão inata das artes mágicas e uma profunda conexão com a natureza. Eles habitavam as florestas sagradas, onde aprenderam a ouvir a voz das árvores, a conversar com os animais e a manipular a magia em sua forma mais pura. Ditrys guiou os Primogênitos, ensinando-lhes a viver em harmonia com o mundo ao seu redor e a valorizar o equilíbrio entre todas as coisas. Com o tempo, os elfos se multiplicaram e se espalharam por diversas regiões, todas elas florestais, adaptando-se aos diferentes ambientes que encontraram. Nunca foram de se misturar com outras raças, valorizam o sangue acima de tudo, entretanto ainda existem as mínimas exceções.   O envolvimento em guerras por parte dos elfos apenas surge em extrema necessidade, onde até mesmo seus territórios estão em risco, mesmo sendo uma força formidável em batalhas, de outra forma não desperdiçam sangue e tendem a se manter neutros em todas as situações que envolvam conflitos de terceiros.

 Estilo de vida
  Os elfos são criaturas que vivem uma vida vinculada a magia, o culto a deusa Ditrys e a um estilo de vida e sociedade fortemente ligada a tradição e as aparências. Sua sociedade se organiza em duas castas: a primeira chamada "Altos Elfos", compostas por àqueles que pertencem as famílias da nobreza élfica, estes vivendo na cidade de Elvera. Já a outra casta é chamada de "Elfos Comuns", composta pela plebe élfica ou a pequena nobreza, e vivem na cidade de Sylvanar, entre as tribos élficas que vivem nas Terras Selvagens ou uma pequena minoria que mora nas grandes cidades lado-a-lado as criaturas de outras raças. 
  Devido a ligação da deusa Ditrys com a deusa Unaris, existe um fenômeno único que ocorre com seres desta raça: todos os elfos nascidos possuem um Coração de Mana e a habilidade inata de utilizar magia, isto faz com que desde muito novas as crianças sejam colocadas em tutoria para desenvolver suas capacidades mágicas. Naturalmente, áqueles nascidos de famílias com menos condições financeiras e acesso a equipamentos e materiais de qualidade elevada, possuem um acesso reduzido a um treinamento mágico de qualidade. Mesmo assim, reconhece-se que até os elfos mais humildes possuem treinamento de magia em pé de igualdade com magos nobres de outras raças. 
  Os elfos nutrem uma enorme rivalidade com a raça dos Drow e dos Vampiros, originadas desde a primeira guerra estelar, quando os Drow foram derrotados após uma disputa com os filhos de Ditrys pelo controle das florestas. Apesar do conflito ter se dissipado, a inimizade permaneceu ao longo dos séculos. Os elfos nunca confiam em drows, e qualquer tipo de contato amigável entre ser das duas espécies é considerada uma quebra de etiqueta grave, não sendo incomum que famílias e tribos expulsem membros que sejam considerados "amantes da escuridão", nome perjorativo dado a qualquer um trate bem os filhos de Noctefir. Já os vampiros são tratados ativamente como seres que precisam ser caçados, e o ato de um elfo matar esses seres vis o torna praticamente um herói em suas comunidades, existindo histórias de Elfos que foram alçados ao título de "Alto Elfo" por terem eliminado vampiros poderosos. 
  Um aspecto comum das sociedades élficas é o valor dado ao mérito, mas diferentemente das outras raças, não o mérito individual mas sim o familiar. Você será bem ou mal visto de acordo não só com as suas ações enquanto indivíduo, mas por aquelas que a sua família e os seus antepassados cometeram. Alguns acusam os elfos de possuírem um sistema de castas, mas estes recusam este estigma, já que a nobreza pode ser tanto atingida quanto perdida, com a diferença de que a avaliação não está ligada a existência de um elfo, mas da sua linhagem como um todo. A história conta que o Príncipe de Elvera, certa vez, respondeu esta acusação de um rei humano: "Você, nobre rei, pode matar seu povo inteiro de fome, que seu filho ainda assim usaria uma coroa. Eu, por outro lado, poderia ascender os elfos junto dos primordiais, e isto não garantiria uma coroa para meus filhos". Essa característica é tanto uma força quanto uma fraqueza, já que o individualismo é combatido, e os jovens elfos e elfas são ensinados a pensarem antes de cada frase dita, já que as consequências de seus atos podem ascender ou condenar as futuras gerações.]==],
    },
    {
        chave = "Fadas",
        nome = "Fadas",
        categoria = "Jogavel",
        origem = "Sidharis",
        tipo = "Aéreo",
        alinhamento = "Caótico-bom",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 8,
        deslocamentoTexto = [==[8 metros (terrestre) / 18 metros (voando)]==],
        dadoVidaTexto = [==[1d8]==],
        deslocamentoModos = { terrestre = 8, voo = 18 },
        caracteristicas = {
            {
                nome = "Graciosidade",
                descricao = [==[Recebe +1 ponto nos atributos Destreza e Carisma, além disso o limite dos mesmos para as Fadas passa a ser 9 ao invés de 8]==],
            },
            {
                nome = "Conexão com a natureza",
                descricao = [==[Receba +1 em testes das perícias "Natureza" e "Animais" até o nível 10, a partir do 11 este bônus é de +2]==],
            },
            {
                nome = "Asas feéricas",
                descricao = [==[Recebe a habilidade progressiva "Asas feéricas", que garante asas especiais das fadas, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é]==],
            },
        },
        tracos = [==[[Graciosidade] recebe +1 ponto nos atributos Destreza e Carisma, além disso o limite dos mesmos para as Fadas passa a ser 9 ao invés de 8.
[Conexão com a natureza] receba +1 em testes das perícias "Natureza" e "Animais" até o nível 10, a partir do 11 este bônus é de +2.
[Asas feéricas] recebe a habilidade progressiva "Asas feéricas", que garante asas especiais das fadas, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é.]==],
        lore = [==[Fisiologia
  Contrariamente à crença popular em outros reinos, as fadas possuem um tamanho similar ao dos humanos, geralmente variando entre 150 a 180 centímetros de altura. Sua origem é particularmente intrigante, pois nascem em um momento mágico específico: quando capturam o olhar de um mortal. Sua pele possui uma qualidade etérea, muitas vezes com um suave brilho iridescente que parece mudar de cor dependendo da luz e das emoções da fada, com capacidades regenerativas aceleradas.    Suas asas são, sem dúvida, a característica mais marcante: são proporcionais ao seu tamanho humanóide, geralmente se estendendo bem além de suas costas quando totalmente abertas. Possuem estrutura complexa, semelhantes às asas de libélulas ou borboletas. Translúcidas e iridescentes, refratam a luz de maneira deslumbrante e são retráteis, o que as torna quase invisíveis quando não estão em uso. De rostos com traços finos e delicados, seus olhos são particularmente notáveis, grandes e expressivos, muitas vezes em cores vibrantes e incomuns como violeta profundo, turquesa cintilante ou âmbar dourado e possuem uma acuidade visual extraordinária, permitindo que as fadas vejam em condições de pouca luz e detectem movimentos sutis com facilidade. Suas orelhas são levemente pontudas e altamente sensíveis, capazes de captar sons em frequências além da audição humana normal.   As Fadas são capazes de emitir um briho suave, que ficou conhecido como "aura fada", que pode variar em intensidade e cor para refletir seu estado emocional ou mágico. O aspecto mais extraordinário da fisiologia das fadas é, sem dúvida, seu nascimento. Elas vêm à existência no exato momento em que seus olhos encontram os de um mortal pela primeira vez. Este processo mágico de criação instantânea é um mistério mesmo para as próprias fadas, acreditando-se ser um dom direto da deusa Sidaris. Como resultado, cada fada tem uma conexão única e inexplicável com o mortal cujo olhar as trouxe à vida, embora a natureza e as implicações desta conexão variem grandemente.   A longevidade das fadas é notável, com muitas vivendo por vários séculos. No entanto, sua existência está intrinsecamente ligada à magia e à natureza do mundo. Mudanças drásticas no equilíbrio mágico ou ecológico do mundo podem afetar profundamente sua saúde e vitalidade.

 História
  Quando um mortal olhou sentindo admiração em algum momento, a magia de Sidaris aconteceu. As fadas emergiram como manifestações vivas da magia do mundo, nascendo do encontro entre o olhar mortal e a essência mágica do ambiente. Este nascimento único criou uma ligação intrínseca entre fadas e mortais, uma conexão que moldaria profundamente a história das raças. Dizem que cada tipo de fada representa um aspecto específico do mundo natural. Fadas de fogo, água, vento e terra eram as primeiras, ligadas diretamente aos elementos, sob o olhar humano. À medida que o mundo se tornava mais complexo, surgiram fadas de flores, frutas e até de emoções humanas, como alegria e tristeza.   Os mortais começaram a interagir com as fadas quando perceberam seu potencial mágico. Inicialmente, essa relação era simbiótica: os humanos respeitavam as fadas e ofereciam presentes em troca de sua ajuda. No entanto, à medida que a ambição humana crescia, os laços de respeito foram se rompendo. À medida que as civilizações humanas e de outras raças começaram a se expandir e evoluir, as fadas gradualmente se retiraram para reinos mais isolados. Esta retirada não foi motivada por medo ou animosidade, mas por um desejo de preservar os locais de poder mágico e beleza natural que consideravam sagrados. Foi durante este período que muitos dos lendários reinos ocultos das fadas foram estabelecidos, escondidos em florestas profundas, vales secretos e outros locais de extraordinária beleza natural.   A Era do Grande Véu marcou um ponto de virada significativo na história das fadas. Frente às crescentes ameaças à natureza e aos locais mágicos, as mais poderosas fadas uniram suas forças para criar um véu mágico que ocultava muitos de seus reinos dos olhos de outras raças. A relação das fadas com os mortais sempre foi particularmente complexa. O vínculo único criado no momento do nascimento de cada fada levou a inúmeras histórias de amizades profundas, alianças poderosas e, ocasionalmente, conflitos trágicos entre os habitantes deste mundo.

 Estilo de vida
  O habitat de uma fada está profundamente ligado ao ambiente onde nasceram. Habitam florestas, campos de flores, margens de rios ou lugares onde sua essência mágica pode florescer. O dia a dia de uma fada é profundamente conectado com a natureza e a magia. Muitas dedicam parte de seu tempo a cuidar do ambiente ao seu redor, usando sua magia para promover o crescimento de plantas, curar animais feridos e manter o equilíbrio ecológico. Este trabalho não é visto como uma obrigação, mas como uma extensão natural de seu ser e uma forma de honrar Sidaris.   Valorizam a igualdade, embora existam aquelas que exerçam a liderança natural baseada em sabedoria, força ou antiguidade. Sua estrutura social é organizada em torno das diferentes espécies, com cada grupo desempenhando um papel crucial para o equilíbrio natural.  As fadas mais velhas assumem o papel de mentoras, guiando as mais jovens na arte da magia, no cuidado com a natureza e nas tradições de sua cultura. O conhecimento é altamente valorizado e frequentemente compartilhado através de histórias orais, canções mágicas e livros encantados.   A arte desempenha um papel central na vida das fadas. Música, dança, poesia e artes visuais não são apenas formas de expressão, mas também meios de canalizar e manifestar magia. Festivais elaborados são realizados regularmente para celebrar as mudanças das estações, eventos celestiais e marcos importantes na história das fadas. A dieta das fadas é principalmente vegetariana, consistindo em frutas, néctar de flores, seivas mágicas e outros alimentos derivados de plantas.    O conceito de trabalho para as fadas é diferente do entendido por muitas outras raças. Suas atividades diárias, sejam elas cuidar da natureza, criar arte ou praticar magia, são vistas como extensões naturais de seu ser, não como obrigações separadas. Isso resulta em uma sociedade onde as linhas entre trabalho, lazer e dever espiritual são frequentemente borradas. Não costumam interagir com outras raças, embora possuam aquelas que optem por deixar seus círculos e irem conviver com outras raças e atuarem como embaixadoras para promover a compreensão mútua e proteger os interesses da natureza e da magia. Sua maior interação é com os sátiros devido à ligação que ambas as raças possuem com a natureza. Porém, em relações românticas, não são gerados crias pois fadas não são capazes de gerar.   A vida das fadas é rodeada pela magia, a utilizam em todos os aspectos de sua vida, desde encantamentos para realizarem as tarefas diárias até rituais elaborados. Tal lhes garante uma visão única do mundo, fundindo o mundano e o místico. Sua existência mágica lhe permite que vivam muitos anos, existindo relatos de fadas que vivem até os 300 anos. Não possuem senso de pressa para conquistas pessoais, uma vez que o tempo está sempre ao seu favor.]==],
    },
    {
        chave = "Gnomos",
        nome = "Gnomos",
        categoria = "Jogavel",
        origem = "Din",
        tipo = "Terrestre",
        alinhamento = "Leal Bom",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 8,
        deslocamentoTexto = [==[8m]==],
        dadoVidaTexto = [==[1d8]==],
        deslocamentoModos = { terrestre = 8 },
        caracteristicas = {
            {
                nome = "Saúde pacífica",
                descricao = [==[Recebem imunidade contra quaisquer doenças de natureza mundana, não só aos efeitos mas também a transmissão, nunca ficando doentes]==],
            },
            {
                nome = "Druidismo gnomiano",
                descricao = [==[Recebe a habilidade progressiva "Druidismo gnomiano", que garante a capacidade de converter sua aura (ou mana) em fenômenos únicos da natureza]==],
            },
            {
                nome = "Tranquilidade",
                descricao = [==[É impossível tirar um gnomo do sério, são completamente imunes ao efeito "Enfurecido" e quaisquer atos de provocação]==],
            },
        },
        tracos = [==[[Saúde pacífica] recebem imunidade contra quaisquer doenças de natureza mundana, não só aos efeitos mas também a transmissão, nunca ficando doentes.
[Druidismo gnomiano] recebe a habilidade progressiva "Druidismo gnomiano", que garante a capacidade de converter sua aura (ou mana) em fenômenos únicos da natureza.
[Tranquilidade] é impossível tirar um gnomo do sério, são completamente imunes ao efeito "Enfurecido" e quaisquer atos de provocação.]==],
        lore = [==[Fisiologia
  São pequenos seres, medindo entre 1,15 e 1,45 metros de altura e possuindo uma pele de tonalidade que varia entre tons brancos a tonalidades coloridas diversas, refletindo sua conexão íntima com a natureza. Com olhos grandes e brilhantes, suas feições joviais e sorridentes são adornadas por cabelos frequentemente cacheados, muitas vezes decorados com flores e folhas. A longevidade média de um é entre 60 e 70 anos, embora alguns tenham a rara benção de viver até 300 anos, um mistério que permanece sem explicação, mas que é respeitado e admirado tanto pelos Gnomos quanto por outras raças. Estas criaturas não são fortes nem excepcionalmente ágeis, mas são espertos, carismáticos e muito furtivos. 
  A despeito de seu corpo não ser muito avantajado possuem uma saúde extremamente forte, sendo imunes a doenças e venenos que naturalmente matariam até as mais fortes espécies e criaturas existentes no mundo.  

 História
  Os Gnomos foram criados por Din, o deus da Paz, para trazer harmonia e alegria ao mundo. Sua criação é única: sempre que uma alma inocente é tirada de forma injusta, Din acolhe essa alma, transformando-a em uma dessas criaturas para que possa viver uma nova vida cheia de paz e felicidade​​. Assim, estes seres carregam em si uma missão de disseminar a paz e evitar conflitos, vivendo em perfeita harmonia com o meio ambiente. Historicamente sempre foram habitantes das colinas e florestas, onde estabelecem suas pequenas vilas e condados. Suas casas são muitas vezes construídas dentro das colinas ou escondidas sob a vegetação densa, proporcionando um refúgio seguro e discreto contra ameaças externas. Essa escolha de habitação também reflete sua natureza pacífica e sua aversão a conflitos.    Ao longo das Eras se mantiveram ausentes da participação em conflitos. Sua sobrevivência para alguns pode representar até um mistério considerando que não lutam, mas o fato é que estes seres peculiares não são senhores da guerra, mas são mestres da diplomacia, são astutos e capazes de sempre se colocarem em posição de formularem alianças que os protejam. A conexão entre os gnomos e seu deus criador também é especial, sendo o deus da paz uma das mais amorosas divindades para com os seus. Din foi a penúltima divindade a ser vista, e dizem que antes de seu sumiço confidenciou um segredo para os maiores anciões, que não foram compartilhados com nenhuma outra raça.   Se reproduzem como qualquer raça humanoide o faz, com a pequena diferença de que é muito raro um casal de gnomos produzir um filho. A geração de uma criança exige que o casal se ame em um nível considerado incondicional, de forma que as famílias e clãs crescem quando o fenômeno mágico de reprodução acontece e novos bebês simplesmente brotam da terra nos condados, vindo de almas inocentes que foram injustamente mortas... e assim essas crianças são acolhidas por uma família.

 Estilo de vida
  Sua vida é caracterizada por uma forte coesão comunitária e um modo de vida de subsistência. Vivem em pequenas vilas, onde todos trabalham juntos para o bem comum. Cada membro da comunidade tem um papel a desempenhar, e a colaboração é a base de sua sociedade. As crianças permanecem com suas famílias até os 15 anos, quando participam de um rito de passagem que marca a transição para a vida adulta e sua plena integração na comunidade. Os Gnomos são notoriamente pacíficos e evitam conflitos a todo custo. Quando confrontados com a ameaça de guerra ou violência, preferem se esconder ou migrar para novas áreas em vez de lutar. Esta abordagem tem garantido sua sobrevivência ao longo dos séculos e lhes permitido manter um estilo de vida tranquilo e harmonioso.   Também possuem uma relação estreita e amigável com as fadas, com quem compartilham muitos valores e tradições. Este vínculo é reforçado pela devoção comum a Din e à deusa Sidharis, que é considerada uma mãe para o povo. Esta aliança resulta em frequentes intercâmbios culturais e mágicos, e suas vilas são destinos procurados por aqueles que desejam aprender a magia da natureza, especialmente o druidismo, no qual são mestres inigualáveis. Não utilizam dinheiro. Em vez disso, realizam trocas baseadas em solicitações que podem parecer sem sentido para os estrangeiros, como ingredientes comuns ou serviços triviais. Esta prática reflete sua visão de mundo, que valoriza a utilidade e a conexão com a natureza acima da acumulação de riquezas materiais.    Seus rituais funerários são tão únicos quanto sua cultura. Quando um dos seus morre, o corpo é transformado em cinzas brilhantes através de um ritual mágico, e estas cinzas são levadas pelo vento, simbolizando o retorno à terra e a continuidade do ciclo da vida. Este rito é uma celebração da vida e um reconhecimento do papel eterno que cada ser desempenha na manutenção do equilíbrio natural.]==],
    },
    {
        chave = "Humanos",
        nome = "Humanos",
        categoria = "Jogavel",
        origem = "Zeno",
        tipo = "Terrestre",
        alinhamento = "Caótico Neutro",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[10m]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 10 },
        caracteristicas = {
            {
                nome = "Multitarefas",
                descricao = [==[Receba 1 perícia adicional livre na criação da ficha]==],
            },
            {
                nome = "Versatilidade humana",
                descricao = [==[Receba 1 ponto adicional de atributo na criação da ficha, este atributo passará a ter o limite de 10 ao invés de 8]==],
            },
            {
                nome = "Favorecimento divino",
                descricao = [==[Os humanos são reconhecidos como seres que possuem mais boa vontade com os deuses do que os outros. Esta característica faz esta raça ganhar um ponto de favor ao completar uma tarefa para uma divindade, ao invés do meio-ponto que é o padrão, e menos propícia a perder favor ou receber qualquer tipo de punição. Não pode ser escolhida por aquele que adquirir a qualidade 'Mestiço']==],
            },
        },
        tracos = [==[[Multitarefas] Receba 1 perícia adicional livre na criação da ficha. [Versatilidade humana] Receba 1 ponto adicional de atributo na criação da ficha, este atributo passará a ter o limite de 10 ao invés de 8. [Favorecimento divino] Os humanos são reconhecidos como seres que possuem mais boa vontade com os deuses do que os outros. Esta característica faz esta raça ganhar um ponto de favor ao completar uma tarefa para uma divindade, ao invés do meio-ponto que é o padrão, e menos propícia a perder favor ou receber qualquer tipo de punição. Não pode ser escolhida por aquele que adquirir a qualidade 'Mestiço'.]==],
        lore = [==[Fisiologia
  Os humanos fazem parte das raças mais frágeis que se tem conhecimento, sua expectativa média de vida gira entorno de 55 a 60 anos embora existam aqueles que vivam muito mais do que isso. Sua altura média e seu peso pode variar desde àqueles muito magros até os muito pesados, a força, a inteligência e a velocidade das criaturas desta raça são médias em todos os sentidos, sendo considerados uma das criaturas mais versáteis que se tem conhecimento. Um aspecto curioso dos homens e mulheres é que a aparência "humana" na verdade é uma cópia da aparência divina, de forma que vários estudiosos chegaram a conclusão de que durante a concepção destes seres o deus primordial Zeno não influenciou de nenhuma forma sua aparência, e por isso vieram ao mundo a semelhança dos deuses.   Duas forças deste povo são sua habilidade reprodutiva: não existe nenhuma raça que seja nem de perto tão numerosa quanto os humanos, que são capazes de se reproduzirem independente das condições em que foram colocados. Enquanto muitos outros seres levam em consideração questões como equilíbrio mágico, ambiente e social, por padrão homens e mulheres não parecem levar estes fatores em consideração. O segundo grande aspecto é o da organização social, mesmo que sejam muito heterogêneos em sua aparência e personalidade, os humanos são capazes de se organizarem coletivamente independente das próprias diferenças e das dificuldades que permeiam os seus arredores, um traço também muito vinculado as capacidades absolutamente medianas de uma espécie que, encontrou nas relações sociais uma forma de se sobressaírem as outras criaturas superiores fisiologicamente.

 História
  Apesar de serem a raça mais numerosa, e muito pautados em registros e leis escritas, o mito de criação dos humanos não possuí uma versão oficial nem documentos que corroborem um relato especificamente. O que se sabe é que o deus primordial Zeno, depois de solicitar a Erinor o direito de ir e vir pelo mundo quando quisesse, viajou pela criação dos deuses e, durante sua viagem produziu várias crianças. Estas crianças foram concebidas a semelhança da própria divindade, e cresceram ao redor do mundo - muitas vezes sem conhecimento uma da outra - surgindo daí as primeiras famílias humanas. O que levou o deus a desejar visitar o mundo, quem foram as criaturas que se apaixonou na sua viagem ou o que fez após produzir seus filhos é um absoluto mistério.    Apesar de serem muito jovens, se sabe que os homens e mulheres rapidamente se espalharam pelo mundo, se reproduzindo e transformando famílias em clãs, depois em tribos, povoados e por fim em cidades depois que o período nômade chegou ao seu fim. Durante os conflitos entre as raças que aconteceram entre o fim da Primeira Era e a Segunda, esta raça foi de longe a que mais sofreu, inclusive acreditou-se em um determinado ponto da Segunda Era que seria uma questão de tempo até que fossem extintos como várias outras espécies que se perderam durante as grandes guerras. Não foi o caso, eles resistiram e depois prosperaram após o fim do conflito, para estarrecimento de outras criaturas muito mais poderosas.   Desde então este povo cresce, mais do que os outros, criando cidades, realizando inovações e cada vez mais moldando o mundo de acordo com sua própria moral. Fadados como seres que não são bons em nada, mas conseguem realizar tudo e, somado isto a sua resiliência e capacidade de organização coletiva os coloca como a grande Raça da Terceira Era.

 Estilo de vida
  Embora versáteis os humanos possuem um padrão de comportamento: gostam de viver em climas que variam de 0 a 30 graus, de preferência na superfície da terra e quase nunca de forma solitária. Naturalmente existem os desgarrados, mas a espécie como um todo se organiza envolta de cidades governadas por organizações políticas únicas. Ao se estudar outras raças, pode-se observar o funcionamento de uma única cidade e saber como tal povo como um todo administra suas terras, o mesmo não pode se dizer dos filhos de Zeno em que cada cidade é um mundo diferente.   Na questão da religião, estas criaturas de uma forma inexplicável cultuam pouco seu criador, até por ser o mais misterioso dos primordiais e não existir um único relato de Zeno auxiliar seus filhos. Ao invés disso os humanos não tem receio de se virarem para as outras divindades e buscarem nelas um alento em momentos difíceis. Misteriosamente, os outros deuses parecem sempre nutrir uma boa-vontade difícil de se explicar para com estas criaturas, o que inclusive é justificado como a fonte de desconfiança dos outros povos. Durante a alvorada da Segunda Era, não era incomum que uma porcentagem considerável de semideuses das divindades fossem de humanos, muitas vezes a revelia das próprias espécies filhas dos mesmos deuses.   Muitas informações sobre a história dos humanos se perderam durante a Segunda Era, quando o arquipélago onde o Grande Templo de Zeno estava localizado afundou nas guerras entre os diferentes povos. Existem historiadores e arqueólogos que até hoje tentam encontrar os vestígios deste templo para desvendar os mistérios desta raça, que permanecem obscuros.]==],
    },
    {
        chave = "Orcs",
        nome = "Orcs",
        categoria = "Jogavel",
        origem = "Kaern",
        tipo = "Terrestre",
        alinhamento = "Caótico Neutro",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[10m]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 10 },
        caracteristicas = {
            {
                nome = "Fisiologia de guerra",
                descricao = [==[Receba 1 ponto adicional nos atributos Força e Destreza na criação da ficha, além disso o limite dos mesmos para os Orcs passa a ser 9 ao invés de 8]==],
            },
            {
                nome = "Hemocinese",
                descricao = [==[Receba o poder exclusivo "Hemocinese" em sua ficha, começando com 1 ponto no mesmo e recebendo upgrades automáticos nos níveis 5, 10, 15 e 20; Se você já tiver upado o poder, os pontos recebidos se convertem em pontos de poder comuns]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à escuridão das montanhas, cavernas e da noite, os Orcs conseguem enxergar no escuro em tons de cinza, até 18 metros à frente]==],
            },
            {
                nome = "Sentidos de guerra",
                descricao = [==[Quando estiver em um combate, uma missão perigosa ou uma caça sua audição e visão se tornam aguçadas na distância de até (Nível x50) metros; Receba +2 em quaisquer testes desses sentidos nas circunstâncias citadas]==],
            },
        },
        tracos = [==[[Fisiologia de guerra] receba 1 ponto adicional nos atributos Força e Destreza na criação da ficha, além disso o limite dos mesmos para os Orcs passa a ser 9 ao invés de 8.
[Hemocinese] receba o poder exclusivo "Hemocinese" em sua ficha, começando com 1 ponto no mesmo e recebendo upgrades automáticos nos níveis 5, 10, 15 e 20; Se você já tiver upado o poder, os pontos recebidos se convertem em pontos de poder comuns.
[Visão no Escuro] Acostumados à escuridão das montanhas, cavernas e da noite, os Orcs conseguem enxergar no escuro em tons de cinza, até 18 metros à frente.
[Sentidos de guerra] quando estiver em um combate, uma missão perigosa ou uma caça sua audição e visão se tornam aguçadas na distância de até (Nível x50) metros; Receba +2 em quaisquer testes desses sentidos nas circunstâncias citadas.]==],
        lore = [==[Fisiologia
  Os Orcs são uma raça de seres robustos e imponentes, conhecidos por sua força física extraordinária e sua capacidade de resistência. Sua fisiologia reflete seu estilo de vida marcial e sua habilidade para sobreviver em ambientes hostis. Geralmente altos, com a maioria dos indivíduos medindo entre 1,80m e 2,10 metros de altura, e possuem uma musculatura densa e definida. Sua pele varia em tons de verde, cinza ou marrom.   Seus rostos são marcados por feições proeminentes e ferozes. Mandíbulas fortes e dentes afiados são características comuns, com presas que podem ser vistas mesmo quando a boca está fechada. Esses dentes são não apenas armas formidáveis em combate corpo a corpo, mas também são úteis para a dieta estritamente carnívora dos Orcs.   Os olhos dos Orcs são geralmente de cores escuras, como preto, marrom ou vermelho, e são adaptados para enxergar em condições de pouca luz, permitindo-lhes caçar e lutar eficazmente durante a noite ou em cavernas. Seus sentidos de audição e olfato também são bem desenvolvidos, ajudando-os a detectar presas e inimigos à distância.

 História
  Kaern, nascido da deusa da morte, Tenebria, e imbuído da fúria da guerra, desejava criar um povo que refletisse sua própria natureza implacável e formidável. Assim, ele moldou os primeiros Orcs a partir do barro da terra ensopada com o sangue dos guerreiros caídos, dando-lhes vida e infundindo-os com sua essência guerreira.   Nos primórdios, os Orcs eram poucos, mas sua força e determinação eram inigualáveis. As primeiras tribos surgiram em regiões selvagens e desoladas, onde a sobrevivência exigia habilidades de combate e uma resistência extraordinária. Kaern, desejando ver seus filhos prosperarem, desceu ao mundo mortal e ensinou-lhes as artes da guerra, a estratégia militar e a disciplina marcial, vivendo entre eles como um igual. Ele lhes concedeu o conhecimento de utilizar todos os tipos de armas e estilos de lutas.   Conforme as tribos orcs cresceram e se multiplicaram, sua ambição e sede de conquista também aumentaram. As histórias das grandes conquistas orc se espalharam como fogo em palha. Sob a liderança de chefes tribais carismáticos e destemidos, os Orcs começaram a invadir e dominar territórios vizinhos, subjugando outras raças, estabelecendo suas tribos nas terras atuais. Suas campanhas militares eram rápidas e devastadoras, movidas pela crença de que a piedade era reservada apenas aos amigos, enquanto os inimigos mereciam apenas a espada.   Apesar de sua força e unidade, os Orcs enfrentaram desafios internos. Conflitos de poder entre líderes tribais e disputas por territórios e recursos frequentemente levavam a guerras civis. No entanto, a ameaça de inimigos externos frequentemente forçava os Orcs a se unirem novamente, formando alianças temporárias para enfrentar os perigos comuns. A lealdade a Kaern e o respeito pelas tradições guerreiras eram as únicas constantes que mantinham a coesão da sociedade orc.

 Estilo de vida
  A sociedade orc é dividida em várias tribos, cada uma liderada por um chefe tribal, conhecido como Senhor da Guerra. Este título é conquistado através de feitos de bravura e habilidade em combate, e não é incomum que um Senhor da Guerra seja desafiado por aspirantes que desejam provar sua própria força e liderança.   Além do Senhor da Guerra, há também os anciãos e os xamãs. Os anciãos são os membros mais experientes da tribo, respeitados por sua sabedoria e conhecimento das tradições. Os xamãs, por sua vez, são os guias espirituais e religiosos, conectados aos deuses e aos espíritos da natureza. Eles desempenham um papel crucial em todos os aspectos da vida orc, desde a cura até a previsão do futuro e a condução de rituais.   Os rituais xamânicos são uma parte essencial da cultura orc. Os xamãs realizam cerimônias para honrar Kaern, o Deus da Guerra, e outros espíritos ancestrais. Estas cerimônias podem incluir danças, cânticos e sacrifícios, e são realizadas em ocasiões importantes como nascimentos, mortes, e antes de grandes batalhas.   A habilidade de um orc é medida a partir do número de argolas em seu corpo, geralmente espalhadas por todo o rosto, como piercings, podendo se apresentar também pelo resto do corpo, como braços e pernas. Cada argola significa uma morte da própria mão daquele ser, ofertada a Kaern em ritual.   Um dos rituais mais importantes é o "Rito de Passagem", onde os jovens orcs devem provar sua coragem e habilidade em combate para serem reconhecidos como membros adultos da tribo. Este rito geralmente envolve uma série de desafios físicos e mentais, culminando em um combate ritualístico supervisionado pelo Senhor da Guerra e pelos xamãs.   A vida diária dos orcs é marcada por um equilíbrio entre treinamento militar, caça, e atividades comunitárias. Desde cedo, os jovens orcs são treinados nas artes da guerra e da sobrevivência. As habilidades de combate, a caça e a forja de armas são ensinadas por guerreiros experientes. Os orcs também praticam a agricultura em pequena escala, cultivando plantas resistentes que complementam sua dieta carnívora.   A comunidade orc valoriza a camaradagem e a cooperação. Cada membro da tribo tem responsabilidades específicas, seja na caça, na construção, ou na defesa da aldeia. Atribuições são distribuídas com base na força, habilidade e experiência de cada indivíduo.]==],
    },
    {
        chave = "Lizarianos",
        nome = "Lizarianos",
        categoria = "Jogavel",
        origem = "Qosis",
        tipo = "Aquático",
        alinhamento = "Caótico",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[10m / 20m (aquático)]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 10, nado = 20 },
        caracteristicas = {
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Lizarianos passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Regeneração avançada",
                descricao = [==[Recupere adicionalmente 10% do seu total de vida por dia de descanso, regenerando também quaisquer órgãos perdidos com exceção do cérebro e coração]==],
            },
            {
                nome = "Fisiologia subaquática",
                descricao = [==[São criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água e temperaturas frias]==],
            },
        },
        tracos = [==[[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Lizarianos passa a ser 10 ao invés de 8.
[Regeneração avançada] recupere adicionalmente 10% do seu total de vida por dia de descanso, regenerando também quaisquer órgãos perdidos com exceção do cérebro e coração.
[Fisiologia subaquática] são criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água e temperaturas frias.]==],
        lore = [==[Fisiologia
  Os Lizarianos são seres reptilianos, lembrando grandes crocodilos em pé, dotados de uma pele escamosa e robusta que varia em tons de verde, marrom e cinza, oferecendo excelente camuflagem em ambientes aquáticos e pantanosos. Suas escamas são duras como pedra, servindo como uma armadura natural que os protege contra predadores e inimigos. Com corpos atléticos e musculosos, eles exibem uma força impressionante, essencial para sua sobrevivência nas condições adversas do deserto e dos pântanos. Suas mandíbulas são poderosas, capazes de esmagar ossos, e seus dentes afiados são ideais para um estilo de vida carnívoro. Possuem garras afiadas em suas mãos e pés, facilitando a escalada e a caça.   Seus olhos, adaptados tanto para a luz do dia quanto para a escuridão, são de cores variadas, geralmente em tons de amarelo ou âmbar, proporcionando excelente visão noturna e subaquática. No entanto a principal característica destas criaturas é sua regeneração considerada perfeita. Também podem regenerar qualquer parte de seu corpo com exceção de seu cérebro, quanto mais poderoso um membro desta raça mais rápida é a regeneração. Vivem entre 50 e 60 anos normalmente, com uma das expectativas de vida mais curta entre todas as raças

 História
  A história dos Lizarianos é marcada por um auge glorioso seguido de uma queda trágica. Originários do poderoso Império de Korus, criado sob a tutela do deus Qosis, quando foram concebidos para serem os guardiões dos pântanos e mestres da magia aquática. Korus era uma terra próspera, rica em recursos e cultura, onde a magia fluía livremente, permitindo que seus habitantes vivessem em harmonia com as águas e a terra. No entanto, sua arrogância e orgulho os levaram sua ruína. A divindade, decepcionada com seus filhos, lançou uma maldição sobre eles, transformando o fértil território do império em um deserto árido e retirando-lhes a habilidade de manipular a magia aquática. Essa perda devastadora os forçou a se adaptarem a novas realidades e dividir-se em duas facções distintas.   A primeira facção permaneceu na região amaldiçoada, mantendo viva a esperança de um dia reerguer seu império e serem perdoados por seu criador. Esses Lizarianos, conhecidos como os Fundamentalistas, aderem estritamente às antigas tradições e crenças, vendo a aridez do deserto como um teste de sua devoção e resistência. Se tornaram mestres em técnicas de sobrevivência em ambientes extremos, desenvolvendo habilidades de combate e resistência física que os tornaram temidos mercenários e guerreiros. A segunda facção, chamada de Exilados, buscou refúgio em regiões mais úmidas e férteis, como os pântanos e lagos, estabelecendo-se principalmente em Submeria, uma cidade submersa construída em colaboração com os Giff. 
  Esses, por outro lado, abraçaram a diversidade e a cooperação, integrando-se a novas culturas e adaptando-se a diferentes estilos de vida.  Nos tempos atuais vivem como uma espécie fragmentada, uma sombra do que já foram, abnegados de sua própria grandeza. Embora uma boa parte da espécie já tenha aceitado a realidade, ainda existem aqueles que batalham diariamente pelo perdão de Qosis, buscando restaurar seu antigo reino ancestral.

 Estilo de vida
  Os Lizarianos possuem uma cultura rigorosa e disciplinada, refletindo seu compromisso com a sobrevivência e a excelência. A reprodução é sexuada e, ao contrário de muitos outros reptilianos, seus filhotes nascem vivos, como os mamíferos, sendo amamentados pelas mães até que possam caçar por si mesmos. A criação das crianças é uma tarefa exigente, com os jovens sendo treinados desde cedo para enfrentar as adversidades do mundo. Eles são ensinados a lutar, caçar e sobreviver em condições extremas, além de serem imbuídos com um profundo senso de honra e dever.   A vida em Submeria é centrada na cooperação e no comércio, com os meio-reptilianos desempenhando papéis cruciais na defesa e proteção da cidade. Eles trabalham ao lado dos Giff para manter a segurança e a prosperidade da metrópole submersa, destacando-se como líderes e guerreiros. A profecia de que um dia serão perdoados por Qosis e que o Império prometido será reerguido é um elemento central de sua cultura, guiando suas ações e alimentando sua determinação. Os Fundamentalistas, por outro lado, vivem em pequenas comunidades espalhadas pelo deserto, mantendo um estilo de vida austero e severo, centrado na devoção ao seu criador e na esperança de redenção. Suas vidas são marcadas por rituais diários e uma forte hierarquia social que enfatiza a pureza e a tradição. São vistos pelos seus semelhantes como guardiões inadequados das antigas tradições.   No deserto de Korus, aqueles que vivem entre as tribos fundamentalistas vivem um estilo de vida centrado no culto a Qosis, a busca por relíquias do antigo império e suas ruínas. No grande deserto os Lizarianos se dividem em duas funções: os guerreiros e os civis; os guerreiros tem o objetivo de trazer água ao matar os Hidravores - criaturas monstruosas que a milênios absorvem toda água e umidade do deserto, desde que o deus das chuvas amaldiçoou seu povo. Quando um Hidravor é morto, é possível retirar toda sua água que pode alimentar uma tribo inteiro por semanas, a depender da criatura.]==],
    },
    {
        chave = "Selkies",
        nome = "Selkies",
        categoria = "Jogavel",
        origem = "Merewen",
        tipo = "Aquático",
        alinhamento = "Leal bom",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[8m (terrestre) / 18m (aquático)]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 8, nado = 18 },
        caracteristicas = {
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Selkies passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Manto Selkie",
                descricao = [==[Recebe a habilidade progressiva "Manto Selkie", que garante as habilidades especiais subaquáticas da raça quando o personagem vestir seu respectivo manto]==],
            },
            {
                nome = "Fisiologia subaquática",
                descricao = [==[São criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água e temperaturas frias]==],
            },
        },
        tracos = [==[[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Selkies passa a ser 10 ao invés de 8.
[Manto Selkie] recebe a habilidade progressiva "Manto Selkie", que garante as habilidades especiais subaquáticas da raça quando o personagem vestir seu respectivo manto. 
[Fisiologia subaquática] são criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água e temperaturas frias.]==],
        lore = [==[Fisiologia
  Os Selkies possuem uma aparência que reflete tanto sua ligação com o oceano quanto a beleza herdada de Merewen. Em forma humana, são incrivelmente graciosos, com traços faciais suaves e etéreos, mas sua natureza aquática é evidente em detalhes únicos, como olhos e cabelos que remetem às cores do mar e das criaturas que representam. As cores dos olhos e cabelos dos Selkies variam conforme a tribo e a espécie que representam. Selkies da Tribo da Baleia Azul têm olhos e cabelos em tons de azul profundo, enquanto os da Tribo das Orcas exibem cabelos pretos com nuances de branco. Essas cores são uma marca da tribo de origem e simbolizam sua conexão com a criatura do mar que representam. Têm pele macia e resistente, adaptada ao contato constante com a água salgada. Sua pele mantém uma aparência úmida e luminosa, conferindo-lhes um aspecto aquático mesmo em ambientes terrestres. Em regiões secas, sua pele pode se tornar opaca.
  Mesmo em sua forma humana, os Selkies movem-se com uma graça aquática que espelha o movimento das ondas. Essa fluidez e agilidade os tornam hábeis em combate, adaptando-se rapidamente ao ambiente e ao fluxo de energia ao seu redor. Em situações de necessidade ou durante rituais sagrados, Selkies de linhagens antigas podem assumir uma Forma Ancestral. Nesse estado, características de sua criatura de origem – como barbatanas, escamas ou até pelagem – se manifestam, aumentando suas capacidades físicas e intensificando sua conexão com o oceano.
  Cada Selkie possui um Manto, uma capa sagrada única que lhes permite alternar entre sua forma humana e sua forma aquática. Esses mantos são considerados símbolos de realeza e conexão espiritual com Merewen, sendo peças únicas, inigualáveis e guardadas com reverência. O Manto permite que o Selkie assuma sua forma aquática, que pode variar conforme a espécie de animal marinho que representa (como foca, orca, baleia, golfinho, entre outros). Ao usar o Manto, o Selkie ganha as características físicas do animal, incluindo habilidades como respiração subaquática e nado aprimorado. 
  Cada Manto é exclusivo, apresentando cores e texturas únicas que refletem a personalidade e a linhagem do Selkie que o possui. Perder o Manto significa perder a habilidade de retornar ao mar, um ato que é considerado trágico e representa grande vulnerabilidade tanto física quanto espiritual.

 História
  Criados por Merewen, a deusa dos mares e considerada a mais bela das divindades, os Selkies são uma raça mística e encantadora, dotada de uma beleza sobrenatural. Esse encanto atrai tanto admiração quanto perigo, pois outros seres – piratas, caçadores e até certas criaturas marinhas – buscam capturar os Selkies e privá-los de sua liberdade. Em resposta a essas ameaças, Merewen legou-lhes habilidades de combate e uma responsabilidade sagrada: proteger os oceanos e o equilíbrio entre mar e terra. Os Selkies possuem a habilidade de transitar entre a forma humana e uma forma aquática, usando uma pele especial para realizar a transformação. Em sua forma humana, seus olhos e cabelos revelam sua conexão com o mar, com cores que variam de acordo com a tribo: azul profundo para os Selkies da Baleia Azul, preto e branco para os da Tribo das Orcas, entre outros.
  Os Selkies enfrentam ameaças constantes, tanto de criaturas marinhas como de seres da superfície. Sua posição de guardiões do oceano e do equilíbrio entre mar e terra, além de sua beleza e recursos raros, atraem rivais e invasores. A beleza lendária dos Selkies e o valor de suas peles os tornam alvos frequentes de piratas e caçadores de recompensas. Alguns humanos, encantados com as histórias dos Selkies, acreditam que capturar um deles lhes concederá riqueza, poder ou até a companhia eterna de um ser mágico. Piratas frequentemente navegam pelas águas costeiras das cidades Selkie em busca de capturas valiosas, emboscando Selkies que assumem forma humana. Esse conflito é intenso e frequente, pois os Selkies precisam proteger suas peles de foca, que, se roubadas, os impedem de retornar ao oceano. Os Selkies usam suas habilidades de combate e o conhecimento das correntes para criar armadilhas subaquáticas e lançar ataques surpresa contra embarcações piratas. Eles são implacáveis com os invasores, garantindo que poucos sobrevivam para contar as histórias.
  As Sereias e os Tritões são rivais históricos dos Selkies. Embora compartilhem o oceano, as sereias e tritões têm uma abordagem mais agressiva e expansionista, interessando-se mais pelo poder do que pela preservação do equilíbrio natural. Os tritões buscam territórios e recursos, enquanto as sereias, conhecidas por seu canto hipnótico, veem os Selkies como uma ameaça às suas rotas de comércio e influência. Os tritões também valorizam o oricalco, usando-o em suas próprias armas e armaduras, e muitas vezes competem com os Selkies pelo controle das minas subaquáticas de onde ele é extraído. Conflitos entre Selkies, sereias e tritões ocorrem frequentemente nas proximidades das minas de oricalco e em áreas de fronteira territorial. Esses confrontos são particularmente intensos, com ambos os lados utilizando magia aquática e habilidades de combate para ganhar vantagem.
  Em tempos de grande necessidade, como a chegada de um inimigo comum, os Selkies e tritões formaram alianças temporárias. No entanto, essas parcerias são instáveis e acabam assim que a ameaça externa desaparece, retornando à rivalidade.
  Nas profundezas abissais do oceano habitam criaturas monstruosas, algumas das quais foram corrompidas por forças desconhecidas. Essas criaturas, como krakens, gigantes de água e serpentes marinhas, representam uma ameaça constante para todas as raças aquáticas. Acredita-se que algumas dessas criaturas foram criadas em tempos antigos, antes da criação dos Selkies, enquanto outras foram atraídas por práticas de artes proibidas realizadas nas profundezas. Esses monstros são uma ameaça imprevisível e atacam cidades submersas, em especial as capitais de Aran e Leffair. Os Selkies encaram o enfrentamento dessas criaturas como parte de sua missão de proteger o oceano. Em uma das batalhas mais famosas, conhecida como a Batalha da Voragem Escura, enfrentaram um gigante de água que ameaçava destruir Leffair. Utilizando a Dança das Marés e a magia do Coração do Oceano, conseguiram afastar a criatura, mas com perdas significativas. Contra essas criaturas, os Selkies utilizam armas feitas de oricalco e rituais de invocação de correntes e redemoinhos para atrapalhar e repelir esses monstros.
  As regiões costeiras são frequentemente disputadas entre os Selkies e outras civilizações que desejam expandir seus territórios. Esses conflitos ocorrem geralmente por causa da exploração dos recursos marinhos e das terras adjacentes às áreas onde os Selkies habitam. Humanos e Giff muitas vezes buscam explorar os corais e as algas preciosas que os Selkies utilizam para criar a Seda do Mar, ou tentam extrair minérios valiosos dos recifes. As tentativas de expansão desses povos para áreas costeiras provocam atritos com os Selkies, que veem tais ações como invasões aos domínios de Merewen. Em raras ocasiões, os Selkies formaram alianças temporárias com raças terrestres para protegerem o litoral de piratas ou criaturas hostis. No entanto, muitas dessas alianças terminaram em traição, o que resultou no Juramento das Ondas Partidas: uma promessa Selkie de evitar alianças externas, exceto em caso de ameaça extrema.
  Em meio a esses conflitos, os Selkies têm como maior responsabilidade proteger o Coração do Oceano, um artefato sagrado que representa a essência e o equilíbrio dos mares. Merewen confiou-lhes essa joia mística para que pudessem defender o oceano das ameaças mais formidáveis. O Coração do Oceano tem o poder de controlar as marés e influenciar as criaturas do mar, sendo, por isso, um alvo cobiçado por diversos inimigos. A cultura Selkie conta que qualquer ser que tentar tomar o Coração do Oceano sem permissão enfrentará a maldição de Merewen. Esse ato desencadearia uma tempestade eterna e a ira das marés, submergindo o mundo sob uma inundação cataclísmica. O Coração do Oceano é escondido e protegido pela Tribo da Baleia Azul, cujos líderes espirituais são os únicos a conhecer seu paradeiro exato. Os Selkies veem o artefato como uma última linha de defesa, a ser usada apenas em circunstâncias desesperadas.
  
 Estilo de vida
  A cultura Selkie é profundamente enraizada no respeito ao mar e na devoção a Merewen, a deusa dos mares. Os Selkies têm uma forte noção de comunidade e um vínculo espiritual com as águas e as criaturas que habitam, vendo-se como guardiões do equilíbrio entre o oceano e a terra. Estes seres possuem três valores fundamentais: 
Fraternidade e União: são ensinados desde jovens a valorizar a comunidade, enxergando-se como parte essencial do coletivo. Para eles, o bem-estar do grupo é prioritário, e ajudar uns aos outros é um princípio sagrado. Devoção a Merewen: Merewen é o coração espiritual deste povo. Eles realizam rituais dedicados à deusa nas noites de lua cheia, quando as marés são mais fortes, oferecendo cânticos, danças e artes em sua homenagem. Durante esses rituais, jovens Selkies participam de cerimônias de iniciação, recebendo as bênçãos da deusa e o conhecimento de seus antepassados. Proteção do Mar: consideram o oceano uma extensão de seu lar e um espaço sagrado. Eles acreditam que preservar suas águas e criaturas é um dever, e qualquer ameaça ao mar é enfrentada com firmeza e dedicação.
  Dentre as festividades e rituais famosos dois se destacam, o "Festival das Marés Cheias", que consiste em uma celebração que ocorre em cada lua cheia, onde os Selkies se reúnem para agradecer a Merewen e celebrar sua ligação com o mar. Eles cantam hinos, dançam e realizam pequenos sacrifícios simbólicos para reforçar sua conexão espiritual. Já o "Ritual do Coração do Oceano", é venerado em uma cerimônia secreta realizada pelos líderes espirituais. Apenas os Selkies mais leais e dedicados participam, reforçando seu compromisso de proteger o artefato sagrado.
 Os Selkies são artesãos hábeis, criando itens de beleza única e durabilidade extraordinária, que refletem sua ligação com o oceano. Seu artesanato não é apenas funcional, mas também simbólico, com cada peça carregando significados culturais profundos, como a Seda do Mar, um tecido exclusivo dos Selkies, extraído de algas marinhas e teias de coral. Esse tecido é incrivelmente resistente à água salgada, ao tempo e ao desgaste, o que o torna ideal para o ambiente marinho. Vestes de Seda do Mar são decoradas com padrões que representam ondas, criaturas marinhas e símbolos de Merewen, variando de acordo com a tribo e a posição social. Em rituais e festivais, veste-se trajes feitos de Seda do Mar, tingidos em tons de azul, verde e branco, simbolizando as cores do oceano, além de serem capazes de utilizar corais e tinturas extraídas de plantas marinhas, os Selkies conseguem criar variações de cores na Seda do Mar, que permanecem vibrantes por gerações.
  Na metalurgia, o oricalco é um metal raro, extraído de cavernas submarinas profundas e apreciado tanto por seu valor quanto por sua durabilidade. Esse metal não enferruja e retém um fio extremamente afiado, sendo usado principalmente para a fabricação de armas e ferramentas. Armas de oricalco, como tridentes e lâminas curvas, são usadas em batalhas e também como símbolos de status e devoção a Merewen. O Rei Militar carrega uma lança de oricalco, forjada em um ritual especial, simbolizando sua responsabilidade na defesa dos Selkies. Já peças menores são forjadas em pingentes, braceletes e ornamentos, muitas vezes gravadas com runas protetoras e padrões marinhos, usados pelos Selkies em ocasiões especiais.
  Além da Seda do Mar e do oricalco, os Selkies são conhecidos por suas esculturas de coral e conchas. Essas peças decoram as cidades submersas e são utilizadas em cerimônias religiosas e em construções arquitetônicas. Totens de Conchas entalhados em corais representam figuras de proteção e são colocados nas entradas das cidades para afastar influências malignas e proteger a comunidade, além também dos ornamentos de conchas, que consistem em esculturas de conchas são usadas como amuletos e oferendas para Merewen, representando prosperidade e bênçãos sobre a comunidade.]==],
    },
    {
        chave = "Vampiros",
        nome = "Vampiros",
        categoria = "Jogavel",
        origem = "Noctefir",
        tipo = "Terrestre",
        alinhamento = "Caótico mau",
        jogavel = true,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 12,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[12m]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 12 },
        caracteristicas = {
            {
                nome = "Vigorosos",
                descricao = [==[Receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Vampiros passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Sedutores",
                descricao = [==[Receba a qualidade "Beleza sobrenatural" gratuitamente]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à escuridão da noite e do subsolo, os vampiros conseguem ver no escuro enxergando normalmente em qualquer luminosidade]==],
            },
            {
                nome = "Semi-imortalidade",
                descricao = [==[Sua taxa de envelhecimento é 100 vezes mais lenta que de um mortal comum]==],
            },
            {
                nome = "Imortalidade - Exclusivo para não semideuses",
                descricao = [==[Vampiros não morrem de velhice]==],
            },
            {
                nome = "Hemocinese",
                descricao = [==[Receba o poder exclusivo "Hemocinese", substituindo um poder ativo em sua ficha; Este poder pode coexistir com o poder "Magia"]==],
            },
            {
                nome = "Linhagem de Dracul",
                descricao = [==[O semideus vampiro obrigatoriamente deve ser um descendente da linhagem principal, recebendo a qualidade Nobreza [06].]==],
            },
            {
                nome = "Maldição de Ditrys",
                descricao = [==[Receba o dobro de qualquer dano oriundo do elemento "Dia" ou derivados; a cada 5 segundos em contato com a luz solar você perde HP equivalente a 10% de sua vida máxima; A fraqueza contra o sol não afeta semideuses]==],
            },
            {
                nome = "Cabeça a prêmio",
                descricao = [==[Receba o defeito "Segredo Obscuro" gratuitamente na criação da ficha, sendo este a existência da sua condição vampírica para a comunidade em que você vive]==],
            },
            {
                nome = "Sede de sangue",
                descricao = [==[Quaisquer habilidades ou feitiços são rolados com "Vitae" ao invés de Aura/Mana, e você apenas recupera esta barra de energia se alimentando do sangue de outros seres vivos. Cada 50ml recupera 1 ponto de Vitae]==],
            },
        },
        tracos = [==[[Vigorosos] receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Vampiros passa a ser 10 ao invés de 8.
[Sedutores] receba a qualidade "Beleza sobrenatural" gratuitamente. 
[Visão no Escuro] acostumados à escuridão da noite e do subsolo, os vampiros conseguem ver no escuro enxergando normalmente em qualquer luminosidade.
[Semi-imortalidade] sua taxa de envelhecimento é 100 vezes mais lenta que de um mortal comum.
[Imortalidade - Exclusivo para não semideuses] vampiros não morrem de velhice.
[Hemocinese] receba o poder exclusivo "Hemocinese", substituindo um poder ativo em sua ficha; Este poder pode coexistir com o poder "Magia". 
[Linhagem de Dracul] O semideus vampiro obrigatoriamente deve ser um descendente da linhagem principal, recebendo a qualidade Nobreza [06]. 
[Maldição de Ditrys] receba o dobro de qualquer dano oriundo do elemento "Dia" ou derivados; a cada 5 segundos em contato com a luz solar você perde HP equivalente a 10% de sua vida máxima; A fraqueza contra o sol não afeta semideuses.
[Cabeça a prêmio] receba o defeito "Segredo Obscuro" gratuitamente na criação da ficha, sendo este a existência da sua condição vampírica para a comunidade em que você vive.
[Sede de sangue] quaisquer habilidades ou feitiços são rolados com "Vitae" ao invés de Aura/Mana, e você apenas recupera esta barra de energia se alimentando do sangue de outros seres vivos. Cada 50ml recupera 1 ponto de Vitae.]==],
        lore = [==[Fisiologia
  Os vampiros são criaturas de aparência mortal, facilmente confundíveis com humanos ou elfos, salvo exceção suas peles naturalmente mais pálidas. Sua aparência é sombria, e a mera presença em um ambiente pode ser desconfortável para um mortal comum. Sua estatura pode variar desde 1,50m até 2,10m. São as únicas criaturas verdadeiramente imortais, ao menos em termos de morte por velhice, por conta da maldição que aflige sua espécie. Seu corpo adapta-se facilmente as sombras, no entanto possuí uma notória fragilidade a luz, em especial aquela oriunda dos raios solares. Estes seres embora sejam imortais, demonstram sinais de velhice, embora em uma taxa muito mais lenta do que os mortais comuns.
  Os dentes dos vampiros inicialmente se parecem com os dentes de qualquer mortal, no entanto alguns se tornam pontiagudos quando tais seres vão se alimentar do sangue de outros mortais, sendo esta condição essencial para manterem sua aparência bem preservada e a maioria de suas habilidades vinculados ao sangue. Este aspecto é essencial, já que os vampiros que não bebem o sangue de outras criaturas se tornam cada vez mais decrépitos, mais perto da morte do que da vida, com sua pele gelada, os lábios azuis e o corpo ressecado, no entanto os que mantém a dieta em dia não podem ser distinguidos de qualquer outro mortal.
  São criaturas muito carismáticas, além de excepcionalmente belos e sedutores.

 História
  A história dos vampiros tem início na criação dos Drow, moldados pelo deus Noctefir como o reflexo dos Elfos, uma raça perfeita idealizada por sua irmã, a deusa Ditrys, personificando a luz e a pureza do dia. Os Drow, por sua vez, foram concebidos como os soberanos da noite, tão belos e habilidosos quanto seus irmãos diurnos. No entanto, o orgulho dos Drow, alimentado pelo desejo de se provarem dignos perante Noctefir, os levou a entrar em guerra com os Elfos, marcando o primeiro grande conflito na história: A Primeira Guerra das Estrelas. O conflito entre Elfos e Drow parecia interminável. Cada avanço dos Drow durante a noite era desfeito pelos Elfos à luz do dia, transformando a guerra em um ciclo sangrento sem fim. À medida que as batalhas se intensificavam e as baixas se acumulavam, o equilíbrio do mundo ficou em risco, forçando Noctefir e Ditrys a intervir diretamente. Este evento ficou conhecido como o Eclipse da Cisão, um julgamento divino que selaria o destino dos Drow. No julgamento, os Drow foram declarados culpados pelo derramamento de sangue, mas antes que a sentença fosse pronunciada, o Rei Drow, Sylas, se adiantou e assumiu toda a responsabilidade. Ele implorou para que seu povo não carregasse as consequências de suas próprias decisões. Os deuses, impressionados por sua coragem, pouparam os Drow da extinção, mas com uma condição: eles seriam exilados das florestas e vales onde viviam, condenados a viver nas profundezas da terra.   O Rei Sylas, sua família e seus generais, contudo, não tiveram a mesma sorte. A deusa Ditrys, em sua ira, amaldiçoou-os para que jamais andassem sob sua luz. A luz do sol queimaria suas carnes com uma dor insuportável. Noctefir, buscando punição adicional, criou os primeiros Lobisomens, bestas ferozes encarregadas de caçar os amaldiçoados durante a noite. Por fim, Tenebria, a deusa da morte, impôs-lhes a imortalidade, condenando-os a uma "não-vida" eterna, incapazes de conhecer o alívio da morte. Deste julgamento sombrio, nasceram os primeiros vampiros, amaldiçoados a vagar entre a vida e a morte, sem a luz do sol, caçados incessantemente por Lobisomens e rejeitados por todas as raças. Por séculos, os vampiros vagaram sem rumo, caçados por todas as raças e rejeitados pelos deuses. Incapazes de pôr fim ao seu próprio tormento, muitos sucumbiram à loucura, enquanto outros tentaram se lançar aos mares, na esperança de que a morte lhes trouxesse paz. 
  Outros ainda, desesperados, se expuseram à luz de Ditrys, permitindo que suas carnes fossem queimadas até o limite da resistência. Mas um pequeno grupo, liderado pelo Rei Sylas, continuou a vagar, em busca de algum significado para sua existência amaldiçoada. Foi então que eles chegaram ao lendário Vale do Fim, um local perdido no tempo e nas memórias das civilizações. Este vale era diferente de qualquer outro lugar no mundo. As nuvens possuíam um tom rosáceo, a terra era vermelha como sangue, e as plantas carregavam um líquido rubro em suas veias, em vez de seiva. O ar ali era denso, como se estivesse saturado de mistérios antigos. Este era o domínio dos Dragões Primordiais do Sangue e da Madeira, seres de poder incomensurável, temidos por todas as raças. Pela primeira vez em décadas, os vampiros puderam descansar, pois ninguém ousaria adentrar os domínios desses dragões. O Dragão Primordial do Sangue, ao ouvir os lamentos dos vampiros, compadeceu-se de sua condição. Ele enxergou que o verdadeiro fardo deles era viver em uma "não-vida", um estado que se parecia com a vida, mas que nunca poderia ser considerado verdadeiramente viver. Com essa percepção, o Dragão do Sangue ensinou-lhes a manipulação do vitae, o fluido vital presente no sangue. A partir dessa habilidade, os vampiros poderiam absorver a energia vital de outros seres, aproximando-se da vida sempre que bebiam do sangue alheio.
  Por outro lado, o Dragão Primordial da Madeira viu o sofrimento dos vampiros por outro ângulo. Ele entendeu que muitos deles desejavam, acima de tudo, o descanso eterno, a liberação de sua agonia interminável. Com isso, o Dragão da Madeira criou uma árvore singular, o Carvalho Primordial, cuja madeira, quando esculpida por mãos habilidosas, poderia conceder o verdadeiro descanso aos vampiros. Essa madeira tornou-se a chave para a única forma de acabar com a imortalidade dos vampiros. Nem todos os vampiros aceitaram o descanso eterno oferecido pelo Dragão Primordial da Madeira. Muitos, guiados pelo Rei Sylas, abraçaram o conhecimento oferecido pelo Dragão do Sangue e escolheram viver, mesmo sob o peso da maldição. Com o tempo, conta-se que apenas uma fração dos que haviam adentrado o Vale do Fim saiu de lá. Aqueles que permaneceram ao lado de Sylas o coroaram como Dracul, que significa "dragão" ou "filho do dragão", um título que simbolizava a nova identidade que os vampiros abraçaram. A partir daquele momento, eles se desligaram de seus laços com os Drow e rejeitaram os deuses que lhes haviam virado as costas. Eles eram agora vampiros, e nada mais.
  A Linhagem do Dragão foi fundada sob o comando de Dracul, e seus descendentes rapidamente se tornaram figuras de poder e influência no submundo das civilizações do mundo conhecido. Com o tempo, os vampiros passaram a ser vistos como "os reis da não-vida", mestres das sombras e das artes escuras. Eles dominaram a manipulação do sangue e de outras formas de magia ligadas ao sangue, arquitetando planos complexos para dominar sociedades inteiras sem jamais revelar sua existência. Para consolidar seu poder, criaram o Pacto de Sangue, um contrato mágico selado em pergaminho de pele de cordeiro. 
  Quando alguém assinava o pacto com seu próprio sangue, ele se tornava inquebrável, vinculando a alma do signatário à dos vampiros. Em troca de fidelidade eterna, os vampiros ofereciam longevidade, poder e privilégios aos seus servos. Graças ao Pacto de Sangue e às suas habilidades nas artes da manipulação, os vampiros se tornaram uma raça de influência insidiosa. Mesmo sendo raramente vistos, sua presença era sentida em todos os cantos do mundo, desde as cortes reais até os mercados mais humildes. Eles eram os "nobres da noite", e seu poder, ainda que oculto, era inegável. Os vampiros, nascidos de uma maldição divina, transcenderam sua origem para se tornarem mestres da intriga e da escuridão. Embora amaldiçoados a uma existência eterna entre a vida e a morte, eles encontraram meios de transformar essa condenação em poder, construindo uma sociedade oculta e manipulando o destino das raças mortais. Agora reinam sobre o submundo, seus laços com o sangue e as sombras os tornando uma das raças mais poderosas e enigmáticas de Petrichor.

 Estilo de vida
  A sociedade vampírica é complexa, intrincada e profundamente hierárquica, baseada na pureza do sangue e na proximidade da linhagem direta com Dracul, o primeiro Rei Vampiro. Ela opera nas sombras, manipulando eventos mundanos e se ocultando sob o véu da noite, enquanto seus membros acumulam poder de maneira insidiosa e silenciosa. No topo da sociedade vampírica está a Linhagem do Dragão, composta pelos descendentes diretos de Dracul, o primeiro Rei Vampiro. Eles são os únicos vampiros capazes de gerar descendentes naturalmente, seja com outros vampiros ou com membros de outras espécies. Esse poder reprodutivo é um segredo ancestral e muito raro, com muitos filhos não sobrevivendo aos primeiros anos de vida. As crianças nascidas dessa linhagem envelhecem normalmente nos primeiros anos, mas seu crescimento desacelera até cessar completamente ao atingirem o ápice da forma adulta, tornando-se imortais.
  Os descendentes de Dracul também são conhecidos por seus cabelos brancos e corações pulsantes, algo que os distingue dos demais vampiros, cujos corpos, exceto por sua fome por sangue, estão em um estado de morte suspensa. Essas crianças são extremamente raras, e sua existência é cercada de segredo e proteção. Atentar contra a vida de uma dessas crianças é considerado um crime sem precedentes, e elas são mostradas ao público apenas em eventos de celebração. O Alto Conselho, composto pelos membros mais antigos da Linhagem do Dragão, governa com autoridade suprema sobre todos os outros vampiros, determinando as grandes políticas e o rumo da raça.
  Abaixo da Linhagem do Dragão estão os nobres menores, vampiros de linhagens distantes da original ou de poder diluído. Eles controlam territórios menores e servem como intermediários entre os vampiros aristocráticos e as classes mais baixas. Muitos deles exercem controle sobre cidades e reinos humanos ou outras raças, governando a partir das sombras. Esses nobres são politicamente ativos, sempre em busca de alianças e manipulações para ampliar seu poder. A base da sociedade vampírica é composta por clãs, cada um com sua especialidade, seja em guerra, espionagem, comércio ou artes das trevas. Dentro dos clãs, as famílias preservam o legado de cada vampiro e a hierarquia interna. Esses clãs são formados a partir do ato de passar a maldição vampírica para outros seres, criando vampiros de linhagens menores. Apesar de não possuírem a nobreza da Linhagem do Dragão, esses clãs desempenham papéis essenciais na perpetuação da sociedade vampírica.
  Aqueles que servem aos vampiros, muitas vezes humanos ou elfos, assinam o Pacto de Sangue, um contrato mágico que vincula sua alma à de um vampiro. Esse pacto é feito em pergaminho de pele de cordeiro e assinado com sangue, tornando-o inquebrável. Em troca de poder, longevidade e influência, os servos de sangue entregam sua liberdade, servindo seus mestres com lealdade absoluta. 
  Vampiros que foram expulsos da sociedade ou que quebraram as regras sagradas da Linhagem do Dragão são considerados exilados ou renegados. Eles vagam pelo mundo sem proteção, muitas vezes sendo caçados por outras raças ou pelos próprios vampiros. Sua existência é solitária e frequentemente curta, pois são considerados párias, sem acesso aos recursos e ao poder da sociedade vampírica.
  O Pacto de Sangue é a principal ferramenta de poder e controle dos vampiros sobre outras raças e até mesmo entre si. Esse contrato mágico inquebrável vincula aqueles que o assinam, garantindo lealdade e servidão eterna. Para os vampiros, este pacto simboliza a eternidade de seu poder e é um dos meios pelos quais conseguem manipular e governar indiretamente as civilizações mortais.
  Quando um vampiro ascende a uma nova posição de poder, ele deve passar pela Cerimônia da Sombra, um ritual que reforça sua lealdade ao Alto Conselho. Durante essa cerimônia, o vampiro consome o sangue de um membro da Linhagem do Dragão, fortalecendo a conexão entre os governantes e seus subordinados.
  A sociedade vampírica opera sob o Véu de Sombras, uma rede vasta de espionagem e controle que permite que eles influenciem o curso da história sem serem detectados. Seus movimentos são discretos e seus agentes, leais. Essa rede é essencial para a manutenção do poder e da sobrevivência da raça.]==],
    },
    {
        chave = "Aarakocras",
        nome = "Aarakocras",
        categoria = "NaoJogavel",
        origem = "Nellios",
        tipo = "Aéreo",
        alinhamento = "Leal Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[10m (terrestre) / 20m (aéreo)]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 10, voo = 20 },
        caracteristicas = {
            {
                nome = "Asas de Aarakocras",
                descricao = [==[Receba a habilidade progressiva "Asas de Aarakocras", que garante asas especiais do povo de Nellios, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é]==],
            },
            {
                nome = "Super visão",
                descricao = [==[Você tem a capacidade de enxergar perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo o sentido visão]==],
            },
            {
                nome = "Imunidade aérea",
                descricao = [==[Devido a conexão destes seres com Nellios, estes são completamente imunes a qualquer dano oriundo do elemento "Vento"]==],
            },
        },
        tracos = [==[[Asas de Aarakocras] receba a habilidade progressiva "Asas de Aarakocras", que garante asas especiais do povo de Nellios, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é.
[Super visão] você tem a capacidade de enxergar perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo o sentido visão.
[Imunidade aérea] devido a conexão destes seres com Nellios, estes são completamente imunes a qualquer dano oriundo do elemento "Vento".]==],
        lore = [==[Fisiologia
  As Aarakocras são criaturas majestosas, de aparência aviana, que habitam os picos das cordilheiras e as nuvens de Petrichor. Embora sua fisiologia varie muito a depender da tribo, todos os seres são meio humanoides e meio aves, possuindo asas e uma altura na casa dos dois metros, com grandes asas que lhes permitem voar com graça e velocidade. A forma da cabeça varia conforme a tribo, refletindo a diversidade entre as diferentes linhagens, e Nellios assegurou que cada criatura possuí uma diferente "Voz", que lhe assegurasse dons específicos:  → Águias: conhecidas por sua força, os membros desta tribo têm bicos curvos e olhar penetrante. São os grandes guerreiros da espécie, fortes, ágeis e corajosos. Sua expectativa de vida varia entre 90 a 105 anos.  → Corvos: de penas negras e olhos inteligentes, os Corvos são mestres da magia e dos conhecimentos arcanos dentre as Aarakocras, é muito comum que os grandes magistas desta raça sejam desta tribo, além de possuírem o dom do dialeto que os tornam mais aptos em compreenderem novas línguas e idiomas com pouquíssimo estudo. Sua expectativa de vida varia entre 70 a 80 anos.  → Pombos: caracterizados por sua natureza pacífica, os Pombos têm uma expectativa de vida mais curta, de até 70 anos. São os senhores das mensagens e da espionagem para os seus.  → Corujas: a tribo das Corujas é sábia e misteriosa, possuem olhos grandes e expressivos, são seres místicos e com uma conexão especial com os deuses, comumente sendo os xamãs e conselheiros espirituais, possuindo uma expectativa de vida de 75 a 85 anos.  → Gaivotas: adaptadas às regiões costeiras, as Gaivotas são rápidas e ágeis, com cabeças que se assemelham a essas aves marinhas, são astutos e carismáticos, sendo de longe os mais ricos entre os seus e vivendo normalmente até os 75 anos.  → Papagaios: conhecidos por sua longevidade, podendo viver até 1.000 anos, os Papagaios têm plumagem colorida e uma imensa sabedoria. Embora sejam um clã muito pouco numeroso, um Aarakocras papagaio sempre é ouvido quando se pronuncia, e suas ideias sempre são consideradas. Assim como os corvos, esta tribo possuí o dom do dialeto que os tornam mais aptos em compreenderem novas línguas e idiomas com pouquíssimo estudo. Por viverem tanto, são vistos com imenso respeito e temor por muitas criaturas aladas.

 História
  As Aarakocras surgiram da união entre Nellios com a deusa Morgara, senhora das aves. Sua criação se deu porque o rei e a rainha dos ventos tinham grande dificuldade em cuidar de suas atribuições em todo o mundo, de forma que do amor de ambos surgiram as primeiras criaturas desta raça. Seis filhos foram concebidos, cada um deles surgindo a imagem de uma das aves que voavam pelos céus. Estes seis se reproduziram formado as grandes tribos, cada um surgindo com suas próprias particularidades e atribuições.    A tribo das águias surgiu para cuidar dos Ventos quentes do dia, a tribo dos corvos para os ventos que sopram as notícias ruins, a tribo das corujas para os ventos frios das noites soturnas, a tribo das gaivotas para os ventos das brisas marítimas, a tribo dos pombos para os ventos que sopram as boas notícias e a tribo dos papagaios para os ventos que banham as terras sagradas dos deuses.   As Aarakocras se espalharam pelo mundo, construíram o reino alado de Ardath e quando os primeiros ovos de dragões foram postos, coube a esta raça defender a segurança e posteriormente criar os primeiros dragões da existência, permanecendo posteriormente como regentes da coroa dos céus até o retorno do Rei dos Dragões, e auxiliando Nellios em manter a biodiversidade e pureza dos ventos e das nuvens.

 Estilo de Vida
  São profundamente vinculadas à tradição e às regras, mantendo uma postura neutra em relação aos assuntos terrestres. Sua sociedade é coletivista, onde cada indivíduo tem um papel definido a cumprir para o bem-estar da comunidade. Eles acreditam firmemente na sabedoria dos anciões, e por isso, o governo de suas comunidades e da capital alada, Ardath, é controlado pelos mais velhos. O mais ancião de todos assume a responsabilidade de governar e guiar os mais novos, assegurando que a tradição e os valores da raça sejam preservados. possuem uma afinidade natural com a magia ligada ao ar e aos céus. Eles utilizam seus poderes para controlar os ventos e proteger seus territórios. Rejeitam o uso das tecnologias modernas, especialmente zepelins e outros veículos aéreos, acreditando que a harmonia com a natureza é essencial para a sobrevivência e a prosperidade de sua raça. Este ódio pela tecnologia moderna reflete-se em sua filosofia de vida, que preza pela coexistência pacífica e sustentável com o meio ambiente.   A sociedade Aarakocras é organizada em tribos que espalham-se pelos céus do mundo conhecido. Cada tribo tem sua própria identidade e cultura, mas todas compartilham a reverência pelas tradições e a sabedoria dos anciões. Ardath, a capital alada, é o centro de sua civilização, um lugar de beleza e serenidade construído nas rochas flutuantes acima das montanhas e nuvens. Os Aarakocras mantêm sua neutralidade em quase todos os assuntos terrestres, focando-se em sua missão de proteger os céus e manter o equilíbrio natural. São respeitados e temidos por suas habilidades mágicas e sua devoção à preservação da natureza.]==],
    },
    {
        chave = "Harpias",
        nome = "Harpias",
        categoria = "NaoJogavel",
        origem = "Qhyrana",
        tipo = "Ar",
        alinhamento = "Leal Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[8m (terrestre) / 24m (aéreo)]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 8, voo = 24 },
        caracteristicas = {
            {
                nome = "Olhos da verdade",
                descricao = [==[Receba a habilidade progressiva "Olhos da verdade", que dão as estes seres a capacidade de utilizar a visão para compreender as intenções de outros, resistirem a ilusões e também á habilidade usada pelas harpias para profetizações]==],
            },
            {
                nome = "Grito do vendaval",
                descricao = [==[Receba a habilidade progressiva "Grito do vendaval", que permitem as harpias utilizarem sua voz como armas contra seus oponentes]==],
            },
            {
                nome = "Controle do vento",
                descricao = [==[Receba a habilidade progressiva "Controle do vento", que dão capacidade das harpias de manipularem redemoinhos e folhas em combate ou para melhor mobilidade]==],
            },
            {
                nome = "Asas de harpia",
                descricao = [==[Receba a habilidade progressiva "Asas de harpia", que garante asas especiais para estes seres, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é]==],
            },
            {
                nome = "Intolerância a mortos-vivos",
                descricao = [==[Receba o defeito "Intolerância [2 pontos]" gratuitamente na criação da ficha, sendo esta intolerância a mortos-vivos ou quaisquer usuários de necromancia e capacidades similares]==],
            },
        },
        tracos = [==[[Olhos da verdade] receba a habilidade progressiva "Olhos da verdade", que dão as estes seres a capacidade de utilizar a visão para compreender as intenções de outros, resistirem a ilusões e também á habilidade usada pelas harpias para profetizações.
[Grito do vendaval] receba a habilidade progressiva "Grito do vendaval", que permitem as harpias utilizarem sua voz como armas contra seus oponentes.
[Controle do vento] receba a habilidade progressiva "Controle do vento", que dão capacidade das harpias de manipularem redemoinhos e folhas em combate ou para melhor mobilidade.
[Asas de harpia] receba a habilidade progressiva "Asas de harpia", que garante asas especiais para estes seres, que evoluem juntamente do personagem lhe garantindo mais capacidades quanto mais forte é.
[Intolerância a mortos-vivos] receba o defeito "Intolerância [2 pontos]" gratuitamente na criação da ficha, sendo esta intolerância a mortos-vivos ou quaisquer usuários de necromancia e capacidades similares.]==],
        lore = [==[Fisiologia
  As harpias são maiores e mais robustas que os Uiruuetê, com envergaduras impressionantes e asas poderosas que podem chegar a 5 metros de envergadura. Suas penas variam em tons de dourado, laranja, vermelho, branco, preto e marrom, refletindo o outono. Seus olhos, os Olhos da Verdade, brilham em tons metálicos, sendo capazes de enxergar além das aparências. Já os s Uiruuetê, nome dado as harpias do gênero masculino, são menores e mais delicados, com asas mais curtas e penas menos chamativas, geralmente em tons de cinza ou marrom. Apesar de não serem guerreiros, eles desempenham papéis fundamentais no cuidado das crianças e na preservação da cultura.

 História
  As Harpias são as filhas de Qhyrana, a deusa do outono, e de Nellios, o deus dos ventos. Como mensageiras de Qhyrana, elas carregam a responsabilidade de trazer a transição entre vida e morte, assim como o outono anuncia a chegada do inverno. Herdaram da mãe o dom da percepção absoluta, manifestado em seus Olhos da Verdade, e do pai, a capacidade de manipular o som e o vento, transformando suas vozes em armas de destruição ou mensagens de sabedoria. As Harpias são reconhecidas tanto por sua beleza selvagem quanto por sua presença imponente, que carrega a melancolia e a intensidade da estação. Elas são símbolos do equilíbrio inevitável entre vida e morte, justiça e destruição.

 Estilo de Vida
  A sociedade das Harpias é essencialmente matriarcal, onde as mulheres exercem poder absoluto, enquanto os homens possuem um papel de apoio essencial para a continuidade e estabilidade do bando. As fêmeas dominam os aspectos de liderança, guerra e espiritualidade. Cada bando é liderado por uma Matriarca dos Ventos, uma Harpia experiente e sábia que atua como chefe militar e sacerdotisa, já os machos, conhecidos como Uiruuetê, são menores e menos robustos que as mulheres, com asas menores e pouca aptidão para o combate. Eles são relegados a tarefas domésticas, incluindo a criação de crianças, artesanato, culinária e a manutenção das habitações. Embora não participem das guerras, sua contribuição é essencial para a sobrevivência do bando.
  Realizam rituais periódicos de união com homens de outras raças para gerar novas gerações de harpias. Esses rituais são realizados sob a supervisão das Matriarcas, que escolhem os parceiros com base na força, inteligência ou outras qualidades desejáveis. Sempre que uma harpia concebe, há uma chance de nascer uma mulher ou um homem. Se uma fêmea nasce, ela é criada para se tornar uma guerreira ou sacerdotisa. Se um macho nasce, ele é treinado desde cedo para assumir os papéis de Uiruuetê. Os rituais de união são realizados nas clareiras sagradas ou montanhas outonais, onde a bênção de Qhyrana é invocada para garantir a prosperidade e o equilíbrio na nova geração.
  As Harpias são nômades que seguem a transição do outono pelo continente de Petrichor. Elas viajam em bandos, ocupando temporariamente florestas, montanhas e planícies enquanto a estação dourada persiste. Durante essas peregrinações, espalham ventos outonais e purificam o território, frequentemente entram em conflito com lenhadores, mineradores e outros que invadem suas florestas sagradas.
  Apesar de evitarem interações frequentes, as Harpias ocasionalmente formam alianças temporárias para proteger territórios ou enfrentar ameaças maiores, em sua grande maioria sendo os habitantes das terras selvagens, porém possuem ódio contra mortos-vivos, já que como guardiãs da transição sazonal, elas enfrentam mortos vivos e outras criaturas que violam o ciclo sempre que as encontram.]==],
    },
    {
        chave = "Giffs",
        nome = "Giffs",
        categoria = "NaoJogavel",
        origem = "Oduwa",
        tipo = "Aquático",
        alinhamento = "Caótico Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 6,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[6m (terrestre) / 13m (aquático)]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 6, nado = 13 },
        caracteristicas = {
            {
                nome = "Pele endurecida",
                descricao = [==[Os Giff são criaturas difíceis de serem feridas, absorvendo naturalmente (2 + Rank) de dano em todo golpe físico aplicado contra si]==],
            },
            {
                nome = "Manipuladores",
                descricao = [==[Receba 1 ponto adicional no atributo Manipulação na criação da ficha, além disso o limite do mesmo para os Giff passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Fisiologia subaquática",
                descricao = [==[São criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água]==],
            },
        },
        tracos = [==[[Pele endurecida] os Giff são criaturas difíceis de serem feridas, absorvendo naturalmente (2 + Rank) de dano em todo golpe físico aplicado contra si. [Manipuladores] receba 1 ponto adicional no atributo Manipulação na criação da ficha, além disso o limite do mesmo para os Giff passa a ser 10 ao invés de 8. [Fisiologia subaquática] são criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água.]==],
        lore = [==[Fisiologia
  Os Giff são caracterizados por sua pele espessa e endurecida semelhante à de um hipopótamo, que lhes confere uma impressionante resistência natural contra ataques físicos e condições adversas. Medem cerca de 2,3 metros de altura e são tão pesados quanto aparentam, com suas estruturas robustas e musculosas sendo uma visão intimidadora. Possuem cabeças largas e achatadas, com grandes narinas e olhos pequenos e penetrantes que lhes conferem uma aparência predatória. Seus braços poderosos terminam em mãos com dedos grossos e garras curtas, perfeitas para manusear ferramentas de navegação ou armas de combate, além de uma cauda curta e grossa, mais pronunciada em machos, que utilizam para equilíbrio e manobras ágeis em ambientes aquáticos, embora também tenham capacidade de viverem por longos períodos de tempo na superfície. Essas criaturas tem uma expectativa de vida entre 85 e 100 anos.

 História
  Criados pelo deus Oduwa, que em uma de suas maquinações ensinou um simples pescador feio e plebeu a arte da sedução e do convencimento até que este se deitasse com uma deusa, e dessa união nascesse o primeiro dos Giff. Estas criaturas desde seus primórdios têm demonstrado uma habilidade excepcional para o comércio e a pirataria. Fundaram a cidade de Submeria nas profundezas do lago Defyr, e tem se estabelecido no local desde então, que se ergue como uma fortaleza aquática no coração fluvial de Petrichor e serve como o centro cultural e econômico de sua sociedade.    Quando o poderoso Império de Korus caiu, abriram suas portas para os refugiados Lizarianos, oferecendo-lhes um lar em seu reino. No entanto, apesar de acolhê-los sempre mantiveram uma posição de superioridade, vendo os Lizarianos como uma classe inferior. Este histórico de convivência e dominação criou uma sociedade onde a astúcia e a capacidade de adaptação foram ainda mais aprimoradas e valorizadas, consolidando sua reputação como mercadores brilhantes e corsários astutos.

 Estilo de Vida
  São uma raça marítima por excelência, sejam aqueles que vivem em Submeria, sejam aqueles que vivem espalhados pelas cidades portuárias ao redor do mundo controlando a vasta rede de comércio que se estende por todas as águas conhecidas. Suas embarcações, conhecidas por sua velocidade e poder de fogo, patrulham os mares em busca de oportunidades comerciais e de pilhagem, o que lhes rendeu uma reputação temida como os melhores corsários de Petrichor. São mercadores habilidosos e mercenários conhecidos pela astúcia em negociações, frequentemente obtendo vantagem sobre seus parceiros comerciais com suas habilidades de barganha e uma propensão para truques e enganações.    Sua sociedade é fortemente hierárquica, com uma elite de capitães e mercadores que comanda o respeito e a lealdade de seus pares e subordinados. Embora sua aparência possa sugerir uma natureza bruta, os senhores hipopótamos são, de fato, muito astutos e manipuladores, usando sua inteligência para manobrar em situações complexas e garantir vantagem sobre seus adversários. Este estilo de vida de constante movimentação e exploração os moldou em um povo adaptável, sempre pronto para aproveitar a próxima grande oportunidade apresentada.   O conceito de 'sangue azul' é desconhecido aos Giff, que elegem seus líderes através do voto e acreditam fortemente que o sucesso deve estar ao alcance daquele que for mais astuto para atingi-lo. Enquanto muitas raças olham com admiração para aqueles que vem de famílias nobres de linhagens antigas, para esta espécie nada mais admirável do que um homem ou mulher que veio do nada e ascendeu.]==],
    },
    {
        chave = "Sereias",
        nome = "Sereias",
        categoria = "NaoJogavel",
        origem = "Aslot",
        tipo = "Aquático",
        alinhamento = "Caótico neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[8m (terrestre) / 24m (aquático)]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 8, nado = 24 },
        caracteristicas = {
            {
                nome = "Manipuladoras",
                descricao = [==[Receba 1 ponto adicional no atributo Manipulação na criação da ficha, além disso o limite do mesmo para as Sereias passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Metamorfose sereiana",
                descricao = [==[Receba a habilidade progressiva "Metamorfose sereiana", que permite as sereias altarem sua aparência completamente, além da voz e até trejeitos]==],
            },
            {
                nome = "Manipulação das memórias",
                descricao = [==[Receba a habilidade progressiva "Manipulação das memórias", que permite as sereias manipularem as memórias de seus alvos e até em si mesmas]==],
            },
            {
                nome = "Fisiologia subaquática",
                descricao = [==[São criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água]==],
            },
            {
                nome = "Perda de identidade",
                descricao = [==[Sempre que utilizar as habilidades progressivas "Metamorfose sereiana" e "Manipulação de memórias" role 1d20, e caso tire 1 você perderá uma memória importante da sua vida.]==],
            },
        },
        tracos = [==[[Manipuladoras] receba 1 ponto adicional no atributo Manipulação na criação da ficha, além disso o limite do mesmo para as Sereias passa a ser 10 ao invés de 8.
[Metamorfose sereiana] receba a habilidade progressiva "Metamorfose sereiana", que permite as sereias altarem sua aparência completamente, além da voz e até trejeitos.
[Manipulação das memórias] receba a habilidade progressiva "Manipulação das memórias", que permite as sereias manipularem as memórias de seus alvos e até em si mesmas.
[Fisiologia subaquática] são criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água.
[Perda de identidade] sempre que utilizar as habilidades progressivas "Metamorfose sereiana" e "Manipulação de memórias" role 1d20, e caso tire 1 você perderá uma memória importante da sua vida.]==],
        lore = [==[Fisiologia
  As sereias e os tritões descendem da deusa Aslot, como representações da vida nas profundezas dos oceanos, multifacetados entre uma raça somente de fêmeas e outra raça somente de machos. As sereias possuem um corpo esguio, coberto por escamas e com cauda longa de peixe, cabelos normalmente que variam nos tons castanhos, ruivos, negros ou loiros e olhos de tonalidade mais claras. Embora de aparência exótico, suas curvas são bem delineadas e o rosto de uma sereia está entre os mais belos. Naturalmente possuem capacidade de viver embaixo da água e por um tempo limitado na superfície, com uma expectativa de vida que varia de 70 a 90 anos. Um dos principais aspectos das sereias é sua voz, belíssimas e capazes de seduzir até o mais resistente dos mortais. 
  Já os tritões também possuem um corpo com estrutura similar, porém o corpo esguio da lugar a músculos, sendo considerados seres com uma estrutura muscular adaptada para o combate, possuem nadadeiras nas laterais de suas cabeças e as escamas são menos frequentes, além de terem capacidade de dividirem suas caudas em um par de pernas quando estão na superfície. Sua estatura varia de 1,90m a 2,30 dependendo da genética, seus olhos variam em tons de amarelo, azul ou avermelhado e seus cabelos podem ser das cores e estilos mais variados. Assim como sua contraparte feminina, os tritões também possuem uma expectativa de vida de 70 a 110 anos.

 História
  As Sereias e os Tritões são os filhos de Aslot, a deusa das profundezas, uma figura misteriosa e multifacetada. Nascida da união proibida entre o deus Isydras e uma figura desconhecida, Aslot foi rejeitada e abandonada nas águas mais escuras e profundas do mundo. Seu corpo, moldado pelas sombras e luzes efêmeras das profundezas, tornou-se fluido e mutável, e ela cresceu em completa solidão, desenvolvendo poderes que a tornaram uma imitadora perfeita de formas e desejos. Os filhos de Aslot herdaram sua natureza mutável e ambígua. Enquanto as Sereias possuem o dom de adaptar-se à terra e ao mar, os Tritões carregam a força e a ferocidade dos grandes predadores oceânicos. Ambos são reflexos da natureza de Aslot: ora sedutora e encantadora, ora implacável e mortal.
  A disputa pelo oricalco é a principal razão do conflito entre Tritões e Selkies, mas também há ressentimentos culturais e estratégicos entre as duas raças. Enquanto os Tritões buscam expandir seus territórios marítimos, as Sereias visam o controle político e social dos territórios terrestres, criando um equilíbrio instável entre as duas abordagens. Apesar de compartilharem a mesma origem divina, Sereias e Tritões raramente cooperam. Suas diferenças culturais e métodos opostos de agir frequentemente geram tensões e desentendimentos.

 Estilo de Vida
  Os Tritões vivem em tribos altamente competitivas, cada uma liderada por aquele que se prova o mais forte. Lutas internas são comuns, pois fraqueza não é tolerada, e líderes fracos são rapidamente desafiados e substituídos. Uma rivalidade histórica existe entre os Tritões e os Selkies, centrada no controle das minas de oricalco. As guerras entre essas raças são marcadas por emboscadas e batalhas ferozes nos territórios submarinos. Para os Tritões, a guerra é parte de sua identidade. Eles treinam desde cedo para o combate e valorizam força, disciplina e instinto de batalha.
 As Sereias adotam uma abordagem mais sutil, utilizando sua habilidade de mudar de forma e personalidade para se infiltrarem nas sociedades terrestres. Elas atuam como espiãs, políticas e nobres, acumulando influência para beneficiar sua espécie. Com suas capacidades de adaptação, as Sereias criaram uma rede extensa de contatos e aliados em vilas costeiras, cidades e até reinos interiores. Sua influência muitas vezes se espalha sem que seus alvos percebam. Ao contrário dos Tritões, as Sereias não têm uma estrutura hierárquica rígida. Elas operam de forma descentralizada, unidas por um objetivo comum: expandir sua influência e proteger seus próprios interesses.]==],
    },
    {
        chave = "Tritoes",
        nome = "Tritões",
        categoria = "NaoJogavel",
        origem = "Aslot",
        tipo = "Aquático",
        alinhamento = "Caótico neutro",
        jogavel = true,
        -- A lista fechada de "Sangue das raças antigas" cita Sereia, não
        -- Tritão. Tritões continuam disponíveis como segunda raça de Mestiço
        -- ou por autorização expressa do mestre, sem ampliar a qualidade por
        -- interpretação da ficha.
        sangueAntigas = false,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[8m (terrestre) / 24m (aquático)]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 8, nado = 24 },
        caracteristicas = {
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Tritões passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Instinto predatório",
                descricao = [==[São capazes de sentir cheiro de sangue a (Nível x5) quilômetros de distância quando dentro da água]==],
            },
            {
                nome = "Fisiologia subaquática",
                descricao = [==[São criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água]==],
            },
        },
        tracos = [==[[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Tritões passa a ser 10 ao invés de 8.
[Instinto predatório] são capazes de sentir cheiro de sangue a (Nível x5) quilômetros de distância quando dentro da água.
[Fisiologia subaquática] são criaturas que vivem tanto debaixo da água quanto na superfície, sem receber nenhum tipo de redutor tanto pela questão da respiração quanto pela pressão da água.]==],
        -- O capítulo traz a fisiologia, história e estilo de vida sob o mesmo
        -- cabeçalho. A referência é ligada à das Sereias logo após a tabela,
        -- sem duplicar um texto longo que precisa permanecer idêntico.
        lore = "",
    },
    {
        chave = "Centauros",
        nome = "Centauros",
        categoria = "NaoJogavel",
        origem = "Thaleessa",
        tipo = "Terrestre",
        alinhamento = "Leal-Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 24,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[24m]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 24 },
        caracteristicas = {
            {
                nome = "Aptidão com arcos",
                descricao = [==[Receba +2 para rolar testes utilizando Arcos e Bestas até o nível 10; A partir do nível 11 este bônus é de +4]==],
            },
            {
                nome = "Rastreamento aprimorado",
                descricao = [==[Receba +2 para rolar testes de rastreio em florestas e planícies; A partir do nível 11 este bônus é de +4]==],
            },
            {
                nome = "Conexão com a natureza",
                descricao = [==[Receba +2 para rolar testes da perícia "Natureza"; A partir do nível 11 este bônus é de +4]==],
            },
        },
        tracos = [==[[Aptidão com arcos] receba +2 para rolar testes utilizando Arcos e Bestas até o nível 10; A partir do nível 11 este bônus é de +4.
[Rastreamento aprimorado] receba +2 para rolar testes de rastreio em florestas e planícies; A partir do nível 11 este bônus é de +4.
[Conexão com a natureza] receba +2 para rolar testes da perícia "Natureza"; A partir do nível 11 este bônus é de +4.]==],
        lore = [==[Fisiologia
  Os minotauros são seres imponentes, combinando características humanas e bovinas. Possuem o corpo musculoso de um humano, mas com a cabeça e os chifres de um touro, com a pele coberta por uma pelagem curta e densa, variando em cores do marrom escuro ao negro, às vezes com manchas brancas.    Sua estrutura muscular é bem desenvolvida, conferindo-lhes força sobre-humana. Os chifres crescem continuamente ao longo de suas vidas, são vistos como símbolos de status e conquistas.  Uma característica única é a presença de um padrão de espirais similares a vinhas e galhos na base de seus chifres. O sistema digestivo dos minotauros é adaptado para uma dieta onívora, com uma preferência por vegetais e grãos, mas também capazes de digerir carne eficientemente.   Os minotauros possuem um olfato aguçado e uma audição excepcional, úteis tanto para a caça e proteção das florestas labirínticas onde vivem. Sua longevidade é considerável, podendo viver até 200 anos.

 História
  Criados por Thaleessa como uma das raças guardiãs do mundo natural, os minotauros receberam o dom da força física e uma profunda conexão com a terra e as rochas. Desde o início, eles foram concebidos para serem aliados naturais dos centauros, com cada raça complementando as habilidades da outra.   Os minotauros se estabeleceram nas regiões montanhosas e rochosas do reino e sua afinidade natural com a pedra os levou a criar elaborados labirintos e cidades subterrâneas, demonstrando uma habilidade inata para engenharia e arquitetura, embora não tão refinada quanto a arquitetura anã.    Durante séculos, os minotauros desenvolveram uma sociedade baseada no respeito à natureza, na busca pelo conhecimento e na valorização da força física e mental. Eles se tornaram mestres na arte de trabalhar a pedra, criando monumentos impressionantes e sistemas de irrigação engenhosos que permitiam a vida até mesmo nas regiões mais áridas.   Com a aliança de seus irmãos centauros e a aproximação destes no decorrer do tempo, pois ambos tem o papel sagrado de proteger as Florestas e terras selvagens, os minotauram integram mais elementos naturais em suas estruturas de pedra. Seus labirintos, antes puramente funcionais, ganharam jardins suspensos e canais de água, simbolizando a harmonia entre a rocha e a vida.   A sociedade minotauro também evoluiu. Além de valorizarem a força física e a sabedoria, eles passaram a enfatizar a importância da cooperação e da compreensão mútua.    Foram instruídos a serem os sentinelas da verdade e para sempre equilibrar suas forças e suas mentes. Eles eram conhecidos por sua habilidade com armas pesadas, como machados e lanças, mas também por sua sabedoria estratégica, capaz de controlar as batalhas e os cenários mais complexos. Com o tempo, sua presença começou a ser vista com suspeita por algumas raças mais territoriais e hostis. Nos conflitos entre os reinos de forças caóticas e organizadas, as tribos humanas e as criaturas sombrias viam estes seres como uma ameaça em potencial, pois sua força e inteligência os tornam líderes militares extraordinários. Por isso, se envolveram em muitos conflitos, embora sempre mantenham um código de honra que reflete os ensinamentos de seus ancestrais. Quando lutaram, nunca foi com o objetivo de destruição pura, exceto quando não havia outra alternativa. 
  Nos dias de hoje, continuam a ser os guardiões de passagens e de lugares secretos. Eles vivem nas montanhas remotas, em labirintos ancestrais e em fortalezas secretas, longe da vista do mundo comum, mas sempre prontos para intervir quando necessário.

 Estilo de Vida
  Habitam complexos labirínticos esculpidos nas montanhas, conhecidos por serem verdadeiras obras-primas de engenharia que refletem sua habilidade e criatividade, com jardins internos e lagos profundos. Sua sociedade é baseada na meritocracia, que valoriza a sabedoria, força e capacidade de resolução de problemas. Seus líderes são escolhidos por sua estratégia e força física, em grandes combates que são realizados quando algum minotauro sente-se capaz de subir ao poder.   A educação dos jovens minotauros é abrangente, incluindo filosofia, geologia, engenharia, história e artes marciais. A arte minotaura se expressa principalmente através da escultura em pedra e da arquitetura, embora música e poesia também sejam apreciadas, frequentemente explorando temas de busca, equilíbrio e transformação.   A dieta minotaura é variada, incluindo grãos cultivados em terraços de montanha, vegetais de raiz, carne de caça, peixes de rios montanhosos e queijos fortes. Sua culinária é conhecida por sabores robustos e pratos substanciosos. Para recreação, desfrutam de competições físicas e mentais, como corridas, lutas cerimoniais e competições. Escalada e exploração de cavernas também são atividades populares entre eles.   Espiritualmente, os minotauros reverenciam Thaleessa como sua criadora, mas focam na busca pelo autoconhecimento e na compreensão do equilíbrio natural. Nas relações externas, além da estreita aliança com os centauros, não mantém alianças com muitas raças. Tem alianças e ligações com anões por estilo de vida próximo e comerciais somente, agindo de forma desconfiada com outras raças - em especial a humana e os Drows.]==],
    },
    {
        chave = "Ghiscari",
        nome = "Ghiscari",
        categoria = "NaoJogavel",
        origem = "Ras'Buz",
        tipo = "Terrestre, Aquático ou Aéreo",
        alinhamento = "Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 14,
        dadoVidaNum = 10,
        deslocamentoTexto = [==[14m]==],
        dadoVidaTexto = [==[1d10]==],
        deslocamentoModos = { terrestre = 14 },
        caracteristicas = {
            {
                nome = "Aceleração",
                descricao = [==[Você pode gastar uma ação bônus para realizar uma ação de disparada]==],
            },
            {
                nome = "Forma Primal Ghiscari",
                descricao = [==[Você recebe uma habilidade única de metamorfose Ghiscari vinculada a sua tribo]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à escuridão das montanhas e cavernas, os Ghiscari conseguem enxergar no escuro em tons de cinza, até 18 metros à frente]==],
            },
            {
                nome = "Comunicação Animal",
                descricao = [==[Você pode se comunicar com quaisquer espécie variante da sua linhagem, esta característica não pode ser apagada]==],
            },
        },
        tracos = [==[[Aceleração] você pode gastar uma ação bônus para realizar uma ação de disparada.
[Forma Primal Ghiscari] você recebe uma habilidade única de metamorfose Ghiscari vinculada a sua tribo.
[Visão no Escuro] acostumados à escuridão das montanhas e cavernas, os Ghiscari conseguem enxergar no escuro em tons de cinza, até 18 metros à frente.
[Comunicação Animal] você pode se comunicar com quaisquer espécie variante da sua linhagem, esta característica não pode ser apagada.]==],
        lore = [==[Fisiologia
  Os Ghiscaris possuem uma fisiologia variável de acordo com a tribo a que pertencem, refletindo as características dos animais que representam. No entanto, todos compartilham a habilidade de assumir formas humanas, ocultando suas verdadeiras naturezas para se misturar com outras raças quando necessário. Em sua forma humana, os Ghiscaris são quase indistinguíveis de humanos comuns, exceto por sutis traços bestiais, como olhos aguçados ou posturas ágeis, que podem denunciar sua verdadeira natureza. Quando assumem suas formas verdadeiras, também chamadas de Forma Animal, exibem as características físicas de seus animais ancestrais. Leões possuem músculos poderosos e uma juba imponente; águias, asas e olhos penetrantes; serpentes, escamas e flexibilidade; e ursos, uma força bruta imensurável.   As runas gravadas nos corpos dos guerreiros Ghiscaris são essenciais para sua capacidade de combate. Essas runas permitem que os guerreiros canalizem a força dos ancestrais e da própria natureza durante a Dança de Guerra. Cada Ghiscari possui uma conexão espiritual com o animal que sua tribo representa, podendo se comunicar com eles e até controlar suas ações em momentos de necessidade. Também herdaram a força e resistência dos animais que representam, permitindo-lhes suportar condições adversas e sobreviver nas Terras Selvagens, de acordo com cada característica.

 História
  Os Ghiscaris, também conhecidos como o Povo Fera, são uma raça ancestral, formada por tribos que representam as características de diversos animais. Cada tribo encarna fisicamente e espiritualmente a essência de uma criatura específica – leões, águias, serpentes, ursos, entre outros. Criados por Ras'buz, o filho de Erinor, deus primordial da terra, os Ghiscaris foram moldados para proteger as criaturas da natureza e viver em harmonia com o mundo. Ras'buz, o deus da terra e das criaturas, criou os Ghiscaris com a missão de representar e defender cada forma de vida animal. No entanto, ao despertar de um sono profundo, Ras'buz encontrou seu povo sendo caçado e oprimido por outras raças. Em resposta a essa injustiça, Ras'buz ensinou aos Ghiscaris a Dança de Guerra, uma arte marcial única, para que pudessem se defender e proteger suas tradições e territórios.   Os Ghiscaris vivem em constante movimento, adaptando-se às estações e às condições das Terras Selvagens. Eles não constroem cidades ou reinos, preferindo viver em harmonia com a natureza, utilizando os recursos disponíveis de forma sustentável. Seus lares são temporários, e sua sobrevivência é assegurada pela caça e pela coleta de plantas e frutos selvagens. Embora possam assumir formas humanas para se misturar com outras raças, os Ghiscaris mantêm uma profunda desconfiança em relação a qualquer civilização externa. As cicatrizes deixadas pelas opressões passadas tornaram o povo Ghiscari cauteloso e reservado, interagindo com outros apenas quando necessário. Eles tendem a proteger seus territórios com ferocidade, reagindo rapidamente a qualquer ameaça que possa pôr em risco suas terras ou suas tradições.

 Estilo de Vida
  A sociedade Ghiscari é composta de tribos independentes, cada uma representando um animal específico. Não há cidades ou reinos fixos, e as tribos se movem constantemente pelas Terras Selvagens, uma vasta área tropical de aproximadamente 4 milhões de km². Essas terras, com clima variável e ricas em biodiversidade, são o principal habitat dos Ghiscaris.   Cada tribo é governada por seus próprios líderes – guerreiros ou xamãs espirituais. Embora sejam autônomas, todas as tribos veneram Ras'buz como seu deus protetor. A divindade é a figura central na espiritualidade Ghiscari. Ele não apenas criou os Ghiscaris, mas também os ensinou a Dança de Guerra como forma de defesa e preservação de suas tradições.   Sem um sistema de escrita, transmitem suas histórias, mitos e ensinamentos por meio de uma rica tradição oral. Sua língua é considerada uma das mais complexas e belas, usada tanto em conversas cotidianas quanto em rituais sagrados. São seres profundamente espirituais, realizando rituais para invocar seus ancestrais e honrar Ras'buz. A Dança de Guerra é a expressão máxima dessa espiritualidade, pois canaliza a essência dos animais e dos espíritos dos guerreiros passados.
 A Dança de Guerra é a arte marcial sagrada dos Ghiscaris, ensinada diretamente por Ras'buz para capacitar seu povo a se defender contra seus opressores e proteger suas terras. Mais do que um simples combate físico, a Dança de Guerra é uma manifestação espiritual, onde corpo, mente e espírito se unem em perfeita harmonia para canalizar o poder ancestral. Após despertar de seu sono e ver os Ghiscaris sendo caçados e oprimidos, Ras'buz ensinou-lhes a Dança de Guerra para que pudessem se proteger. Esse estilo de luta foi inspirado nos movimentos e comportamentos dos animais que cada tribo representa, e também nas forças espirituais que os Ghiscaris reverenciam.
  Uma antiga lenda Ghiscari conta que houve um guerreiro que dominou o misterioso décimo movimento da Dança de Guerra, algo que ninguém mais conseguiu realizar. De acordo com o mito, esse guerreiro foi capaz de partir uma montanha ao realizar o movimento, tornando-se uma figura lendária entre seu povo. Acredita-se que o décimo movimento represente o ápice da união entre corpo, mente e espírito, mas sua técnica foi perdida ao longo do tempo.   A Dança de Guerra é composta por nove movimentos principais, cada um com um significado profundo e uma aplicação específica em combate, em que cada tribo possui sua própria interpretação dos movimentos, baseando-se nas características do animal que representam.:  O Golpe do Leão: força e poder bruto, o ataque direto.  O Voo da Águia: velocidade e precisão, golpes rápidos e certeiros.  A Emboscada da Serpente: furtividade, paciência e ataques surpresa.  A Investida do Urso: resistência e brutalidade em combates prolongados.  O Salto do Tigre: agilidade e capacidade de flanquear os inimigos.  O Mergulho do Golfinho: manobras evasivas e ataques subaquáticos.  O Uivo do Lobo: coordenação de grupo e ataques em formação.  A Caçada do Falcão: rastrear e perseguir inimigos a grandes distâncias.  A Fúria do Javali: resistência implacável, ignorando a dor em combate.]==],
    },
    {
        chave = "Ninfas",
        nome = "Ninfas",
        categoria = "NaoJogavel",
        origem = "Sýdos",
        tipo = "Terrestre, Aquática, Aérea, Ígnea",
        alinhamento = "Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 8,
        deslocamentoTexto = [==[10m (terrestre/aéreo/aquático)]==],
        dadoVidaTexto = [==[1d8]==],
        deslocamentoModos = { terrestre = 10, voo = 10, nado = 10 },
        caracteristicas = {
            {
                nome = "Regeneração Avançada",
                descricao = [==[Quando em contato com seu elemento direto, Ninfas recuperam adicionalmente 10% da vida máxima por dia, incluindo a recuperação de órgãos e membros amputados ou feridos]==],
            },
            {
                nome = "Mimetismo elemental",
                descricao = [==[receba a habilidade progressiva "Mimetismo elemental", que permite as ninfas se misturarem ao seu elemento natural para ganharem novas capacidades temporariamente]==],
            },
            {
                nome = "Comunicação Natural",
                descricao = [==[Conseguem comunicar-se com quaisquer outros elementais, plantas e animais em nível básico, transmitindo emoções simples e compreendendo suas respostas]==],
            },
        },
        tracos = [==[[Regeneração Avançada] Quando em contato com seu elemento direto, Ninfas recuperam adicionalmente 10% da vida máxima por dia, incluindo a recuperação de órgãos e membros amputados ou feridos. [Mimetismo elemental] receba a habilidade progressiva "Mimetismo elemental", que permite as ninfas se misturarem ao seu elemento natural para ganharem novas capacidades temporariamente. [Comunicação Natural] Conseguem comunicar-se com quaisquer outros elementais, plantas e animais em nível básico, transmitindo emoções simples e compreendendo suas respostas.]==],
        lore = [==[Fisiologia
  Ninfas possuem uma forma básica humanóide, geralmente feminina, com altura média entre 1,40m e 2,20m, com proporções elegantes e graciosas, com uma aparência que varia a depender do elemento ao qual são ligadas: sua pele varia de uma textura suave como seda a áspera como casca de árvore, com uma paleta de cores que abrange desde o azul profundo dos oceanos até o verde vibrante das florestas, ou do dourado cálido ao vermelho incandescente das chamas. Seus cabelos são uma extensão viva de seu elemento, ondulando como água, movendo-se como folhas ao vento, brilhando como chamas ou parecendo etéreos como nuvens. Os olhos das Ninfas são particularmente fascinantes, muitas vezes refletindo literalmente seu elemento, podendo conter miniaturas de oceanos, florestas, céus tempestuosos ou fogo dançante. Alimentam-se com energia absorvida diretamente de seu elemento e do ambiente ao seu redor, bem como sua respiração é mais um processo de troca de energia do que uma necessidade convencional.   Cada tipo de Ninfa possui adaptações únicas relacionadas ao seu elemento. As Vellara, ligadas à água, podem ter guelras sutis no pescoço ou costelas, e sua pele pode apresentar escamas microscópicas que auxiliam na natação. As Fylleas, conectadas à terra, possuem pele que pode imitar a textura de casca ou folhas, e têm a capacidade de se fundir fisicamente com árvores. As Alaris, seres do ar, têm corpos parcialmente translúcidos ou etéreos, com um peso extremamente leve que as permite quase flutuar. Já as Calindras, vinculadas ao fogo, apresentam uma temperatura corporal elevada e pele que pode emitir luz ou calor.   Possuem capacidade regenerativa quando em contato com seu elemento, não envelhecem no sentido tradicional e mantém sua aparência por séculos, embora possam escolher alterar sua forma com o tempo. São capazes de se reproduzirem por meio biológico com os sátios e através de processos mágicos complexos, que geralmente envolve a benção de Sýdos e a convergência de poderosas energias naturais.   Algumas ninfas são capazes de realizar metamorfose temporariamente para se assemelharem a criaturas mortais ou adaptarem-se a diferentes ambientes, bem como são capazes de se fundirem com seus elementos, mimetizando-se. Além disso, apresentam resistência às condições extremas de seus elementos.   Possuem sentidos aguçados e uma espécie de sexto sentido que as torna capaz de perceber intuitivamente desequilíbrios ou perturbações em seu domínio elemental.

 História
  Quando ainda havia o caos nos elementos, Sýdos percebeu que embora o mundo estivesse cheio de potencial, faltava-lhe ainda equilíbrio e harmonia. Foi então que ele decidiu criar seres que refletissem a beleza, força e a natureza: assim nasceram as Ninfas, concebidas para serem guardiãs vivas de seus elementos. Cada uma delas foi criada a partir de um aspecto único da natureza ao receber parte da essência da divindade silvestre. Das florestas antigas e profundas, nasceram as Fylleas: ninfas ligadas à terra, encarregadas de proteger as árvores e os ciclos das estações; das águas cristalinas de rios, lagos e mares foram criadas as Vellara, que se tornaram guardiãs das correntes marinhas e nascentes. Com o soprar do vento na força de uma canção, nasceram as Alaris, ninfas dos ventos e das brisas. Da centelha de calor com uma faísca de essência de Sýdos, as Calindras foram criadas, as raras ninfas do fogo que trazem renovação e calor ao mundo. Sua presença foi crucial para a criação e manutenção do mundo, trabalhando em harmonia com outros seres, mortais e imortais.   A medida que o mundo cresceu, assumiram o papel de protetoras de antigos bosques, nascentes cristalinas, picos montanhosos majestosos e caldeiras vulcânicas, mantendo ali o equilíbrio. Sua relação com outros seres era harmoniosa, em especial àqueles de cunho selvagem e natural. Se a busca e expansão de poder de outras raças trazem perigo e desequilíbrio para seu habitat, elas se tornam resistência: Fylleas convocam árvores para marcharem contra invasores, Vellaras desencadeam tempestades e inundações... E, mesmo assim, muita ninfas desapareceram retornando à essência de sua divindade paterna ou isolando-se em refúgios escondidos.   A relação das Ninfas com Sýdos permaneceu constante ao longo da história. Elas continuaram a atuar como suas mensageiras e executoras de sua vontade na preservação do equilíbrio natural.  Não lhes restou outra alternativa senão adaptarem a este novo mundo, encontrando novos papéis e formas e interação, como envolverem-se mais diretamente com outras sociedades, outras se tornaram mais reservadas, retirando-se para os últimos redutos verdadeiramente selvagens.

 Estilo de Vida
  As Ninfas geralmente habitam locais intimamente ligados ao seu elemento. Suas habitações são frequentemente integradas de forma harmoniosa ao ambiente natural, quase indistinguíveis da paisagem circundante. O dia-a-dia de uma Ninfa é dedicado principalmente à manutenção e nutrição de seu domínio natural. Isso pode envolver uma variedade de tarefas, como guiar o crescimento de plantas, influenciar padrões climáticos locais, purificar águas ou manter o equilíbrio energético de uma região. A comunhão com seu elemento é uma parte essencial em suas vidas, uma vez que são eles quem lhes fortificam e alimentam.   Artistas naturais, expressam-se através de canções que ecoam pelas florestas, danças que imitam o movimento das ondas, ou esculturas vivas feitas de plantas entrelaçadas. São criaturas sociais, embora de uma maneira diferente dos mortais, organizam-se em clãs elementais, com uma Matrona, uma ninfa mais antiga e experiente, enquanto líder e conselheira. Mesmo vivendo separadas por elementos, as ninfas com frequência colaboram entre si, como Vellaras purificarem água para as Fylleas e as Alaris trazerem notícias de outros lugares do mundo.   A interação com outras raças varia muito entre cada uma delas sendo que, em geral, elas tendem a ser cautelosas em suas interações, preferindo influenciar sutilmente em vez de intervir diretamente. As Ninfas também têm responsabilidades cerimoniais, realizando rituais para marcar mudanças sazonais, honrar Sýdos ou manter o equilíbrio natural. Estes rituais podem variar desde danças elaboradas que duram dias até períodos de silêncio contemplativo que se estendem por anos.   Apesar de sua longevidade e poderes, as Ninfas não são imunes aos ciclos de mudança e renovação. Elas podem entrar em períodos de dormência, fundindo-se completamente com seu elemento por séculos antes de emergir renovadas. Algumas Ninfas antigas escolhem se transformar em características permanentes da paisagem, como uma fonte eterna ou uma árvore imortal.]==],
    },
    {
        chave = "Lobisomens",
        nome = "Lobisomens",
        categoria = "NaoJogavel",
        origem = "Noctefir",
        tipo = "Terrestre",
        alinhamento = "Caótico Bom",
        jogavel = true,
        sangueAntigas = false,     -- nao esta na lista das 11 do livro
        mesticoPermitido = false,  -- "nao pode ser adquirida para (...) 'Lobisomem'"
        -- O "OU" DO LIVRO, segundo caso em 29 racas (o primeiro foi o Elfo).
        -- Nao e regra de mesa: esta escrito na qualidade "Linhagem da noite
        -- [06 pontos]", citada logo abaixo — "Escolha uma faccao de origem:
        -- Vigilantes da Lua (controle e disciplina) OU Filhos da Furia (poder
        -- e instinto)".
        --
        -- As duas faccoes ja estavam no catalogo como caracteristicas, e as
        -- DUAS apareciam na aba ao mesmo tempo. Achado na tela em 09/09/2026.
        -- Declarar a escolha exclusiva aqui e o que faz a nao escolhida sumir,
        -- pela mesma maquinaria do elfo: temCaracRacial() so responde true
        -- para a escolhida, e a lista da aba filtra a outra.
        escolhaExclusiva = { "Ódio Enraizado - Filhos da Fúria", "Lua Cheia - Vigilantes da Lua" },
        -- Qualidades, "Linhagem da noite [06 pontos]":
        --   "Receba a raca 'Lobisomem (Nascido)'. Escolha uma faccao de
        --    origem: Vigilantes da Lua (controle e disciplina) ou Filhos da
        --    Furia (poder e instinto) e a habilidade progressiva
        --    [Forma Bestial Lupina]"
        --   Restricao: "Somente uma ficha por vez pode possuir esta qualidade."
        -- O livro chama de "Lobisomem (Nascido)" - e este mesmo bloco de
        -- raca, com a origem definida (nascido, e nao mordido).
        linhagemNoite = true,
        deslocamentoNum = 12,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[12m (forma mortal) / 24m (forma bestial)]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 12 },
        formaAlternativa = { nome = "forma bestial", rotuloBase = "forma mortal", terrestre = 24 },
        caracteristicas = {
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Lobisomens passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Agilidade aprimorada",
                descricao = [==[Receba 1 ponto adicional no atributo Destreza na criação da ficha, além disso o limite do mesmo para os Lobisomens passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Forma bestial",
                descricao = [==[Receba a habilidade progressiva "Forma Bestial", que permite a um lobisomem se transformar da sua forma mortal para sua forma bestial]==],
            },
            {
                nome = "Olfato aguçado",
                descricao = [==[Seu olfato funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido]==],
            },
            {
                nome = "Audição aguçada",
                descricao = [==[Sua audição funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à caça e a convivência noturna, os lobisomens conseguem enxergar no escuro em tons de cinza, até 18 metros à frente]==],
            },
            {
                nome = "Ódio Enraizado - Filhos da Fúria",
                descricao = [==[Ao entrar em estado de Fúria, você deve rolar um teste de vontade com dificuldade 20 e caso falhe você irá obrigatoriamente se transformar. Caso entre em estado enlouquecido, aplique este mesmo efeito e considere como falha automática]==],
            },
            {
                nome = "Lua Cheia - Vigilantes da Lua",
                descricao = [==[Durante a lua cheia, todos os lobisomens se transformam compulsoriamente; personagens abaixo do nível 12 precisam rolar um teste puro de sabedoria com meta 20 para não perderem o controle]==],
            },
            {
                nome = "Ervas místicas",
                descricao = [==[Beladona e Acônito são plantas que se introduzidas na corrente sanguínea ou no sistema respiratório de um Lobisomem, corta todos os modificadores de seus testes físicos e defesa física pela metade]==],
            },
            {
                nome = "Fadiga pós-transformação",
                descricao = [==[Após uma noite de transformação o Lobisomem recebe o status "Exausto" pelas próximas 16 horas]==],
            },
            {
                nome = "Ódio milenar",
                descricao = [==[Receba o defeito "Intolerância - 02 pontos" sem ter direito de usufruir dos pontos, sendo esta intolerância contra os vampiros, seus lacaios e associados]==],
            },
        },
        tracos = [==[[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Lobisomens passa a ser 10 ao invés de 8.
[Agilidade aprimorada] receba 1 ponto adicional no atributo Destreza na criação da ficha, além disso o limite do mesmo para os Lobisomens passa a ser 10 ao invés de 8.
[Forma bestial] receba a habilidade progressiva "Forma Bestial", que permite a um lobisomem se transformar da sua forma mortal para sua forma bestial.
[Olfato aguçado] seu olfato funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido.
[Audição aguçada] sua audição funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido.
[Visão no Escuro] Acostumados à caça e a convivência noturna, os lobisomens conseguem enxergar no escuro em tons de cinza, até 18 metros à frente.

[Ódio Enraizado - Filhos da Fúria] Ao entrar em estado de Fúria, você deve rolar um teste de vontade com dificuldade 20 e caso falhe você irá obrigatoriamente se transformar. Caso entre em estado enlouquecido, aplique este mesmo efeito e considere como falha automática.
[Lua Cheia - Vigilantes da Lua] durante a lua cheia, todos os lobisomens se transformam compulsoriamente; personagens abaixo do nível 12 precisam rolar um teste puro de sabedoria com meta 20 para não perderem o controle. 
[Ervas místicas] Beladona e Acônito são plantas que se introduzidas na corrente sanguínea ou no sistema respiratório de um Lobisomem, corta todos os modificadores de seus testes físicos e defesa física pela metade.
[Fadiga pós-transformação] após uma noite de transformação o Lobisomem recebe o status "Exausto" pelas próximas 16 horas.
[Ódio milenar] receba o defeito "Intolerância - 02 pontos" sem ter direito de usufruir dos pontos, sendo esta intolerância contra os vampiros, seus lacaios e associados.]==],
        lore = [==[Fisiologia
  Os lobisomens possuem várias formas, dependendo de seu controle e de sua posição dentro da hierarquia da matilha. Na forma mortal, os lobisomens têm aparência normal, embora muitos apresentem uma constituição física robusta e uma aura predatória. Seus sentidos mais aguçados e reflexos rápidos os distinguem dos mortais comuns, e muitos exibem marcas ou cicatrizes que refletem seu papel na matilha. Já na forma bestial, assumem uma forma humanoide bestial. Seus corpos se alongam, crescem pelos espessos e adquirem traços lupinos. Essa forma é uma fusão da mortalidade e da besta, com força e agilidade aumentadas. Em sua forma bestial, os lobisomens se erguem entre 2 e 3 metros de altura. Eles possuem braços e pernas musculosos, garras afiadas e um focinho alongado. Seus olhos brilham com intensidade sobrenatural e suas mandíbulas são repletas de presas afiadas.
   Os Alphas, líderes das matilhas, possuem uma transformação única e mais poderosa, conhecida como a Segunda Forma. Nesse estado, eles se transformam em lobos gigantes, quadrúpedes, com uma altura que pode ultrapassar 4 metros e uma envergadura que intimida até os mais corajosos. Nesta forma, eles perdem completamente a postura humanoide, tornando-se feras colossais de força bruta e instinto apurado. Seus uivos são capazes de ressoar por quilômetros e inspirar medo nos corações de seus inimigos. Na forma de lobo gigante, os Alphas ganham força, resistência e velocidade ainda maiores. Sua pele é extremamente densa, capaz de resistir a golpes que seriam letais para lobisomens comuns. Suas mandíbulas podem quebrar ossos com facilidade, e suas garras são afiadas o suficiente para cortar através da pedra. Eles também possuem uma conexão espiritual mais profunda com a lua, tornando-os ainda mais poderosos em noites de lua cheia.

 História
  Os Lobisomens, conhecidos como os Filhos da Noite e da Fúria, surgiram como uma raça destinada a cumprir um propósito específico: caçar e punir os vampiros amaldiçoados por Noctefir e Ditrys após o evento do Eclipse da Cisão. A guerra sangrenta entre os Elfos, filhos de Ditrys, e os Drow, criados por Noctefir, havia devastado o mundo e, como punição, os líderes dos Drow foram transformados nos primeiros vampiros, amaldiçoados com a imortalidade. Para garantir que esses amaldiçoados não perturbassem ainda mais o equilíbrio, Noctefir criou uma nova raça de guerreiros implacáveis, moldando-os a partir dos mais ferozes lobos e infundindo-lhes a essência da noite e a fúria incontrolável da lua cheia. Esses primeiros lobisomens foram dotados de força brutal, velocidade sobrenatural e a capacidade de se transformar em feras humanoides durante a lua cheia, sendo capazes de rastrear e destruir os vampiros, mesmo nas mais profundas sombras. Os lobisomens carregam dentro de si uma maldição dual, representando a natureza selvagem do lobo e o conflito interno do homem. Durante a lua cheia, eles se transformam em bestas poderosas, guiadas pela fúria e pelo instinto da caça. A transformação é dolorosa e inevitável, e muitos lobisomens lutam para manter o controle de suas ações nesses momentos.   Nos primeiros séculos após sua criação, os lobisomens dedicaram-se à sua missão original: caçar os vampiros e assegurar que a maldição deles não trouxesse ainda mais caos ao mundo. Esses primeiros lobisomens se autodenominaram os Guardiões da Noite, patrulhando as florestas, montanhas e cavernas onde os vampiros tentavam se esconder. Os Guardiões eram organizados em matilhas, lideradas pelos mais fortes e experientes, conhecidos como Alphas. Cada matilha tinha a responsabilidade de proteger um território específico, e elas se comunicavam através de uivos e sinais ocultos, criando uma rede de vigilância eficiente e implacável. A força dos lobisomens estava em sua unidade, e eles atacavam em grupo, usando suas habilidades de rastreamento, velocidade e força bruta para sobrepujar os vampiros. Apesar de seu propósito principal ser a caça aos vampiros, os lobisomens não eram meros caçadores cegos. Eles também agiam como protetores das comunidades civilizadas que viviam em seus territórios. Com o tempo, muitos povos passaram a ver os lobisomens como defensores das florestas e dos inocentes, ainda que a desconfiança e o medo de sua natureza bestial nunca desaparecessem completamente.
  Embora sua missão fosse clara, os lobisomens enfrentaram um desafio interno constante: o controle sobre sua própria natureza. A transformação forçada durante a lua cheia era uma maldição que muitos não conseguiam suportar. Aqueles que não tinham o treinamento ou a disciplina necessária frequentemente sucumbiam à fúria e ao instinto de matar indiscriminadamente, tornando-se perigosos para todos ao seu redor, não apenas para os vampiros. Dessa luta interna, surgiram duas facções dentro da sociedade dos lobisomens: os Vigilantes da Lua e os Filhos da Fúria.
  Os Vigilantes da Lua são facção que buscam dominar completamente a fera interior. Eles se dedicavam a um treinamento rigoroso e espiritual, tentando manter a sanidade e o controle durante as transformações. Os Vigilantes eram vistos como os mais equilibrados e sábios entre os lobisomens, atuando muitas vezes como mediadores e líderes espirituais. Já os Filhos da Fúria abraçam sua natureza bestial e viam a transformação como um presente e uma arma poderosa. Acreditavam que a fúria do lobo era uma bênção de Noctefir, destinada a purificar o mundo dos impuros, incluindo vampiros e quaisquer outros que se colocassem em seu caminho. Os Filhos da Fúria eram mais agressivos e estavam frequentemente em conflito com os Vigilantes da Lua sobre a melhor forma de conduzir o destino de sua raça.
  Após deixar o Vale do Fim, o Rei Sylas e os vampiros restantes da Linhagem do Dragão decidiram abandonar qualquer laço com o passado e estabeleceram uma nova ordem. Com suas recém-adquiridas habilidades de manipulação do vitae e sua compreensão da natureza das trevas, eles começaram a expandir sua influência pelo submundo das civilizações. Seus métodos eram sutis, baseados em alianças, chantagens e manipulações, usando o Pacto de Sangue para atrair mortais e criaturas ao seu serviço. Sylas, agora conhecido como Dracul, estabeleceu a base de seu poder em um castelo isolado nas Montanhas de Ébano, de onde ele e sua corte comandavam uma rede crescente de influência e poder. Ele enviou seus descendentes para se infiltrarem nas cortes humanas, élficas e até mesmo anãs, usando sua imortalidade e persuasão sobrenatural para conquistar corações e mentes. À medida que seu poder crescia, os vampiros se tornaram mais ousados, e seus ataques a aldeias e vilarejos se tornaram frequentes. Eles espalharam a maldição vampírica, criando novos clãs e subclãs, aumentando suas fileiras e fortalecendo sua presença nas regiões sombrias e isoladas do continente. Os lobisomens, especialmente os Filhos da Fúria, logo perceberam a ameaça crescente. Os ataques a vampiros solitários e pequenos grupos já não eram suficientes, pois os vampiros passaram a agir em unidades coesas, bem protegidas e coordenadas. Os lobisomens viam a ascensão dos vampiros como uma afronta direta ao propósito de sua criação e um desafio a ser enfrentado com brutalidade.
  Com a crescente influência dos vampiros e a perda de territórios outrora seguros, os lobisomens, liderados por Arkhan, o Alpha dos Filhos da Fúria, e Lakshmi, a Alpha dos Vigilantes da Lua, organizaram um esforço conjunto para caçar e erradicar a ameaça vampírica. Assim começou a chamada Guerra das Sombras, um período de intensos conflitos e batalhas travadas longe dos olhos mortais, nas florestas, montanhas e cidades abandonadas. Os Filhos da Fúria de Arkhan abraçaram completamente sua natureza selvagem, lançando ataques devastadores às fortalezas e esconderijos vampíricos. Arkhan, um lobisomem temido por sua ferocidade e força inigualáveis, liderou seus guerreiros em incursões noturnas, destruindo dezenas de vampiros e espalhando terror em suas fileiras. Ele acreditava que a única maneira de vencer os vampiros era exterminá-los completamente, sem piedade ou hesitação.   Enquanto isso, Lakshmi e os Vigilantes da Lua adotaram uma abordagem mais estratégica. Eles se dedicaram a desmantelar a rede de influência dos vampiros, atacando suas bases de poder e destruindo suas alianças com mortais e outros seres sobrenaturais. Lakshmi, conhecida por sua sabedoria e domínio sobre a transformação, liderava suas matilhas com disciplina, focando em emboscadas e missões de espionagem para coletar informações e planejar ataques cirúrgicos.   Apesar de suas diferenças, Arkhan e Lakshmi formaram uma aliança temporária, unindo forças contra o inimigo comum. Seus ataques combinados forçaram os vampiros a recuar, mas o preço foi alto. As baixas entre os lobisomens foram numerosas, e a guerra começou a tomar um rumo imprevisível. Em resposta, Sylas convocou os mais poderosos vampiros de sua linhagem, formando um conselho de guerra. Ele usou a manipulação do vitae e o Pacto de Sangue para fortalecer seus aliados e neutralizar espiões e traidores. Sob seu comando, os vampiros contra-atacaram com ferocidade, tornando a Guerra das Sombras um conflito prolongado e devastador para ambos os lados.
  O conflito atingiu seu ápice em uma noite conhecida nas lendas como a Lua Sangrenta, um raro evento astronômico em que a lua cheia adquire um tom avermelhado. Arkhan e Lakshmi, após meses de ataques e perdas, descobriram a localização de Sylas e de seu conselho no castelo nas Montanhas de Ébano. Determinados a acabar com a ameaça vampírica de uma vez por todas, decidiram lançar um ataque final. As matilhas se uniram em número nunca antes visto, uma força composta de centenas de lobisomens, marchando sob a liderança de seus dois maiores Alphas. A batalha que se seguiu foi uma das mais brutais e sangrentas já registradas na história. Os lobisomens atacaram o castelo de Sylas com uma fúria avassaladora, enfrentando vampiros poderosos que defendiam seus lares com a mesma intensidade.   No coração da batalha, Sylas, o Rei Vampiro, confrontou pessoalmente Arkhan e Lakshmi. O duelo que se seguiu tornou-se lendário: três seres poderosos, cada um com habilidades e força incomparáveis, travando uma luta desesperada e feroz. Arkhan, movido pela fúria, atacou com uma brutalidade avassaladora, desferindo golpes que poderiam partir montanhas. Ele acreditava que Sylas era a encarnação de tudo o que havia de errado no mundo e estava determinado a destruí-lo, mesmo que custasse sua própria vida. Lakshmi, por sua vez, usou sua inteligência e habilidades táticas para coordenar ataques precisos, aproveitando-se de qualquer fraqueza que Sylas mostrasse. Sua presença era uma combinação de graça e letalidade, e sua conexão com a lua cheia lhe dava uma força ainda maior naquele momento. Sylas, porém, não era um adversário fácil. Utilizando o poder do vitae e séculos de experiência em combate, ele resistiu aos ataques combinados de Arkhan e Lakshmi, usando suas habilidades para drenar a força vital de seus inimigos e regenerar suas próprias feridas. Ele lutou com a ferocidade de um dragão e a astúcia de um mestre das sombras, determinado a manter seu domínio. O confronto durou horas, transformando o castelo em ruínas. No entanto, mesmo os mais fortes têm seus limites. Arkhan, já ferido por inúmeros combates anteriores, caiu primeiro, sucumbindo aos golpes devastadores de Sylas. Lakshmi, movida pelo desespero e pela perda de seu aliado, lançou um último ataque, perfurando o coração de Sylas com suas garras antes de ser mortalmente ferida. Com seus últimos suspiros, Sylas conseguiu se libertar e, gravemente ferido, recuou do campo de batalha.   Ambos os Alphas morreram naquele dia, e Sylas ficou à beira da morte, desaparecendo na escuridão antes que os outros lobisomens pudessem encontrá-lo. A morte de Arkhan e Lakshmi marcou o fim do período áureo dos lobisomens, e a batalha na Lua Sangrenta tornou-se um símbolo do fim de uma era. Com a liderança fragmentada e sem a presença dos Alphas para guiá-los, os lobisomens foram forçados a recuar e a reorganizar suas forças. Sem os Alphas, os lobisomens perderam o poder de caça que antes tinham sobre os vampiros, e a Guerra das Sombras entrou em um período de trégua instável. Os vampiros, apesar das grandes perdas, sobreviveram e começaram a se reorganizar em clãs e linhagens menores, mais difíceis de serem rastreados e eliminados. A partir daquele momento, os lobisomens tiveram de encontrar novas formas de caçar e rastrear os vampiros, agora que estes já não seriam tão facilmente predados como antes.

 Estilo de Vida
  A sociedade dos lobisomens é complexa e multifacetada, composta por diferentes matilhas e facções que coexistem em um equilíbrio tênue entre cooperação e rivalidade. Baseada em lealdade, força e ancestralidade, a estrutura social dos lobisomens é regida por uma rígida hierarquia e códigos de conduta que visam manter a ordem e a sobrevivência de sua espécie, enquanto enfrentam a luta constante contra sua natureza bestial. A sociedade dos lobisomens é organizada em matilhas, grupos familiares ou de afinidade liderados por um Alpha. Cada matilha ocupa um território específico e possui suas próprias tradições e regras internas. As matilhas são o núcleo da sociedade lobisomem. Elas funcionam como clãs ou famílias extensas, oferecendo proteção, apoio e um senso de identidade a seus membros. Cada matilha é independente, mas todas respeitam uma hierarquia geral e um código de conduta comum.
  Os líderes das matilhas são os Alphas, lobisomens de grande força e sabedoria que possuem a responsabilidade de proteger e guiar sua matilha. Eles são escolhidos não apenas pela força bruta, mas também pela capacidade de liderança e compreensão das necessidades de seu grupo. Os Alphas têm a habilidade de entrar na forma de lobo gigante, simbolizando seu status superior aos demais: Betas e Ômegas.
  Os betas são os segundos em comando, responsáveis por auxiliar o Alpha e manter a ordem na matilha. Geralmente, são lobisomens que demonstram força e lealdade, servindo como conselheiros e líderes em potencial. Já os ômegas representam o posto mais baixo na hierarquia. Os Ômegas são frequentemente novos membros ou lobisomens que falharam em alguma prova de lealdade ou força. Apesar de serem vistos com desdém, os Ômegas têm um papel importante na sociedade, ajudando a aliviar as tensões dentro da matilha e agindo como uma espécie de mediador em conflitos internos.
  Apesar das diferenças entre as matilhas, existe um senso de hierarquia geral entre os lobisomens. As matilhas respeitam as decisões tomadas por Alphas mais poderosos ou por conselhos formados por vários líderes
  A cultura dos lobisomens é rica em rituais e tradições, muitos deles ligados à lua e à natureza. Suas crenças e costumes refletem o conflito constante entre a razão e a fúria primal. A primeira transformação de um lobisomem é um evento significativo, acompanhado por rituais conduzidos pelos anciãos da matilha. Esses rituais ensinam o jovem lobisomem a aceitar e controlar sua nova natureza. Durante a lua cheia, quando todos são obrigados a se transformar, os anciãos observam os mais jovens, ajudando-os a manter o controle e garantindo que não causem dano a si mesmos ou aos outros.
  Os membros das matilhas são constantemente testados quanto à sua lealdade e força. Provas físicas e desafios mentais são usados para determinar a posição de um lobisomem dentro da hierarquia. Aqueles que falham podem ser relegados à posição de Ômega, mas têm a oportunidade de provar seu valor em futuras ocasiões.
  As matilhas se reúnem periodicamente em Conselhos Lunares, encontros realizados durante a lua cheia para discutir questões importantes que afetam todas as matilhas. Durante esses conselhos, disputas entre matilhas são resolvidas, alianças são forjadas e decisões que impactam toda a sociedade lobisomem são tomadas. Esses conselhos são presididos pelos Alphas mais respeitados e antigos. 
  A lua cheia é um momento sagrado para os lobisomens. Além das transformações inevitáveis, muitos lobisomens participam de rituais de caça e celebração. Para os Vigilantes da Lua, é um momento de meditação e controle; para os Filhos da Fúria, é um momento de liberação e demonstração de força. Alguns lobisomens marcam seus corpos com tatuagens ou cicatrizes, conhecidas como Marcas da Lua, que simbolizam conquistas, alianças ou eventos importantes em suas vidas. Essas marcas são consideradas honrarias e refletem a história pessoal e o status de um lobisomem dentro de sua matilha.
  Rivalidades entre matilhas são comuns, especialmente quando territórios se sobrepõem. No entanto, essas disputas raramente resultam em violência mortal, pois os lobisomens compreendem a importância de manter a união contra ameaças externas. Durante períodos de grande perigo, matilhas rivais podem formar alianças temporárias para enfrentar inimigos comuns, como vampiros ou outras criaturas sobrenaturais.
  Os lobisomens têm uma relação de inimizade ancestral com os vampiros. Embora existam períodos de trégua, a desconfiança mútua e o histórico de confrontos tornam a paz instável. Os lobisomens veem os vampiros como uma ameaça à ordem natural, e muitos dedicam suas vidas à caça dessas criaturas. Lobisomens geralmente evitam contato direto com humanos e elfos, preferindo viver em territórios afastados. No entanto, alguns atuam como protetores de comunidades humanas, defendendo vilarejos e florestas contra criaturas malignas e perigos sobrenaturais. Essa relação é geralmente marcada pela desconfiança, mas também pelo respeito mútuo. Têm uma relação próxima com druidas e magos que respeitam o equilíbrio natural. Eles compartilham conhecimentos e, às vezes, trabalham juntos para proteger as florestas e os territórios selvagens de ameaças.
  A única raça que é conhecida por ter uma boa relação com os Lobisomens são os Ghiscari.
  A sociedade lobisomem é regida por uma combinação de força, tradição e respeito. A justiça é muitas vezes rápida e implacável, mas há um forte código de honra que todos devem seguir. Disputas sérias ou crimes cometidos por lobisomens são resolvidos pelo Julgamento da Lua, um ritual onde o acusado deve enfrentar um tribunal de Alphas e anciãos. Dependendo da gravidade do crime, o julgamento pode resultar em exílio, rebaixamento na hierarquia ou, em casos extremos, na execução. 
  A posição de Alpha não é permanente. Qualquer membro da matilha pode desafiar o Alpha para assumir a liderança. Esses desafios são rituais formais, e a luta que se segue é brutal, mas raramente letal. O vencedor ganha o direito de liderar, enquanto o perdedor é rebaixado, mas mantém seu lugar na matilha.
  Para os que falharam em suas provas ou que traíram a matilha, há o caminho do Ômega, uma posição de humilhação, mas também de redenção. Os Ômegas têm a chance de provar seu valor através de atos de bravura e lealdade, podendo um dia ser reintegrados plenamente à sociedade.]==],
    },
    {
        chave = "Minotauros",
        nome = "Minotauros",
        categoria = "NaoJogavel",
        origem = "Thaleessa",
        tipo = "Terrestre",
        alinhamento = "Leal-Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        -- Livro 1.6, Minotauros: "Dado de Vida: 1d12+4".
        -- Livro 3.2: o dado na vida inicial equivale ao valor maximo.
        dadoVidaNum = 16,
        deslocamentoTexto = [==[8m]==],
        dadoVidaTexto = [==[1d12+4]==],
        deslocamentoModos = { terrestre = 8 },
        caracteristicas = {
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Minotauros passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Vigorosos",
                descricao = [==[Receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Minotauros passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Olfato aguçado",
                descricao = [==[Seu olfato funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido]==],
            },
        },
        tracos = [==[[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Minotauros passa a ser 10 ao invés de 8.
[Vigorosos] receba +2 no atributo Constituição durante a criação da ficha, além disso o limite do mesmo para os Minotauros passa a ser 10 ao invés de 8.
[Olfato aguçado] seu olfato funciona perfeitamente em uma distância de até (Nível x100) metros, podendo dobrar este valor ao gastar uma ação bônus; Receba bônus de +2 para testes da perícia percepção envolvendo este sentido.]==],
        lore = [==[Fisiologia
  Os minotauros são seres imponentes, combinando características humanas e bovinas. Possuem o corpo musculoso de um humano, mas com a cabeça e os chifres de um touro, com a pele coberta por uma pelagem curta e densa, variando em cores do marrom escuro ao negro, às vezes com manchas brancas.    Sua estrutura muscular é bem desenvolvida, conferindo-lhes força sobre-humana. Os chifres crescem continuamente ao longo de suas vidas, são vistos como símbolos de status e conquistas.  Uma característica única é a presença de um padrão de espirais similares a vinhas e galhos na base de seus chifres. O sistema digestivo dos minotauros é adaptado para uma dieta onívora, com uma preferência por vegetais e grãos, mas também capazes de digerir carne eficientemente.   Os minotauros possuem um olfato aguçado e uma audição excepcional, úteis tanto para a caça e proteção das florestas labirínticas onde vivem. Sua longevidade é considerável, podendo viver até 200 anos.

 História
  Criados por Thaleessa como uma das raças guardiãs do mundo natural, os minotauros receberam o dom da força física e uma profunda conexão com a terra e as rochas. Desde o início, eles foram concebidos para serem aliados naturais dos centauros, com cada raça complementando as habilidades da outra.   Os minotauros se estabeleceram nas regiões montanhosas e rochosas do reino e sua afinidade natural com a pedra os levou a criar elaborados labirintos e cidades subterrâneas, demonstrando uma habilidade inata para engenharia e arquitetura, embora não tão refinada quanto a arquitetura anã.    Durante séculos, os minotauros desenvolveram uma sociedade baseada no respeito à natureza, na busca pelo conhecimento e na valorização da força física e mental. Eles se tornaram mestres na arte de trabalhar a pedra, criando monumentos impressionantes e sistemas de irrigação engenhosos que permitiam a vida até mesmo nas regiões mais áridas.   Com a aliança de seus irmãos centauros e a aproximação destes no decorrer do tempo, pois ambos tem o papel sagrado de proteger as Florestas e terras selvagens, os minotauram integram mais elementos naturais em suas estruturas de pedra. Seus labirintos, antes puramente funcionais, ganharam jardins suspensos e canais de água, simbolizando a harmonia entre a rocha e a vida.   A sociedade minotauro também evoluiu. Além de valorizarem a força física e a sabedoria, eles passaram a enfatizar a importância da cooperação e da compreensão mútua.  Foram instruídos a serem os sentinelas da verdade e para sempre equilibrar suas forças e suas mentes. Eles eram conhecidos por sua habilidade com armas pesadas, como machados e lanças, mas também por sua sabedoria estratégica, capaz de controlar as batalhas e os cenários mais complexos. Com o tempo, sua presença começou a ser vista com suspeita por algumas raças mais territoriais e hostis. Nos conflitos entre os reinos de forças caóticas e organizadas, as tribos humanas e as criaturas sombrias viam estes seres como uma ameaça em potencial, pois sua força e inteligência os tornam líderes militares extraordinários. Por isso, se envolveram em muitos conflitos, embora sempre mantenham um código de honra que reflete os ensinamentos de seus ancestrais. Quando lutaram, nunca foi com o objetivo de destruição pura, exceto quando não havia outra alternativa.   Nos dias de hoje, continuam a ser os guardiões de passagens e de lugares secretos. Eles vivem nas montanhas remotas, em labirintos ancestrais e em fortalezas secretas, longe da vista do mundo comum, mas sempre prontos para intervir quando necessário.

 Estilo de Vida
  Habitam complexos labirínticos esculpidos nas montanhas, conhecidos por serem verdadeiras obras-primas de engenharia que refletem sua habilidade e criatividade, com jardins internos e lagos profundos. Sua sociedade é baseada na meritocracia, que valoriza a sabedoria, força e capacidade de resolução de problemas. Seus líderes são escolhidos por sua estratégia e força física, em grandes combates que são realizados quando algum minotauro sente-se capaz de subir ao poder. A educação dos jovens minotauros é abrangente, incluindo filosofia, geologia, engenharia, história e artes marciais. A arte minotaura se expressa principalmente através da escultura em pedra e da arquitetura, embora música e poesia também sejam apreciadas, frequentemente explorando temas de busca, equilíbrio e transformação.   A dieta minotaura é variada, incluindo grãos cultivados em terraços de montanha, vegetais de raiz, carne de caça, peixes de rios montanhosos e queijos fortes. Sua culinária é conhecida por sabores robustos e pratos substanciosos. Para recreação, desfrutam de competições físicas e mentais, como corridas, lutas cerimoniais e competições. Escalada e exploração de cavernas também são atividades populares entre eles. Espiritualmente, os minotauros reverenciam Thaleessa como sua criadora, mas focam na busca pelo autoconhecimento e na compreensão do equilíbrio natural. Nas relações externas, além da estreita aliança com os centauros, não mantém alianças com muitas raças. Tem alianças e ligações com anões por estilo de vida próximo e comerciais somente, agindo de forma desconfiada com outras raças - em especial a humana e os Drows.]==],
    },
    {
        chave = "Satiros",
        nome = "Sátiros",
        categoria = "NaoJogavel",
        origem = "Ammis",
        tipo = "Terrestre",
        alinhamento = "Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 12,
        dadoVidaNum = 8,
        deslocamentoTexto = [==[12m]==],
        dadoVidaTexto = [==[1d8]==],
        deslocamentoModos = { terrestre = 12 },
        caracteristicas = {
            {
                nome = "Carismáticos",
                descricao = [==[Receba 1 ponto adicional no atributo Carisma na criação da ficha, além disso o limite do mesmo para os Sátiros passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Maratonista",
                descricao = [==[Devido a fisiologia adaptada para percorrerem grandes distâncias, o valor "Corrida" dos Sátiros consiste no triplo do "Deslocamento", ao invés do dobro. Esta mecânica também vale para os saltos]==],
            },
            {
                nome = "Simpatia com a fauna",
                descricao = [==[Os Sátiros são capazes de se comunicarem naturalmente com qualquer criatura que seja do tipo "Besta"]==],
            },
            {
                nome = "Simpatia com a flora",
                descricao = [==[Uma vez por dia os Sátiros podem realizar uma ação para fazer uma pergunta a qualquer planta, vegetal ou flor, e terão sua pergunta respondida corretamente]==],
            },
            {
                nome = "Vício dos Sátiros",
                descricao = [==[Receba o defeito "Vício - 02 pontos" sem ter direito aos pontos do mesmo; Escolha entre um dos três vícios: "Bebidas alcólicas", "Tabaco" ou "Sexo"]==],
            },
        },
        tracos = [==[[Carismáticos] receba 1 ponto adicional no atributo Carisma na criação da ficha, além disso o limite do mesmo para os Sátiros passa a ser 10 ao invés de 8.
[Maratonista] devido a fisiologia adaptada para percorrerem grandes distâncias, o valor "Corrida" dos Sátiros consiste no triplo do "Deslocamento", ao invés do dobro. Esta mecânica também vale para os saltos. [Simpatia com a fauna] os Sátiros são capazes de se comunicarem naturalmente com qualquer criatura que seja do tipo "Besta".  [Simpatia com a flora] uma vez por dia os Sátiros podem realizar uma ação para fazer uma pergunta a qualquer planta, vegetal ou flor, e terão sua pergunta respondida corretamente.
[Vício dos Sátiros] receba o defeito "Vício - 02 pontos" sem ter direito aos pontos do mesmo; Escolha entre um dos três vícios: "Bebidas alcólicas", "Tabaco" ou "Sexo"]==],
        lore = [==[Fisiologia
  São criaturas encantadoras, com uma aparência que combina características humanas e caprinas. Sua altura média varia entre 1,5 a 1,8 metros, com corpos esguios e ágeis. Possuem pernas de cabra, terminando em cascos duros, que lhes conferem uma notável destreza e capacidade de se mover rapidamente através de terrenos acidentados. A cor de sua pele normalmente varia entre uma tonalidade acobreada até um tom negro, enquanto o cabelo pode variar em cores que vão do castanho ao dourado, muitas vezes adornado com folhas e flores. Os Sátiros possuem pequenos chifres curvos que emergem de suas testas, simbolizando sua conexão com a natureza e a fertilidade.    Seus olhos são vivos e expressivos, refletindo uma alegria contagiante e uma astúcia natural. Estas criaturas tem uma expectativa de vida de 300 anos de idade, podendo-se medir a partir pelo tamanho do chifre, também é comum que a barba seja proporcional a sua idade, sendo possível identificar os anciões como criaturas com longos chifres e barbas trançadas que vão até a barriga e com muitos adornos. Também são herbívoros, de forma que o mero cheiro de qualquer tipo de prato que leve carne pode causar náuseas aos mesmos.   Não existem fêmeas nesta raça, e a reprodução da espécie se dá do envolvimento destas criaturas com ninfas, fadas, elfas e fêmeas de outros povos. Um ditado popular diz que o nariz de um Sátiro fareja maldade, e por isso é raro o envolvimento deles com damas de outras raças que não possuam um alinhamento igual ao dos mesmos.

 História
  Foram criados pela deusa da primavera Ammis, que desejava companhia e ajuda para espalhar o espírito de renovação e vida pelo mundo durante a estação. Inicialmente a deusa estava sozinha em sua tarefa de trazer a primavera, mas, buscando companhia e auxílio, ela infundiu seu sangue divino em seres da floresta, dando origem aos primeiros Sátiros. Estas criaturas tornaram-se então os seus filhos mais queridos e fiéis, sempre prontos a ajudá-la em sua missão de espalhar a vida e a alegria pelo mundo.    Com o passar dos séculos se estabeleceram como guardiões das florestas e protetores dos segredos da natureza. Eles são frequentemente vistos como intermediários entre o mundo mortal e os deuses, especialmente durante os festivais de primavera, onde sua presença é celebrada com danças, músicas e rituais em honra à sua criadora. Embora os Sátiros não possuam um reino ou território específico, são reverenciados e respeitados em diversas comunidades, especialmente entre os Elfos e outras raças ligadas à natureza.

 Estilo de Vida
  Estes seres vivem em harmonia com a natureza, habitando florestas densas e áreas selvagens, preferindo uma vida simples, livre de luxos artificiais, e valorizam a alegria, a música e a dança como estilo de vida. Suas comunidades são geralmente pequenas, formadas por grupos familiares ou clãs que se reúnem para celebrar as mudanças das estações e outras ocasiões festivas. Esses meio-caprinos são conhecidos por seu espírito livre e despreocupado, frequentemente viajando para ajudar outras raças ou simplesmente para explorar o mundo. Apesar de sua natureza alegre, eles são protetores ferozes de seus lares e das florestas, utilizando sua agilidade e habilidades mágicas para afastar intrusos e ameaças.   Mestres da hospitalidade, adoram reunir amigos e desconhecidos para festas repletas de música e dança. Sua habilidade em tocar instrumentos musicais é lendária, e muitas de suas melodias são consideradas encantadas, capazes de inspirar grande alegria ou profunda reflexão. Apesar de seu estilo de vida aparentemente despreocupado, possuem um forte senso de responsabilidade em relação à natureza e são altamente respeitados por sua sabedoria em assuntos relacionados à flora e à fauna. É comum que um Sátiro ao atingir a vida adulta saia em uma jornada de auto-descobrimento que pode durar décadas, só retornando ao seu povo quando considerar que possui uma grande história para ser contada.]==],
    },
    {
        chave = "Ursaris",
        nome = "Ursaris",
        categoria = "NaoJogavel",
        origem = "Wenti",
        tipo = "Terrestre",
        alinhamento = "Leal Neutro",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 8,
        dadoVidaNum = 12,
        deslocamentoTexto = [==[8m (em pé) / 18m (postura Ursari)]==],
        dadoVidaTexto = [==[1d12]==],
        deslocamentoModos = { terrestre = 8 },
        formaAlternativa = { nome = "postura Ursari", rotuloBase = "em pé", terrestre = 18 },
        caracteristicas = {
            {
                nome = "Pele endurecida",
                descricao = [==[Os Ursari são criaturas difíceis de serem feridas, absorvendo naturalmente (2 + Rank) de dano em todo golpe físico aplicado contra si]==],
            },
            {
                nome = "Super força",
                descricao = [==[Receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Ursari passa a ser 10 ao invés de 8]==],
            },
            {
                nome = "Postura Ursari",
                descricao = [==[Receba a habilidade progressiva "Postura Ursari", que permite aos Ursari mudarem sua postura humanoide para uma postura selvagem, que aumenta suas defesas e lhes permitem usar suas garras afiadas para ataques devastadores]==],
            },
            {
                nome = "Rugido amedrontador",
                descricao = [==[Receba +1 para rolar testes da perícia "Intimidação" e "Subjugar"; A partir do nível 11 este bônus é de +2]==],
            },
            {
                nome = "Código de honra Ursari",
                descricao = [==[Receba o defeito "Código de conduta" sem ter direito aos pontos do mesmo; Este código é baseado no código de honra Ursari]==],
            },
        },
        tracos = [==[[Pele endurecida] os Ursari são criaturas difíceis de serem feridas, absorvendo naturalmente (2 + Rank) de dano em todo golpe físico aplicado contra si.
[Super força] receba 1 ponto adicional no atributo Força na criação da ficha, além disso o limite do mesmo para os Ursari passa a ser 10 ao invés de 8.
[Postura Ursari] receba a habilidade progressiva "Postura Ursari", que permite aos Ursari mudarem sua postura humanoide para uma postura selvagem, que aumenta suas defesas e lhes permitem usar suas garras afiadas para ataques devastadores
[Rugido amedrontador] receba +1 para rolar testes da perícia "Intimidação" e "Subjugar"; A partir do nível 11 este bônus é de +2.
[Código de honra Ursari] receba o defeito "Código de conduta" sem ter direito aos pontos do mesmo; Este código é baseado no código de honra Ursari.]==],
        lore = [==[Fisiologia
  Os Ursari são uma raça robusta e imponente, com corpos musculosos e cobertos por uma pelagem densa e espessa que não variam em cor, sempre brancos, essa pelagem não só proporciona proteção contra o frio, mas também atua como uma camada defensiva contra fortes impactos. Da mesma forma, sua pele é extremamente dura, com as lâminas mais afiadas encontrando dificuldades para arrancar sequer uma gota de sangue dessa raça. Sua aparência em geral é exatamente igual a de um urso selvagem, exceto pelo tamanho, a inteligência e a capacidade de falar.   Possuem por volta de 1,6m a 2m quando apoiados nas quatro patas e em duas variam entre 3,2m a 4m. Dotados corpos robustos e poderosos, contam com membros superiores longos e extremamente fortes, terminando em mãos grandes com garras afiadas que podem ser retraídas para facilitar o uso de ferramentas e armas. Suas pernas são igualmente poderosas, permitindo-lhes correr rapidamente e mover-se com agilidade surpreendente para seu tamanho.

 História
  No início, os Ursari viviam em tribos isoladas nas montanhas e florestas nevadas, onde caçavam, pescavam e coletavam recursos naturais para sobreviver. Eles rapidamente se tornaram mestres das artes da sobrevivência e da caça, desenvolvendo técnicas de combate e estratégias de defesa que lhes permitiam enfrentar qualquer ameaça, seja de feras selvagens ou de invasores.   À medida que sua sociedade se desenvolvia, os Ursari começaram a explorar além de suas terras natais, encontrando outras raças e civilizações. Eles perceberam que possuíam habilidades e conhecimentos que poderiam ser valorizados por outros povos, especialmente em tempos de guerra e necessidade. Foi assim que os Ursari se tornaram mercenários respeitados, oferecendo seus serviços como guerreiros e guardiões em troca de riquezas e alianças.

 Estilo de Vida
  Os indivíduos maiores e mais fortes muitas vezes ocupam posições de liderança, mas a sabedoria e a experiência também são altamente valorizadas pelos ursos. As marcas na pelagem e cicatrizes de batalhas são exibidas com orgulho, servindo como símbolos de status e respeito dentro da comunidade. Magia quase não existe nessa sociedade, exceto pelo descendentes do clã original, o qual participou d'O Grande Convite.   Mercenários habilidosos, os Ursari são conhecidos por sua força bruta e habilidades de combate. Eles são frequentemente contratados para proteger caravanas, fortificar cidades e lutar em guerras. Seu tamanho intimidador e destreza em batalha fazem deles soldados formidáveis. Os Ursari seguem um código de honra, sendo leais aos seus empregadores enquanto os contratos são mantidos e cumpridos. Eles valorizam a reputação, e manter a palavra é essencial para sua integridade e para assegurar futuros trabalhos. Lembrando que deve-se tomar cuidado ao fazer contratos com os ursos, pois todas as palavras são levadas ao pé da letra por eles.   Os Ursari também são mercadores astutos. Utilizando sua força física e habilidade de viajar longas distâncias, eles transportam mercadorias através de territórios vastos e perigosos. Sua pelagem espessa permite que sobrevivam em climas extremos, facilitando o comércio em regiões inacessíveis para outras raças. Os Ursari negociam em produtos variados, desde peles e metais preciosos até ervas raras e artefatos mágicos. Eles são conhecidos por sua honestidade nas transações e por protegerem suas caravanas ferozmente contra qualquer ameaça.   Além disso, apresentam a capacidade elevada para a forja, trabalhando apenas com um tipo de metal que se apresenta em suas montanhas do Norte, o grizzite. Com ele, os ursos confeccionam armaduras excepcionais, capazes de parar disparos das armas mais tecnológicas de Petrichor e até magias mais fracas.   Os Ursari construíram uma rede de comércio extensa, estabelecendo postos avançados em locais estratégicos ao redor do mundo. Esses postos não servem apenas como centros de comércio, mas também como pontos de refúgio e defesa para seus aliados. A combinação de suas habilidades como guerreiros e mercadores fez dos Ursari uma raça influente e respeitada, com uma presença significativa em várias regiões. A cidade dos ursos é muito mercantilizada e cheia de festivais combativos, sendo sede de um dos eventos mais conhecidos em Petrichor para apostadores e também aos que desejam se provar grandes guerreiros, as Provações do Urso, que ocorrem em pleno inverno e duram um mês inteiro.]==],
    },
    {
        chave = "Goblins",
        nome = "Goblins",
        categoria = "NaoJogavel",
        origem = "Mungus",
        tipo = "Terrestre",
        alinhamento = "Caótico",
        jogavel = true,
        sangueAntigas = true,
        mesticoPermitido = true,
        deslocamentoNum = 10,
        dadoVidaNum = 8,
        deslocamentoTexto = [==[10m]==],
        dadoVidaTexto = [==[1d8]==],
        deslocamentoModos = { terrestre = 10 },
        caracteristicas = {
            {
                nome = "Maestria furtiva",
                descricao = [==[Receba +1 para rolar testes das perícias "Prestidigitação" e "Furtividade"; A partir do nível 11 este bônus é de +2]==],
            },
            {
                nome = "Visão no Escuro",
                descricao = [==[Acostumados à escuridão das montanhas e cavernas, os Goblins conseguem enxergar no escuro em tons de cinza, até 18 metros à frente]==],
            },
            {
                nome = "Maestria de venenos",
                descricao = [==[Receba +2 para rolar testes envolvendo fabricação de venenos; A partir do nível 11 este bônus é de +4]==],
            },
        },
        tracos = [==[[Maestria furtiva] receba +1 para rolar testes das perícias "Prestidigitação" e "Furtividade"; A partir do nível 11 este bônus é de +2.
[Visão no Escuro] Acostumados à escuridão das montanhas e cavernas, os Goblins conseguem enxergar no escuro em tons de cinza, até 18 metros à frente.
[Maestria de venenos] receba +2 para rolar testes envolvendo fabricação de venenos; A partir do nível 11 este bônus é de +4.]==],
        lore = [==[Fisiologia
  Os Goblins são criaturas pequenas e ágeis, medindo entre 90 e 120 centímetros de altura, com corpos esguios e musculatura ligeira que lhes permite movimentos rápidos e furtivos. Suas peles variam em tons de verde e marrom, conferindo-lhes camuflagem natural em florestas e cavernas. Os olhos grandes e brilhantes, adaptados para visão noturna, lhes conferem uma excelente capacidade de enxergar em ambientes com pouca luz. Suas orelhas são pontudas e sensíveis, captando sons sutis ao seu redor. Os Goblins possuem dentes afiados e garras curtas e fortes, adequadas para escalada e combate corpo a corpo. Apesar de sua aparência frágil, são resistentes e têm uma habilidade inata para se esconder e escapar de perigos, fazendo deles mestres na arte da furtividade e da trapaça.

 História
  Desde tempos imemoriais, os goblins sempre foram associados às profundezas da terra, onde encontraram seu refúgio nas cavernas e túneis subterrâneos. Criados por Mungus, o deus dos ladrões, os goblins herdaram dele sua astúcia e furtividade, características essenciais para sua sobrevivência em um mundo hostil e repleto de perigos.   Os goblins eram mestres na arte da camuflagem e da sobrevivência, aproveitando a escuridão das cavernas para se esconder e emboscar suas presas. No entanto, sua fraqueza física e sua natureza diminuta os colocaram em desvantagem em relação a outras raças subterrâneas. Em busca de proteção e oportunidades, os goblins acabaram se estabelecendo em comunidades próximas aos drows, os temidos elfos das profundezas.   Embora não fossem parte da hierarquia drow, os goblins conseguiram garantir um lugar nas vastas redes de cavernas sob a proteção implícita dos elfos negros. Essa convivência, entretanto, não era igualitária. Os drows viam os goblins como inferiores, úteis apenas como mão de obra barata, batedores e, ocasionalmente, como acumuladores de riqueza. Os goblins, por sua vez, toleravam essa subordinação, conscientes de que a presença dos drows lhes proporcionava uma certa segurança contra ameaças externas.

 Estilo de Vida
  Durante o dia, os goblins permanecem nas profundezas, trabalhando na expansão de suas tocas e na proteção de seus tesouros. À noite, eles emergem para realizar incursões em pequenas vilas e caravanas na superfície, usando sua habilidade em furtividade para saquear sem serem detectados. Esses ataques noturnos são meticulosamente planejados e executados com precisão, permitindo-lhes acumular riquezas que são cuidadosamente escondidas em suas cavernas.   Culturalmente, os goblins celebram suas façanhas com festivais secretos, onde exibem suas pilhagens e homenageiam Mungus. Eles praticam rituais e cerimônias que destacam sua habilidade em enganar e acumular riquezas, reforçando a importância da astúcia e da esperteza em sua sociedade. Existem diversos locais ocultos nas profundezas, sagrados para essa raça, espalhados por toda Petrichor, onde os goblins acumulam suas riquezas depois de compartilha-las com os drows, ofertando tudo a Mungus. Tais locais exigem a resolução de enigmas para serem acessados e acredita-se que retirar as riquezas dali traz a ira do deus da ladinagem.   Embora vivam nas sombras, os goblins são mestres em transformar sua desvantagem em vantagem, prosperando em um ambiente onde outros falhariam. Seu estilo de vida é uma dança constante entre sobrevivência e ambição, movida pela devoção a seu deus e pela busca incessante por riqueza e poder.]==],
    },
    {
        chave = "Banshees",
        nome = "Banshees",
        categoria = "Primordial",
        origem = "Tenebria",
        tipo = "Espiritual",
        alinhamento = "Leal Neutro",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia
  Entidades etéreas, são manifestações da essência da morte. Seres extremamente belos, com aparência predominantemente feminina ou andrógina. Sua aparência tende a se assimilar com a forma viva que possuía antes de tornar-se Banshee, com uma presença imponente que inspira temor e respeito.   São altas, seu corpo é composto por uma substância etérea, uma mistura de névoa escura e energia necrótica. É o que lhes permite alterar sua densidade à vontade, de uma forma sólida a ser completamente incorpórea. Tende a aparecer com seus membros distorcidos ou quebrados, cujas partes exteriores parecem flutuar, contorcendo-se de formas que o corpo humano naturalmente é incapaz de fazer. Braços e mãos alongados e finos, dedos longos com unhas afiadas e escuras. A parte inferior de seus corpos geralmente se dissipa em névoa, mas podem se manifestar de acordo com seu desejo.    São seres belos e assustadores, donas de uma pele pálida ou azulada, quase transparente; olhos completamente negros ou completamente brancos, cabelos longos pretos profundo ou brancos leitosos e se movimentam por si próprios, como se sempre estivessem submersos, independente do local onde estejam. Seus movimentos vão de fluídos e calmos a erráticos e distorcidos, emanam uma aura fria e tênue que traz a quem lhe observa a sensação de que a luz é absorvida por sua presença. Sua intensidade varia de acordo com o estado emocional em que este ser se encontra.   O aparelho vocal das Banshees é único, permitindo-lhes produzir seu famoso lamento. Este som não é produzido por cordas vocais físicas, mas por uma vibração de sua própria essência etérea, capaz de ressoar entre os planos material e espiritual.

 História
  Elas nasceram quando o primeiro ser perdeu sua vida injustamente, surgiram na Era Ancestral a partir dos poderes de Tenebria, moldadas a partir da escuridão primordial e do próprio tecido que separa a existência da não-existência. Escolhidas como suas mensageiras, são capazes de navegar entre o reino dos vivos e dos mortos, anunciando a chegada inevitável do fim da vida.    Vistas com reverência e respeito, sua presença, embora temida, é aceita como parte natural do ciclo da vida. Antes, eram capazes de coexistir com a vida, seguindo entre os mortais como um reflexo da morte e seres reverenciados por guiar suas almas e oferecer conforto aqueles que estão próximos da morte. Entretanto, com o passar do tempo e o crescimento das civilizações, o aumento da morte e o desejo de se viver eternamente, o receio da presença destas se intensificou e as Banshees passaram a ser vistas com pavor e superstição   Leais à Tenebra após a Grane Ruptura, são uma força oposta direta ao Pai, especialmente contra o império de Zion. São vistas como um símbolo de resistência à dominação de Zion, surgem com frequência para anunciar a morte de figuras importantes do império. São vistas vagando pelos campos de batalhas durante as grandes guerras entre os reinos, com seus lamentos tornando-se uma melodia macabra antes de confrontos decisivos. Alguns até mesmo dizem que a mera presença destas em um campo de batalha, pode evitar derramamento de sangue desnecessário: os líderes simplesmente temem que a melodia mortal seja a respeito de sua própria morte e muitas vezes, recuam para viverem mais um dia.   Com o avanço da magia e da tecnologia, houveram tentativas de compreender e controlar estes seres: necromantes buscaram seu conhecimento sobre a morte, enquanto alguns governantes tentaram usá-las como armas ou ferramentas de intimidação. Porém, Banshees permaneceram indomáveis, fiéis apenas a Tenebria e seu propósito original.   Cada povo, com o passar do tempo, desenvolveu suas próprias tradições e crenças acerca destes seres. Algumas regiões as veem como protetoras da Morte, guando as almas com compaixão. Em outras, são temidas e vistas como anunciadoras da desgraça: as histórias refletem a própria relação complexa dos habitantes deste mundo com a morte e o desconhecido.   Hoje, suas aparições não são tão frequentes, o que cria ainda certo mistério sobre a presença destas nos momentos finais de um ser. Porém, os mitos de sua existência permanecem, uma vez que seguem cumprindo fielmente o seu dever.

 Estilo de Vida
  Sua existência é solitária e nômade, raramente formam laços com outras entidades, sejam mortais ou imortais, uma vez que seu propósito primordial e anunciar a morte molda seu cotidiano e como interage com o mundo. Seres vagantes, são atraídas para locais impregnados de morte e melancolia: cemitérios antigos, campos de batalha há muito abandonados, ruínas de civilizações esquecidas e florestas profundas onde a luz mal penetra.   Não necessitam de alimento físico ou descanso: se sustentam da energia residual liberada no momento da morte, absorvendo-a como forma de nutrição espiritual. Esta peculiaridade as torna particularmente ativas em tempos de guerra, peste ou calamidade naturais, quando a morte é mais preesnte.   São observadoras silenciosas do mundo ao seu redor, sempre alertas com seus sentidos sintonizados com as sutis mudanças no equilíbrio entre a vida ou morte. Quando sentem que alguém significativo ou injustiçado está prestes a perder a vida, se deslocam para as proximidades, preparando-se para emitir seu lamento característico.   Sua interação com os vivos é rara e geralmente indireta, tendo preferência a manterem-se invisíveis ou ocultas, revelando-se apenas para cumprir seu dever de arautos da morte. Porém, há relatos de que ocasionalmente se comunicam com mortais sensíveis ao sobrenatural. Houve a criação do Conclave da Névoa Eterna, uma vez que tais mortais, necromantes ou não, ousaram aproximar-se delas. Tal Conclave estabeleceu regras rígidas sobre como e quando suas habilidades podem ser utilizadas. Criou-se uma regra que proíbe o envolvimento emocional com os mortais cujas mortes são capazes de prever e desenvolveu-se, nos tempos primordiais, uma linguagem musical única, como canções que carregam informações codificadas sobre o futuro.   Algumas delas toleram alguns necromantes, em especial aqueles que demonstram respeito genuíno pelos mistérios da morte, mas são implacáveis com aqueles que buscam perverter o ciclo natural da vida e da morte.]==],
    },
    {
        chave = "Criofenix",
        nome = "Criofênix",
        categoria = "Primordial",
        origem = "Oskarion",
        tipo = "Aéreo",
        alinhamento = "Neutro bom",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia
  Enormes e imponentes, as criofênix podem ser vistas de longe, suas plumagens brilhando com um frio azul-gelo que reflete a luz do sol, criando uma visão tanto bela quanto temível. Elas possuem uma envergadura de asas que pode se estender por várias dezenas de metros, e suas penas são tão duras e afiadas quanto o mais puro cristal de gelo. Seus olhos, brilhando como estrelas gélidas, emanam uma aura de sabedoria antiga e implacável neutralidade. Quando uma é assassinada, um processo de renascimento é iniciado a partir de seu coração de gelo, um núcleo cristalino que permanece após sua morte. Este núcleo dá origem a uma nova criatura.

 História
  Criadas pela deusa primordial do Gelo, Oskarion, essas majestosas aves são responsáveis por manter o equilíbrio climático do mundo, assegurando que o ciclo de inverno e verão seja respeitado em todas as terras. Cada criofênix é uma criação única e singular de Oskarion, e a deusa, em sua infinita sabedoria, determinou uma quantidade fixa dessas criaturas para povoar o mundo. São seres solitários, espalhadas pelos cumes das montanhas mais altas e inóspitas, onde muitas vezes são confundidas com o próprio pico das montanhas enquanto repousam.
  Houveram episódios em que algumas foram mortas, estes períodos foram marcados por verões inacreditavelmente quentes e derretimento de geleiras e picos gelados, causando catástrofes naturais memoráveis, no entanto pouco tempo depois uma nova criatura renascia a partir da última, e o mundo retornava a sua estabilidade climática.

 Estilo de Vida
  São seres de pura neutralidade. Vivem para cumprir a tarefa que lhes foi confiada por Oskarion, sem se envolverem nos assuntos mundanos ou nas disputas entre mortais e deuses. Sua missão é simples, mas crucial: garantir que o ciclo das estações seja respeitado, trazendo inverno e verão de maneira harmoniosa e equilibrada. Sua aparição é um evento raro e considerado praticamente um milagre, sinalizado por fortes nevascas que prenunciam sua passagem. Não há uma rainha ou líder entre as criofênix. Todas são iguais e dedicadas exclusivamente à sua missão. A única figura de autoridade que reconhecem é a deusa Oskarion, que veneram e seguem fielmente. O respeito e a devoção à deusa são absolutos, e sua lealdade a ela é inquestionável.   A morte de uma causa um grande desequilíbrio climático, levando a catástrofes ambientais que podem afetar vastas regiões, demonstrando a importância vital dessas criaturas para o mundo. Também é incomum que mais de uma criatura desta seja vista em um mesmo local, já que isso pode significar grande sofrimento tanto para a fauna quanto para a flora aos arredores.]==],
    },
    {
        chave = "Dragoes",
        nome = "Dragões",
        categoria = "Primordial",
        origem = "Asta",
        tipo = "Aéreo",
        alinhamento = "Leal Bom",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Cavaleiros e Dragões - Hugo Pitardil
  É impossível falar sobre dragões sem citar a tradição da cavalaria, afinal ambos estão intrinsicamente ligados e enraizados na nossa tradição de forma incontestável, o relato mais antigo sobre esta prática vem de um livro que pertence a biblioteca de Erundil, o rei branco e sobre o qual tive acesso ainda em minha juventude, neste podemos encontrar a lendária história de Ewain e o Rei Dragão Aurion, relatando como Ewain ainda em tenra idade perdeu-se na floresta e teve que lutar para sobreviver em meio a ameaça de feras selvagens até acidentalmente encontrar o local onde Aurion metamorfoseado em homem praticava a arte da esgrima, sendo este o próprio criador do que hoje chamamos de Aura pergunto-me o quão maravilhado este poderia estar com tamanha visão, não atoa as palavras citadas são as de um olhar mistificado não pela força, mas pela graça de seus movimentos. Ewain foi acolhido como discípulo do Rei Dragão que por alguma razão que é difícil precisar, viu graça, potencial ou alegria naquela criança que buscava imitar seus movimentos, aqui peço que me perdoem, mas traduzir o idioma antigo é uma tarefa deverás complicada, todavia é onde podemos observar algumas afirmações interessantes a respeito dos dragões, sendo estas: - Aurion e seus irmãos foram feitos de dois em dois, sendo um total de doze pares, sua "gêmea" chamava-se Anima e estes foram os últimos a nascer. - Estes nasceram e cresceram como qualquer outra criatura. - Dragões jamais quebram um juramento.   Os detalhes a respeito do treinamento que Ewain recebeu não estão claros no livro, mas o que podemos deduzir é que este chegou próximo da morte mais vezes do que seria humanamente saudável, o rei dragão chegou então a conclusão de que outras medidas deveriam ser tomadas para que aquele ser fosse minimamente capaz de receber suas orientações, sendo a primeira dessas a adição de um conjunto completo de armadura e escudo para auxiliar na defesa, vários materiais foram testados e consequentemente destruídos um após o outro devida a fragilidade demonstrada perante os golpes desferidos. Esta época é narrada como um período tranquilo e de muito divertimento por parte de Aurion e Botas, mas quem seria este segundo? Bem, ao que parece Ewain não conseguiu acompanhar o ritmo de viagem e viu-se obrigado a aprender a utilizar um cavalo de montaria, batizado singelamente como botas.   Ewain viveu mais do que qualquer outro homem, mas em todas as histórias protagonizadas pelo mesmo ou em citações que lhes são feitas, jamais fora narrado como um idoso, o que nos leva a crer que de alguma forma conseguiu alcançar a tão sonhada bênção da juventude, governando o que hoje estimamos ser o primeiro reino, chamado Aranthia, onde para além de muitas coisas, fora criado o primeiro código da cavalaria e o juramento dos cavaleiros, baseado no juramento que os dragões fizeram ao deus Asta, sendo este a base para o que nós conhecemos nos dias de hoje.
O juramento de ordenação dos cavaleiros de Asta: "Eu juro, por minha honra e pela força dos Dragões Primordiais, seguir os princípios deste Código. Acredito em tudo o que os Dragões ensinam e observo todas as suas instruções, dedicando minha vida à sua sabedoria e justiça. Prometo defender a Ordem dos Cavaleiros de Asta, protegendo sua integridade e lutando por sua causa com fervor e dedicação. Respeitarei todos os fracos e serei seu defensor, garantindo sua segurança e bem-estar. Amarei o continente de Atheron, minha terra natal, honrando suas tradições e lutando por sua prosperidade e paz. Não recuarei diante de meus inimigos, enfrentando-os com coragem e determinação, inspirado pela bravura dos meus senhores. Farei guerra contra a injustiça e a opressão sem cessar e sem misericórdia, garantindo que a justiça prevaleça em todas as terras. Cumprirei escrupulosamente meus deveres, desde que não sejam contrários às leis e aos preceitos do deus Asta. Nunca mentirei e permanecerei fiel à minha palavra prometida, mantendo a integridade e a confiança em todas as minhas ações. Serei generoso e darei generosidade a todos, compartilhando minhas bênçãos e ajudando os necessitados sempre que possível. Com este juramento sagrado, entrego minha vida e meu espírito ao serviço dos Dragões Primordiais e do deus Asta. Que minha espada seja sempre justa, meu coração sempre corajoso, e minha alma eternamente fiel."

 Dragões, os Deuses Alados - Olivia Polidoro
  Para nós humanos, estes seres chamados dragões tomam o imaginário da massa, dividindo espaço com os deuses como se não fossem semelhantes aos grandes senhores primordiais, mas deuses por si próprios, de fato pode-se viver toda uma vida sem jamais ter um vislumbre destes seres, devida a raridade de suas aparições, todavia quando um dragão se movimenta é impossível aos que estiverem próximos não testemunhar tamanho evento. Um dragão é capaz de influenciar toda a região em sua volta apenas por estar presente nela, causando alterações na flora, fauna e por que não dizer na própria geografia? Não é possível precisar qual o tamanho da área de influência do domínio dracônico, todavia estimasse que esteja diretamente ligado ao quão poderoso este é, casos em que dois dragões habitam no mesmo domínio já foram relatados, porém sem nenhuma comprovação visual, tais hipóteses foram prontamente descartadas como sendo obra de mentes fantasiosas. Wyverns e Sapos-Nutrifogos são dois bons exemplos de espécimes que vieram a surgir por influência direta de dragões na fauna local, sendo criaturas que carregam peculiaridades dracônicas em maior e menor escala, o primeiro destes sendo por muitas vezes confundido com seu progenitor.   Existem diversos cultos dedicados a dragões, especialmente no continente de Sindhoria onde conta-se que os dragões primordiais da água e do fogo foram responsáveis por dividir o continente em dois, todavia também é sabido que os mesmos seguem a fé do deus Asta, prática esta que não é compartilhada por seus adoradores, tornando tais cultos bastante difíceis de se entender. Enquanto isso a hierarquia destes seres mostra-se bastante simples: Os dragões primordiais são tratados como reis por todos os seus descendentes e respeitados por aqueles que não o são, enquanto que as criaturas que compartilham de suas características são inferiorizadas e indignas de comentários ou atenção, incapazes de agir contra os seus lordes e senhores.   Não há um único registro na história sobre a queda de um dragão, levando-nos a crer que esta raça seja imortal ou que sua força seja tamanha que não encontre adversidades capazes de lhes fazer frente, fazendo com que histórias como a da lendária rainha Astrid e do reino perdido de Aranthia se perpetuem no imaginário das pessoas até os dias de hoje, diversos reinos adotam a figura destes seres em suas bandeiras da mesma forma que casas nobres as integram em seus brasões, buscando estabelecer conexões com heróis do passado.]==],
    },
    {
        chave = "Fenix",
        nome = "Fênix",
        categoria = "Primordial",
        origem = "Bran",
        tipo = "Aéreo",
        alinhamento = "Leal Neutro",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia
  As fênix são criaturas majestosas e resplandecentes, elas possuem plumagem que variam entre os tons de vermelho, laranja e dourado, que brilham intensamente como brasas incandescentes, sempre em chamas. São criaturas gigantescas, com suas asas são amplas e poderosas, possuindo envergaduras de mais de 100 metros, mesmo assim são capazes de voar com extremo silêncio, graça e rapidez pelos céus. Os olhos das fênix são de um amarelo brilhante, irradiando sabedoria e uma profunda compreensão da vida e da morte.   A característica mais marcante dessas criaturas é a capacidade de entrar em combustão no fim de um ciclo de vida. Quando uma fênix sente que sua vida está chegando ao fim, ela se incendeia em um espetáculo de luz e calor, reduzindo-se a cinzas. Destas cinzas, a mesma fênix renasce, rejuvenescida e pronta para iniciar um novo ciclo de vida.

 História
  As fênix são uma das raças mais antigas do mundo, criadas pelo deus Bran, o senhor do fogo, após Oskarion criar as Criofênix, pois essas haviam trazido uma Era do Gelo para o todo o planeta e quase extinguido a vida como era conhecida, assim as fênix trouxeram estabilidade e as estações do ano se formaram e os deuses que as representam designados. Diz-se que Bran moldou as primeiras fênix a partir das chamas de seu próprio coração, infundindo nelas a essência do fogo e a capacidade de renascer. Ao longo da história, as fênix desempenharam papéis cruciais em diversas culturas e mitologias, sendo frequentemente invocadas em rituais de purificação e renascimento, e muitas vezes eram vistas como mensageiras divinas, trazendo boas novas ou presságios de mudanças importantes. Hoje em dia, até mesmo os elfos se considerariam sortudos ao avistarem uma fênix em sua vida.

 Estilo de Vida
  As fênix são criaturas ordeiras e solitárias por natureza, preferindo viver em reclusão nas regiões mais remotas e inacessíveis do mundo, diz-se que preferem viver dentro de vulcões, mas nunca houve prova disso. Vivem em eterna migração sincronizada com as Criofênix, mantendo as estações do ano em equilíbrio, sendo assim é impossível as duas raças estarem no mesmo território ao mesmo tempo. Nunca será vista uma fênix durante o inverno e vice-versa.]==],
    },
    {
        chave = "Gigantes",
        nome = "Gigantes",
        categoria = "Primordial",
        origem = "Erinor",
        tipo = "Terrestre",
        alinhamento = "Neutro",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia
  Os gigantes não param de crescer ao longo de suas vidas. Na juventude, seu tamanho varia de 3 a 20 metros, mas à medida que envelhecem, esse crescimento se torna mais lento, resultando em anciões que podem ultrapassar os 100 metros de altura. O ser mais antigo de que se tem registro viveu impressionantes 1200 anos, destacando a longevidade extraordinária dessa raça. O desenvolvimento de seu porte é lento, com fases distintas de crescimento e aprendizado. Considerados crianças até os 50 anos, eles levam 100 anos para desenvolver plenamente seu intelecto e 200 anos para alcançar a maturidade física e mágica. Aos 500 anos são considerados anciões, possuindo um intelecto e uma força transcendentais.

 História
  Os gigantes são uma das nove raças chamadas de primordiais. Descendentes diretos da primeira filha do primordial Erinor conhecida como Gunndana. Desde a concepção do mundo conhecido, esses seres de forma humanoide têm desempenhado um papel significativo na história e na mitologia do continente devido a sua proximidade com a linhagem dos deuses. Se espalharam em tribos pelo mundo, vivendo entre as planícies, os planaltos, as montanhas, cavernas, vulcões, colinas e vales que deram forma ao mundo conhecido, veneravam Erinor e tratavam sua mãe como a rainha-deusa que os guiavam.   Quando o deus primordial da terra sacrificou sua própria filha, os gigantes ficaram chocados e indignados. Imediatamente renunciaram sua veneração ao próprio avô e a qualquer outra divindade que não fosse aos próprios Pai e Mãe. A criação de seus irmãos elementais apenas os ofendeu, que os viram como criaturas impuras e originadas do maior crime já cometido na existência da espécie. Desde então este povo se divide entre duas linhagens: os chamados primordiais e os chamados elementais; os primordiais foram se tornando cada vez mais raros de serem vistos, enquanto a maioria dos elementais uniram-se ao Pai durante a Grande Cisão e se juntaram ao Império, mesmo àqueles elementais ligados a divindades que permaneceram do lado da mãe.

 Estilo de Vida
  Os gigantes têm uma cultura tribal que pode ser tanto nômade quanto sedentária, dependendo da tribo. Suas tradições são profundamente enraizadas na reverência aos elementos naturais e na manutenção de um equilíbrio harmonioso com o ambiente. São conhecidos por seus períodos de hibernação, que se tornam mais prolongados com a idade e podem durar décadas para os anciões, este sono ritualístico é visto como uma forma de renovação e comunhão com a terra. O alinhamento destas criaturas pode variar amplamente, mas, em geral, eles tendem a uma postura neutra, agindo de acordo com seus próprios códigos de honra e tradições. Os gigantes primordiais, em particular, mantêm um distanciamento respeitoso das outras raças, preferindo a reclusão e a preservação de suas antigas práticas e conhecimentos. Já elementais, embora não respeitados pelos primordiais, encontraram um lar no território de Zion, onde seguem o culto ao Pai e respeitam a figura do Imperador. Eles desempenharam um papel crucial nas guerras e na construção do muro protetor do Império de Zion. Sua lealdade ao Império é inquestionável, e sua presença é um testemunho do poder e da influência de Zion. Por outro lado, os primordiais são considerados virtualmente extintos, não sendo vistos há séculos.]==],
    },
    {
        chave = "Krakens",
        nome = "Krakens",
        categoria = "Primordial",
        origem = "Isydras",
        tipo = "Aquático",
        alinhamento = "Caótico Mal",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia

  Os krakens são gigantescas criaturas marinhas, conhecidas por sua presença aterradora, aparência monstruosa e violência sem igual. Medindo até 80 metros de comprimento, esses monstros colossais possuem corpos massivos e musculosos, adaptados para uma vida nas profundezas do oceano.   Seu corpo é revestido por uma pele grossa e escura que varia do verde musgo ao preto profundo, essa pele é extremamente resistente, capaz de suportar a pressão esmagadora das profundezas oceânicas e os ataques de predadores e intrusos. São dotados de 8 tentáculos, cada um com dezenas de metros, que juntos são capazes de quebrar uma embarcação em duas como um palito de dente, esses apêndices também contam com ventosas aderentes. Possuem 4 olhos e a boca de um kraken se localiza na parte inferior de seu corpo, com milhares de ferrões capazes de triturar até mesmo rocha.   Um kraken pode viver entre 150 e 300 anos.

 História
  Originalmente, criados por Isydras para serem os guardiões dos oceanos, os Krakens nunca foram uma raça muito presente na história de Petrichor ou peça-chave em suas guerras, sendo apenas impactantes quando se trata de cerco aos continentes, como o que acontece atualmente. Após a união de Isydras ao pai, tais criaturas se tornaram mais perigosas ainda, fazendo parte do Império de Zion. Navegar nos mares com essas criaturas à espreita, sendo seu inimigo, não é a escolha mais inteligente para alguém que possui amor pela própria vida.

 Estilo de Vida
  Não se sabe muito sobre o comportamento dessas criaturas, por falta de estudos, reflexo da grande agressividade da raça. O que se sabe é que são criaturas solitárias e apenas se encontram com outros da mesma espécie para o acasalamento. Como dito, são extremamente agressivos, vivendo nas profundezas do oceano, mas qualquer perturbação grande na superfície é capaz de atrair a atenção desses gigantes marinhos.]==],
    },
    {
        chave = "Unicornios",
        nome = "Unicórnios",
        categoria = "Primordial",
        origem = "Khelion",
        tipo = "Terrestre",
        alinhamento = "Leal Bom",
        jogavel = false,
        sangueAntigas = false,
        mesticoPermitido = false,
        deslocamentoNum = 0,
        dadoVidaNum = 0,
        deslocamentoTexto = [==[]==],
        dadoVidaTexto = [==[]==],
        deslocamentoModos = {  },
        caracteristicas = {
        },
        tracos = [==[]==],
        lore = [==[Fisiologia
  A característica mais marcante e distintiva destes seres em relação à outros cavalos é, sem dúvida, o chifre único que se projeta em suas testas. Este é um poderoso condutor de energia arcana, composto por um material cristalino puro que pulsa com uma luz interior que é capaz de refletir seu estado emocional e em sincronia com as linhas mágicas deste mundo.   Sua pelagem é de um branco imaculado, embora também seja possível encontrar tons suaves e pastéis, com um efeito de brilho perolado que emana de seu interior, raros são os de pelagem negra, há relatos raros que marcam o encontro com tais seres. A pelagem dos Unicórnios possui propriedades arcanas intrínsecas, que oferecem proteção contra maldições e energia necrótica.   Donos de olhos grandes e expressivos, é comum serem encontrados em tons de azul profundo ou violeta, que são capazes de ver além do reino físico: podem perceber auras, fluxos mágicos e dizem que até mesmo vislumbram fragmentos do passado ou do futuro, o que os torna guardiões incomparáveis e guias sábios.   Seus cascos são compostos de um material semelhante à opalas, com cores iridescentes e possuem a função de não deixar marcas no solo quando o Unicórnio assim deseja. São seres silenciosos, capazes de flutuar quando necessário, bem como caminhar na água e não perturbam o ambiente ao redor, uma habilidade crucial para a função que exercem de guardiões da natureza.    Sua crina e sua cauda são longas, sedosas e dotadas de um brilho etéreo. Suas cores podem mudar sutilmente dependendo da luz e do estado emocional, sendo um ingrediente poderoso para rituais e poções quando doados voluntariamente por seu dono. Seu sangue é a característica que mais o diferencia dos outros seres: prateado brilhante e espesso como o metal derretido. Acredita-se que possui propriedades curativas, capaz de purificar venenos e maldições. Alimenta-se de nutrientes e essência mágica de plantas raras e frutas encantadas, que sustentam não apenas seus corpos físicos, mas também sua natureza mágica, mantendo seu poder e longevidade. Devido a isso, sua capacidade de cura é acelerada, especialmente quando ele tem acesso à fontes de magia natural pura. São seres longevos, não envelhecem no sentido convencional da palavra mas, quando sentem que sua tarefa no mundo dos vivos está completa, transformam-se em pura energia mágica e retornam ao ciclo natural.

 História
  Surgindo nos primeiros dias da Era Ancestral, os Unicórnios são considerados a criação mais pura de Khelion, o deus da natureza e da vida. Acredita-se que foram criados a partir da essência das primeiras florestas, dos rios cristalinos e da pureza de seu coração, conferindo-lhes o papel de guardiões e protetores da ordem natural.   Desempenharam um papel crucial na estabilização das energias selvagens que permeiam o mundo, sendo que suas trilhas criaram os primeiros caminhos de poder ao canalizarem e harmonizarem as forças elementais. Em tempos primordiais, eram vistos com maior frequência entre as árvores ancestrais e abençoando as terras por onde passavam.   Durante períodos turbulentos, estes seres mantém a posição de neutralidade, embora sempre estejam alinhados com as forças da vida e da natureza, atuando como guardiões de locais sagrados e refúgios naturais para protegê-los de guerras e conflitos divinos. À medida que as eras passam e a civilização mortal se expandiu, o encontro com estas criaturas se torna cada vez mais raros. Muitos retiraram-se para reinos ocultos, vales secretos e locais que sequer conseguem imaginar. Esta retirada deu origem a inúmeros mitos e lendas, com pequenos círculos mortais venerando os Unicórnios como símbolos de pureza e esperança.   Ao longo do tempo, a relação entre os Unicórnios e outras raças evoluiu. Enquanto algumas culturas os veneravam como divindades menores, outras os caçavam por suas propriedades mágicas. Isto os levou a se tornarem ainda mais cautelosos em suas interações com o mundo exterior, o que fez com que encontrar tais seres seja ainda mais raro. Porém, ainda é possível sentir sua influência em florestas antigas, locais de grande poder natural e descobriu-se que aqueles com coração puro, são capazes de sonhar e entrar em contato com eles.   Acredita-se que sua presença é utilizada como um teste pelos deuses e que somente aqueles de coração puro podem se aproximar e tocá-los. Conta-se a história de uma garota chamada Lyra, que movida a ajudar as pessoas de sua vila e protegê-la, buscou um Unicórnio para ajudá-la. Este chamava-se Eltherion que, ao revelar-se para ela, sentiu-se tocado por sua humildade e lhe concedeu sabedoria e força para liderar seu povo contra as adversidades. Não se sabe até hoje se é uma história verdadeira, mas ela traz a esperança de que um dia, os Unicórnios se farão presentes no mundo para anunciar o doce futuro aguardado. Até lá, eles continuam protegendo o mundo secretamente, deixando suas pegadas apenas para os mais valorosos encontrarem.

 Estilo de Vida
  São seres migratórios, com um modo de vida semi-nômade e sem rotas fixas, guiados por uma compreensão intuitiva das necessidades do ambiente e das correntes mágicas que fluem no mundo. Tal jornada constante lhes permite manter o equilíbio em diversas áreas por atuarem como catalisadores de cura e renovação por onde quer que passem.   Predominantemente solitários em sua natureza, é possível entretanto encontrar pequenos grupos familiares, formados por uma égua, um potro e talvez um ou dois companheiros próximos. Não veem a solidão como um fardo, mas como uma expressão de sua independência e uma conexão direta com o mundo natural. Podem, porém, manter uma conexão empática entre si, o que permite que compartilhem conhecimentos e avisos. Não há uma hierarquia, mas sim os mais antigos e sábios atuam como conselheiros em momentos de necessidade.   Sua conexão com a vida e seu mundo é profunda e multifacetada, sendo capazes de interagir com as correntes de vida que permeiam o mundo e usam tal habilidade para purificar águra e solo contaminados, curar doenças e ferimentos com um simples toque de seu chifres e, em alguns casos, até mesmo ressuscitam plantas e pequenos animais. Consideram tal atividade como sua responsabilidade existencial.   Eles se reproduzem apenas em momentos de grande necessidade, quando precisa-se de novos guardiões para proteger territórios e seres. O processo começa com o Chamado das Estrelas, um evento raro em que constelações específicas brilham incessantemente. Ou seja, o nascimento de um potro unicórnio é considerado um presságio de grande importância.   Devido à história de caça e traições que ocorreram no decorrer da existência, Unicórnios não interagem com mortais. Porém, pode acontecer de encontrarem aqueles que acreditam ser dignos de sua presença, como os seres de coração puro. Podem formam alianças com outras criaturas em momentos de necessidade para manter o equilíbrio da natureza.   O tempo de vida de um Unicórnio é um equilíbrio entre contemplação e ação. Longas horas podem ser passadas em meditação profunda, sintonizando-se com as energias da terra e do cosmos. Estes períodos de introspecção são intercalados com momentos de atividade intensa, seja para curar uma floresta doente, guiar um viajante perdido ou enfrentar uma ameaça ao equilíbrio natural.   São guardiões do conhecimento natural e mágico acumulado ao longo de eras, carregando consigo a sabedoria das antigas florestas e dos segredos da própria terra. Os unicórnios negros são ainda um mistério. Embora não sejam malignos, representam o lado mais introspectivo da divindade criadora. Vivem em isolamento extremo, atuando como mediadores entre o equilíbrio e o caos.]==],
    },
}

-- O livro apresenta as duas raças sob um cabeçalho de lore compartilhado,
-- mas separa expressamente suas características. Mantemos uma única cópia do
-- texto narrativo e dois blocos mecânicos independentes.
do
    local loreAquatico = nil
    local tritoes = nil
    for _, item in ipairs(CatalogoRacas.itens) do
        if item.nome == "Sereias" then loreAquatico = item.lore end
        if item.nome == "Tritões" then tritoes = item end
    end
    if tritoes ~= nil and loreAquatico ~= nil then tritoes.lore = loreAquatico end
end

function CatalogoRacas.buscarPorNome(nome)
    for _, item in ipairs(CatalogoRacas.itens) do
        if item.nome == nome then return item end
    end
    return nil
end

function CatalogoRacas.listarPorCategoria(categoria)
    local lista = {}
    for _, item in ipairs(CatalogoRacas.itens) do
        if item.categoria == categoria then table.insert(lista, item) end
    end
    return lista
end

-- Decide se a raca pode ser escolhida agora, dado o contexto da ficha.
-- ctx = {temMestico=bool, temSangueAntigas=bool, temLinhagemNoite=bool,
--        autorizacaoMestre=bool}
--
-- LIBERACAO POR QUALIDADE - inventario fechado, de uma varredura do capitulo
-- de Qualidades atras de toda frase que concede raca:
--
--   "Mestico"                    -> jogaveis e nao-jogaveis, "mas jamais de
--       racas primordiais; Esta qualidade nao pode ser adquirida para as
--       racas 'Vampiro' ou 'Lobisomem'"
--   "Sangue das racas antigas"   -> LISTA FECHADA de 11: "Aarakocra, Harpia,
--       Giff, Sereia, Centauro, Ghiscari, Ninfa, Minotauro, Satiro, Ursari
--       ou Goblin"
--   "Linhagem da noite" [06 pts] -> "Receba a raca 'Lobisomem (Nascido)'"
--   "Linhagem de Gunndana"       -> "receba a raca 'Meio-Gigante'" - raca que
--       NAO EXISTE no capitulo de Racas nem neste catalogo. Pendente com o
--       mestre; nao inventei bloco de atributos para ela.
--
-- Ate a v0.35.6 a ficha so conhecia as duas primeiras, e por isso recusava
-- Lobisomens para todo mundo: a raca nao esta na lista do "Sangue das racas
-- antigas" (certo) e o "Mestico" e vetado para ela (certo tambem) - so que a
-- qualidade que DE FATO libera nunca tinha sido ligada. A checagem 26 do
-- verifica.py agora recusa o build se aparecer uma qualidade nova que concede
-- raca e ninguem tiver ligado.
--
-- Devolve: permitido(bool), motivo(string)
function CatalogoRacas.podeEscolher(raca, ctx)
    ctx = ctx or {}
    if raca == nil then return false, "Raça desconhecida." end

    if raca.categoria == "Jogavel" then
        return true, ""
    end

    if raca.categoria == "Primordial" then
        if ctx.autorizacaoMestre then
            return true, "Liberada por autorização do mestre."
        end
        return false, "Raças primordiais não estão disponíveis para jogadores. Só podem ser usadas com autorização expressa do mestre (marque a opção de autorização na aba Raça & Classe)."
    end

    -- NaoJogavel: precisa de Mestico ou Sangue das racas antigas
    if ctx.autorizacaoMestre then
        return true, "Liberada por autorização do mestre."
    end
    local viaMestico = ctx.temMestico and raca.mesticoPermitido
    local viaSangue = ctx.temSangueAntigas and raca.sangueAntigas
    local viaNoite = ctx.temLinhagemNoite and raca.linhagemNoite
    if viaMestico or viaSangue or viaNoite then
        local por = "Mestiço"
        if viaSangue then por = "Sangue das raças antigas" end
        if viaNoite then por = "Linhagem da noite" end
        return true, "Liberada pela qualidade \"" .. por .. "\"."
    end

    -- A recusa NOMEIA a qualidade que serve para ESTA raca. Mandar o jogador
    -- comprar "Sangue das racas antigas" quando ela nao libera a raca que ele
    -- quer e pior do que nao dizer nada: custa 3 pontos e nao resolve.
    local servem = {}
    if raca.mesticoPermitido then table.insert(servem, "\"Mestiço\"") end
    if raca.sangueAntigas then table.insert(servem, "\"Sangue das raças antigas\"") end
    if raca.linhagemNoite then table.insert(servem, "\"Linhagem da noite\"") end

    if #servem == 0 then
        return false, "Esta raça não é jogável por padrão, e NENHUMA qualidade do livro a libera — só autorização do mestre (marque na aba Raça & Classe)."
    end

    local lista = servem[1]
    for i = 2, #servem do
        lista = lista .. ((i == #servem) and " ou " or ", ") .. servem[i]
    end

    local motivo = "Esta raça não é jogável por padrão. Para esta raça, a qualidade que serve é " ..
        lista .. " — pegue na aba Qualidades & Defeitos, ou peça autorização do mestre."
    if not raca.mesticoPermitido then
        motivo = motivo .. " Atenção: \"Mestiço\" NÃO vale aqui (vetada no texto da própria qualidade)."
    end

    -- MOSTRA O QUE A FICHA ESTA VENDO. Sem esta linha, "peguei a qualidade e
    -- continua bloqueado" vira discussao sem prova: ninguem sabe se a ficha
    -- nao leu a lista, se o nome nao bateu, ou se a versao instalada e outra.
    -- Com ela, a propria tela responde - e a lei de "mostre a conta" vale
    -- para decisao de permissao tanto quanto para numero.
    local vistas = {}
    if ctx.temMestico then table.insert(vistas, "Mestiço") end
    if ctx.temSangueAntigas then table.insert(vistas, "Sangue das raças antigas") end
    if ctx.temLinhagemNoite then table.insert(vistas, "Linhagem da noite") end
    if #vistas == 0 then
        motivo = motivo .. "   [A ficha não encontrou nenhuma qualidade de liberação na sua lista.]"
    else
        motivo = motivo .. "   [A ficha vê na sua lista: " .. table.concat(vistas, ", ") .. ".]"
    end
    return false, motivo
end

-- Quantas caracteristicas o jogador pode ESCOLHER (o resto e sorteado),
-- conforme o tier de Mestico: 0 pts = nenhuma (rola tudo), 1 pt = metade,
-- 2 pts = todas. Sem Mestico, o personagem e puro e recebe todas normalmente.
function CatalogoRacas.escolhasPorTierMestico(tier, totalCaracteristicas)
    tier = tonumber(tier) or 0
    if tier >= 2 then return totalCaracteristicas end
    if tier == 1 then return math.floor(totalCaracteristicas / 2) end
    return 0
end

return CatalogoRacas
