# Componente 08 — Feedback (depoimentos)

## O que é
Grade com 6 cartões de depoimento (citação + avatar + nome + descrição),
igual à seção "Feedback" do protótipo.

## Arquivos
- `feedback.html` — 6 cards já escritos com o conteúdo de exemplo
- `feedback.css`
- `feedback.js` — **opcional**: gera os cards a partir de uma lista
  JavaScript, útil se você preferir editar os depoimentos em um só lugar

## Onde colocar
Depois da seção de **Localização** (componente 07).

## Como implementar
### Opção A — editar o HTML diretamente (mais simples)
1. Cole `feedback.html` após `localizacao.html`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/08-feedback/feedback.css">
   ```
3. Edite o texto de cada `<blockquote class="feedback__card">` com a
   citação, nome e descrição reais.
4. **Não inclua `feedback.js`** nesta opção (ele só entra se o
   `#feedbackGrid` estiver vazio).

### Opção B — gerar os cards via JavaScript
1. Cole `feedback.html`, mas **apague os 6 `<blockquote>`** de dentro de
   `<div class="feedback__grid" id="feedbackGrid">…</div>`, deixando-a vazia.
2. Importe o CSS (igual acima) e, antes de `</body>`, o JS:
   ```html
   <script src="components/08-feedback/feedback.js"></script>
   ```
3. Edite o array `depoimentos` dentro de `feedback.js` com os textos reais.

## Personalização
- **Avatar real**: troque `<span class="feedback__avatar">` por
  `<img class="feedback__avatar" src="..." alt="Foto de [nome]">` (o CSS já
  deixa qualquer elemento com essa classe redondo).
- Para mais/menos colunas, ajuste `grid-template-columns` em
  `.feedback__grid` (`feedback.css`).
