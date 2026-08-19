# MontReal — Landing page da livraria

Site estático (HTML + CSS + JS puro, **sem back-end**) baseado no protótipo
Figma enviado. Paleta off-white + tons terrosos, com um pequeno elemento de
assinatura visual (a "dobra de página" nos cantos das imagens/cards,
`.dog-ear`) remetendo a um livro folheado.

## Como rodar
Não precisa de servidor nem instalação. Duas formas:

1. **Mais simples**: dê duplo clique em `index.html` — ele abre no navegador
   já funcionando, com todos os componentes montados.
2. **Recomendado para desenvolver**: sirva a pasta com um servidor local
   (evita bloqueios de alguns navegadores com `file://`), por exemplo:
   ```bash
   cd montreal-livraria
   python3 -m http.server 8000
   ```
   depois abra `http://localhost:8000`.

## Estrutura de pastas

```
montreal-livraria/
├── index.html                 ← página completa e funcional (todos os componentes já montados)
├── assets/
│   ├── css/
│   │   ├── variables.css      ← paleta de cores, tipografia, espaçamentos (tokens)
│   │   └── global.css         ← reset, tipografia base, botões, placeholder de imagem
│   ├── js/                    ← reservado para scripts globais futuros
│   └── img/                   ← reservado para as fotos reais da livraria
└── components/
    ├── 01-header/              menu, logo, busca
    ├── 02-hero/                banner "Seja Bem-vindo" + livro em destaque
    ├── 03-historia/            "Nossa história"
    ├── 04-info-cards/          "Início" / "Primeiro cliente" / "ExpoLib"
    ├── 05-divider/             divisor com ícone de livro
    ├── 06-contato/             telefone / email / Instagram + WhatsApp / Ligar agora
    ├── 07-localizacao/         mapa
    ├── 08-feedback/            grade de depoimentos
    └── 09-footer/               rodapé com colunas de links
```

Cada pasta de componente contém:
- **`*.html`** — o mesmo trecho de marcação que já está dentro de `index.html`
  (útil para copiar/isolar o componente em outro projeto)
- **`*.css`** — estilo específico do componente
- **`*.js`** *(quando existe)* — comportamento do componente
- **`README.md`** — o que é, onde encaixar na página e como personalizar

`index.html` já é o site funcionando de ponta a ponta. Os arquivos dentro de
`components/` existem para você **analisar cada peça isoladamente** e, se
quiser, reorganizar, reaproveitar em outra página ou substituir por uma
versão sua — sem precisar caçar o trecho dentro do arquivo grande.

## Ordem de carregamento do CSS (importante)
```html
<link rel="stylesheet" href="assets/css/variables.css">   <!-- 1º: tokens -->
<link rel="stylesheet" href="assets/css/global.css">       <!-- 2º: base -->
<link rel="stylesheet" href="components/01-header/header.css">
<link rel="stylesheet" href="components/02-hero/hero.css">
<!-- ...demais componentes, na ordem em que aparecem na página -->
```
`index.html` já segue essa ordem — use-a como referência se for remontar a
página manualmente a partir dos componentes.

## Paleta de cores (`assets/css/variables.css`)
| Token             | Cor       | Uso                                   |
|--------------------|-----------|----------------------------------------|
| `--color-bg`        | `#F6F1E7` | fundo off-white principal             |
| `--color-bg-alt`     | `#EDE3D2` | fundo das seções alternadas           |
| `--color-surface`    | `#FFFDF9` | cards e superfícies elevadas          |
| `--color-ink`        | `#3B2E24` | texto principal / rodapé              |
| `--color-clay`       | `#A65A34` | terracota — CTAs e destaques          |
| `--color-olive`      | `#6E7A54` | verde-oliva — segundo destaque        |
| `--color-gold`       | `#C08A3E` | ocre/dourado — detalhes e ícones      |
| `--color-line`       | `#DBCBB0` | linhas e bordas                       |

Trocar qualquer cor do site inteiro = editar o valor correspondente em
`variables.css`, uma única vez.

## Imagens
Como o protótipo não trazia fotos reais, todo lugar com foto usa um bloco
`.img-placeholder` (gradiente terroso + legenda) no lugar de `<img>`. Cada
`README.md` de componente mostra exatamente o trecho a trocar por uma
imagem real. Depois de colocar suas fotos, salve-as em `assets/img/`.

## Próximos passos sugeridos
- Substituir os placeholders de imagem por fotos reais da livraria.
- Trocar os números/links de WhatsApp, telefone e Instagram (componente 06).
- Colocar o endereço real no mapa (componente 07).
- Revisar todos os textos de exemplo ("Corpo de texto para...") pelo
  conteúdo definitivo.
