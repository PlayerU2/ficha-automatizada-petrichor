# Crônicas de Petrichor — Ficha de Personagem

Ficha automatizada para o **Firecast VTT**, feita sob medida para o sistema
Petrichor: um d20 de semideuses, bênçãos divinas e linhagens.

A ficha calcula sozinha o que o livro manda calcular, aplica os efeitos de
raça, poderes, classes e itens equipados, e mostra **a conta atrás de cada
número** — para o jogador conferir sem abrir o livro e o mestre auditar de
relance.

<p align="center">
  <img alt="versão" src="https://img.shields.io/badge/versão-0.53.38-C9A24B">
  <img alt="Firecast SDK" src="https://img.shields.io/badge/Firecast%20SDK-3.7b-8A63C9">
  <img alt="Lua" src="https://img.shields.io/badge/Lua-5.3-000080">
</p>

---

## O que ela faz

**Dez seções**, cada uma alimentando a seguinte:

| # | Seção | O que resolve |
|---|-------|---------------|
| 1 | Perfil | Identidade, aspecto divino, traços de personalidade, XP com subida automática de nível |
| 2 | Atributos & Perícias | Economia de pontos, limites por nível, rolagem pronta de cada perícia |
| 3 | Qualidades & Defeitos | Economia de PQ/PD, tiers, efeitos numéricos automáticos |
| 4 | Raça & Classe | 30 raças com escudo heráldico, mestiçagem lacrada, 12 classes e 36 subclasses |
| 5 | Poderes & Habilidades | Kits das 18 divindades com kit, economia de pontos, construtor de habilidades |
| 6 | Cálculos & Combate | Vida, Aura, Mana, Prana, Vitae, quatro defesas, movimento e ações |
| 7 | Inventário | 250 entradas de loja, 64 encantamentos, oito slots de equipado, bolsa de moedas |
| 8 | Criaturas | Gerador por rank que sorteia dentro da faixa do livro **e diz de onde cada número saiu** |
| 9 | Favores Divinos | Favores por divindade, trocas, bênçãos e proclamação |
| 10 | Background | Campo livre com formatação e imagens |

### Automações que valem o preço

- **Concessões automáticas** — a característica racial dos Drow concede a
  perícia Animais; Constituição sobrenatural nível 1 dá a qualidade Vigor
  expandido. São 28 concessões mapeadas, todas reversíveis: tirou a fonte,
  o efeito sai junto.
- **Cada valor mostra sua origem** — `15 + 10 + (Con 5÷2 × 7)` embaixo dos
  Pontos de Vida, `9 + Força 5 + prof 3` embaixo da Defesa.
- **Equipar aplica tudo** — escudo soma em Aparar, armadura dá absorção e tira
  deslocamento, acessório bonifica a perícia que nomeia. Guardar na mochila
  zera o bônus na hora.
- **Limites que se aplicam sozinhos** — o teto do nível vale para todos os
  atributos; o teto racial de 9 ou 10 só entra a partir do nível 17.
- **Válvula de escape em tudo** — todo cálculo automático tem campo de ajuste
  manual ao lado. Automação que prende o usuário é automação ruim.

> As contagens acima não são de cabeçalho: a **checagem 39** as confere contra
> o disco e contra os catálogos a cada build. Até a v0.47.0 este README dizia
> "nove seções" e a ficha tinha dez — a aba de Criaturas simplesmente não estava
> aqui. Número que ninguém recontou parece dado e não é.

---

## Instalação

Precisa do [Firecast SDK 3](https://firecast.com.br) instalado.

```bash
git clone https://github.com/PlayerU2/Ficha-Automatizada-Firecast.git
cd Ficha-Automatizada-Firecast
rdk i
```

> **Importante:** apague a pasta `output/` antes de compilar, se ela existir
> dentro do projeto — ela causa erro de "form declarado duas vezes".
>
> Depois de `rdk i`, **feche e reabra o Firecast por inteiro**. Recarregar só
> a ficha não limpa o cache, e você vai depurar um bug que já foi corrigido.

Para gerar o `.rpk` distribuível:

```bash
rdk c
```

---

## Estrutura

```
ficha.lfm                     a ficha inteira: XML das 9 abas + 8.200 linhas de Lua
module.xml                    manifesto do plugin
calculos.lua                  fórmulas do livro, isoladas e testáveis
dadosSistema.lua              tabela de evolução: nível, rank, proficiência, XP
catalogoItens.lua             250 entradas de loja (128 itens em seus níveis de qualidade)
catalogoEncantamentos.lua     64 encantamentos em três classes
catalogoPoderes.lua           49 poderes com progressão de 5 níveis
catalogoRacas.lua             30 raças com características e bônus
catalogoQualidadesDefeitos.lua 50 qualidades e defeitos
catalogoDeuses.lua            30 divindades e seus kits
catalogoClasses.lua           12 classes, 36 subclasses
catalogoPericias.lua          64 perícias por atributo
catalogoHabilidades.lua       balanceamento de rank, tags e conflitos
catalogoTracos.lua            36 traços de personalidade com seus opostos
catalogoBestiario.lua         tipos, ranks e marcas das criaturas
catalogoProgressiva.lua       progressões que dependem do nível
itens/                        templates das linhas de lista (perícia, item, qualidade…)
fonts/                        Cinzel, Cinzel Decorative, Marcellus SC, EB Garamond
imagens/                      172 arquivos: selos divinos em dois tamanhos,
                              escudos de raça, ícones de aba, atributos e combate
sdk/                          SDK do Firecast, versionado de propósito: as baterias
                              em Lua rodam contra o SDK de verdade, não contra
                              um dublê que eu escreveria do jeito que me convém
```

> **A arte não escala.** A mesa decidiu `style="originalSize"`, então cada peça
> existe já no tamanho em que aparece — dois tamanhos são dois arquivos. Quem
> converte a arte crua no PNG instalado é `verif/arte_brasao.py`, no repositório
> do ferramental, e os números dele foram **medidos** contra a arte já aprovada
> na tela, não deduzidos.

Os catálogos são **gerados a partir do livro de regras**, não digitados à mão.
Quando o sistema muda, regera-se o catálogo e a varredura confere se a ficha
continua coerente.

---

## Verificação

O ferramental vive **noutro repositório**, ao lado deste, porque a checagem 36
reprova qualquer coisa que não seja do plugin dentro da pasta do plugin — o
`rdk` compila a pasta inteira. São três redes, e cada uma pega o que as outras
não pegam:

| Rede | Mede | Hoje |
|---|---|---|
| `verif/verifica.py` | o XML, o empacotamento, o texto que cabe na tela | 41 checagens |
| `verif/testes.py` | as contas, em Lua puro, fora do Firecast | 188 asserções |
| `verif/mutacao.py` | se as duas acima realmente mordem | 156 mutações |

**Toda checagem nasceu de um bug que chegou ao usuário**, e a saída diz de qual.
Uma checagem que não pega a própria mutação é decorativa, e a bateria de mutação
existe para descobrir isso — inclusive quando o alvo da mutação apodrece e ela
para de testar qualquer coisa, o que já aconteceu com seis delas.

A lei que sustenta as três: **verificação mede a saída, não a intenção.** Uma
checagem que confere se o que eu escrevi é simétrico mede a mim, não o produto,
e passa verde enquanto o jogador vê lixo na tela.

## Armadilhas do Firecast

Anotadas aqui porque custaram caro:

- **`local` só existe a partir da linha em que aparece.** Uma função declarada
  no meio do arquivo é `nil` para tudo que vem antes — e o Lua compila sem
  reclamar.
- **Só um filho pode ter `align="client"` por layout.** Os demais somem sem
  aviso.
- **`setVisible(false→true)` em `align="top"` reordena o elemento** para o topo
  da pilha. Use altura zero.
- **Larguras não existem no primeiro desenho.** Meça o `scrollBox` ou o painel,
  e ignore valores absurdamente pequenos.
- **`field=` dentro de `<popup>` resolve contra a ficha raiz**, não contra o
  item da lista. Carregue e salve manualmente.
- **Funções nomeadas dentro de templates de `recordList` viram globais** — a
  última linha criada sobrescreve todas as anteriores.
- **Nunca apague o nó NDB container de uma `recordList`.** O widget perde o
  vínculo e só se recupera reabrindo a ficha.
- **`#texto` conta bytes, não caracteres.** Em português isso são uns 10% de
  diferença.
- **`<layout>` não recebe `onClick`.** O clique não dispara *e* o Lua não acha
  os filhos — dois sintomas, uma causa. A ficha tem 1.751 `<rectangle>`
  clicáveis e zero `<layout>` clicável: o código instalado já dizia qual é o
  padrão deste SDK.
- **Irmãos são posicionados na ordem em que aparecem.** Um `align="client"`
  declarado antes come a linha inteira, e o painel seguinte nasce com largura
  zero para sempre, sem erro nenhum.
- **O erro aqui é silencioso.** Widget que não existe devolve `nil`, o
  `if ~= nil` engole, e a tela mantém o estado anterior — que costuma parecer
  certo. Por isso a ficha carimba a **versão na tela**: metade das conversas de
  "continua igual" é versão antiga instalada.

---

## Créditos

Sistema **Crônicas de Petrichor** e todo o conteúdo de regras: da mesa.

Ficha desenvolvida para uso na campanha. Os catálogos reproduzem dados do
livro de regras e existem para automatizar a ficha — não substituem o material
original.
