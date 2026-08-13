# Componente 04 — Blocos informativos (Início / Primeiro cliente / ExpoLib)

## O que é
Três blocos com título curto, texto e foto: "Início", "Primeiro cliente" e
"ExpoLib" — reproduzem a área do meio do protótipo, com o card do centro
levemente descido para criar o efeito "escalonado" da referência.

## Arquivos
- `info-cards.html`
- `info-cards.css`

## Onde colocar
Logo **depois de "Nossa história"** (componente 03).

## Como implementar
1. Cole `info-cards.html` após `historia.html`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/04-info-cards/info-cards.css">
   ```
3. Edite os três `<h3>` e `<p>` com o conteúdo real de cada bloco.
4. **Imagens reais**: substitua cada
   ```html
   <div class="info-card__image img-placeholder dog-ear"><span>...</span></div>
   ```
   por
   ```html
   <div class="info-card__image dog-ear">
     <img src="assets/img/sua-foto.jpg" alt="Descrição da foto">
   </div>
   ```
   e adicione ao CSS: `.info-card__image img { width:100%; height:100%; object-fit:cover; border-radius: var(--radius-md); }`

## Personalização
- Para adicionar um 4º bloco, copie um `<article class="info-card">` e
  ajuste `grid-template-columns` em `.info-cards__grid` (ex.: `repeat(4, 1fr)` em telas largas).
- O efeito escalonado é opcional: remova a classe `info-card--offset` do
  segundo bloco para alinhar todos na mesma linha.
