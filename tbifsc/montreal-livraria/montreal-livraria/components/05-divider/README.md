# Componente 05 — Divisor (ícone de livro)

## O que é
Um separador visual simples: uma linha fina com um ícone de livro aberto
no centro, igual ao elemento que aparece entre "ExpoLib" e "Contato" no
protótipo.

## Arquivos
- `divider.html`
- `divider.css`

## Onde colocar
Entre **qualquer duas seções** onde você quiser uma pausa visual. No
protótipo original, fica entre os blocos informativos (componente 04) e a
seção de Contato (componente 06):

```html
<!-- info-cards.html -->
<!-- divider.html aqui -->
<!-- contato.html -->
```

Pode ser reaproveitado em outros pontos da página (ex.: antes do rodapé).

## Como implementar
1. Cole `divider.html` no ponto desejado.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/05-divider/divider.css">
   ```
3. Não depende de JS.

## Personalização
- Trocar o ícone: substitua o conteúdo do `<svg>` por outro ícone (ex.:
  uma pena, um marcador de página).
- Cor do ícone controlada por `--color-clay` em `variables.css`.
