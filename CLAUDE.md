# Ficha de Petrichor — o plugin

Esta pasta é compilada **inteira** pelo `rdk`. Nada que não seja do plugin pode
morar aqui — a checagem 36 cobra isso, e ela abre o `.rpk` para conferir em vez
de adivinhar. (O `.git` é exceção medida: o rdk o pula.)

**O ferramental está no outro repositório**, ao lado: `firecast-mcp/`, com as
três redes de verificação, o servidor MCP e o corpus do livro. O contexto do
projeto — decisões de mesa, regras confirmadas, o que já custou caro — está em
`docs/CONTEXTO-PETRICHOR.md`, **lá**, e manda sobre o livro onde os dois
divergirem.

## Antes de entregar

```
verificar   →  55 checagens de empacotamento
testes      →  303 asserções em Lua puro
rdk l       →  lint do SDK
rdk i       →  instala; depois FECHE o Firecast por completo
```

**A mutação (218, ~22 min) NÃO entra nessa lista. Só rode quando o mestre
pedir** (decisão dele, 09/09/2026): *"fica difícil sempre que mudar alguma
coisa, ou arrumar, eu ter que esperar tanto tempo até todos os testes
rodarem"*. Vinte e dois minutos entre um conserto e a tela custam mais do que
a mutação rende numa entrega que não toca em checagem nenhuma.

O que ela mede continua valendo: **checagem que não pega a própria mutação é
decorativa**. Então há um caso em que ela deixa de ser opcional — **mexeu em
`verif/verifica.py`, avise que a mutação precisa rodar antes de a checagem
valer alguma coisa.** Checagem nova sem mutação que falhe é só uma linha verde.

Quando ela rodar, rode-a **sozinha**: ela segura o `.rpk` de `output/`, e um
`rdk` em paralelo mata a rodada com `WinError 32`.

E **confira o zip depois de gerado** — conferir o que você editou não prova
nada sobre o que o usuário instala.

**O mestre autorizou instalar ao fim de cada entrega** (06/09/2026): terminados
os updates da ficha, rode o `rdk i` sem perguntar. Depois **feche o Firecast por
completo**, que guarda cache do plug-in.

Três coisas medidas em 06/09/2026 ao usar o servidor MCP para isso, e as três
enganam quem lê rápido:

- **`limparIntrusos=true` apagaria o `.git`.** A lista de "pastas que não são do
  plugin" que o servidor imprime inclui o `.git` junto da `NVIDIA Corporation`.
  Ligar essa opção destrói o histórico do plugin. O padrão é `false`, e é para
  continuar assim.
- **O aviso "vai para dentro do .rpk" é falso.** É a mesma previsão que a
  checagem 36 abandonou quando foi medida: o `rdk` pula `.git` e
  `NVIDIA Corporation`. Medido de novo no pacote da v0.48.0 — 200 entradas,
  zero vindas das duas.
- **O "O ARQUIVO INSTALADO NAO MUDOU" pode ser alarme falso.** O servidor tira a
  foto do "depois" ao devolver a resposta parcial (40s), e o `rdk i` deste
  projeto leva ~48s. Confirme com `versoes`, que abre o `module.xml` de dentro
  do `.rpk` instalado, em vez de acreditar na foto.

Ao mexer num kit divino, rode `verif/gera_catalogo_poderes.py`: a lista do
catálogo de poderes é gerada, e a checagem 44 acusa até você regerar.

## Aqui o erro é silencioso

Widget que não existe devolve `nil`, o `if ~= nil` engole, e a tela **mantém o
estado anterior** — que costuma parecer certo. Daí as regras que parecem
paranoia e não são:

- **carimbe a versão na tela** e confira o selo contra o `module.xml`. Metade
  das conversas de "continua igual" é versão antiga instalada;
- **toda recusa diz o que a ficha está vendo** (`[a ficha vê na sua lista: …]`).
  Essa terceira parte resolve sozinha uma conversa de três mensagens;
- **todo valor calculado tem ajuste manual ao lado.** A mesa sempre tem um caso
  que o livro não previu.

## Armadilhas do SDK que custaram caro

- **`<layout>` não recebe `onClick`.** O clique não dispara *e* o Lua não acha
  os filhos. São 1.751 `<rectangle>` clicáveis e zero `<layout>`: o código
  instalado já dizia qual é o padrão.
- **Irmãos são posicionados na ordem em que aparecem.** Um `align="client"`
  declarado antes come a linha, e o painel seguinte nasce com largura zero para
  sempre.
- **`local` só existe a partir da linha em que é declarado.** Uma função escrita
  acima enxerga um global de mesmo nome, que é `nil` — e compila sem reclamar.
- **`visible=` em `align="top"` REORDENA o layout.** Use largura ou altura zero.
- **`field=` grava direto no NDB**, sem passar por Lua. A única trava possível é
  `setEnabled(false)`.
- **A arte de pacote não escala** (`style="originalSize"`, decisão de mesa): dois
  tamanhos são dois arquivos.
- **`#texto` conta bytes, não caracteres.**

## Quando a bateria estiver verde

Não é o mesmo que certo na tela. Peça o print — os dois piores achados desta
história apareceram usando a ficha, não rodando a bateria.
