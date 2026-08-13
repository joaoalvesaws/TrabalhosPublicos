# Componente 03 — Nossa história

## O que é
Seção com título "Nossa história", parágrafo de texto e uma foto da fachada
da livraria ao lado. Corresponde ao bloco "Nossa história" do protótipo.

## Arquivos
- `historia.html`
- `historia.css`

## Onde colocar
Logo **depois do Hero** (componente 02), como a próxima seção da página.
Tem `id="historia"` — usado pelo link "Nossa história" do menu mobile do
Header.

## Como implementar
1. Cole `historia.html` após o `hero.html`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/03-historia/historia.css">
   ```
3. Substitua o texto de exemplo pelo texto real da história da livraria.
4. **Imagem real**: troque
   ```html
   <div class="historia__image img-placeholder dog-ear"><span>Fachada da livraria MontReal</span></div>
   ```
   por
   ```html
   <div class="historia__image dog-ear">
     <img src="assets/img/fachada.jpg" alt="Fachada da livraria MontReal">
   </div>
   ```
   e adicione ao CSS: `.historia__image img { width:100%; height:100%; object-fit:cover; border-radius: var(--radius-md); }`

## Personalização
- Para inverter a ordem (imagem à esquerda, texto à direita), troque a
  ordem dos blocos no HTML — o grid se ajusta automaticamente.
