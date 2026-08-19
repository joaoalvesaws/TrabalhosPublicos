# Componente 02 — Hero / Banner de boas-vindas

## O que é
Banner logo abaixo do header: título "Seja Bem-vindo", setas de navegação
(carrossel) e o livro em destaque ("O livro do Design") com botão
**Consultar**. Reproduz a seção de topo do protótipo Figma.

## Arquivos
- `hero.html`
- `hero.css`
- `hero.js` — lógica das setas do carrossel

## Onde colocar
Logo **depois do Header** (componente 01), como primeira seção de conteúdo
da página.

```html
<body>
  <!-- header.html -->
  <!-- hero.html aqui -->
  <!-- demais seções -->
</body>
```

## Como implementar
1. Cole `hero.html` logo após o header no seu `index.html`.
2. Importe o CSS depois do `header.css`:
   ```html
   <link rel="stylesheet" href="components/02-hero/hero.css">
   ```
3. Importe o JS antes de `</body>`:
   ```html
   <script src="components/02-hero/hero.js"></script>
   ```
4. **Imagem do livro**: hoje é um bloco colorido (`.hero__book`) com o
   título do livro. Para usar uma capa real, troque o `<div class="hero__book dog-ear">`
   por:
   ```html
   <div class="hero__book dog-ear">
     <img src="assets/img/livro-design.jpg" alt="Capa do livro O Livro do Design">
   </div>
   ```
   e adicione `object-fit: cover; width:100%; height:100%;` à imagem no CSS.
5. **Múltiplos livros/slides**: duplique o `<article class="hero__slide" data-slide="1">…</article>`
   dentro de `#heroSlides` para cada novo item — as setas (`hero.js`) já
   alternam automaticamente entre todos os `.hero__slide` existentes.
6. O círculo em volta da palavra "Design" é feito só em CSS (`.hero__circle`).
   Para destacar outra palavra, envolva-a com `<span class="hero__circle">`.

## Personalização
- Texto de boas-vindas: edite o `<h1>`.
- Cores do "livro": gradiente definido em `.hero__book` (usa `--color-olive`
  e `--color-clay`).
