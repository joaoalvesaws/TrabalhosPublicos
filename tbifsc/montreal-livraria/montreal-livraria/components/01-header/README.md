# Componente 01 — Header / Navbar

## O que é
Barra fixa no topo do site com: botão **Menu** (abre navegação mobile),
logotipo **MontReal** centralizado e campo de **busca**. Corresponde ao
topo do protótipo Figma (botão "Menu", wordmark "MontReal", campo de busca).

## Arquivos
- `header.html` — marcação do componente
- `header.css` — estilos (depende de `variables.css` e `global.css`)
- `header.js` — abre/fecha o menu mobile

## Onde colocar
É o **primeiro elemento dentro de `<body>`**, antes de qualquer outra seção.
No `index.html` do site, logo após a tag `<body>`.

```html
<body>
  <!-- conteúdo de header.html aqui -->
  ...demais seções...
</body>
```

## Como implementar
1. Copie o conteúdo de `header.html` para o topo do `<body>` da sua página.
2. No `<head>`, garanta a ordem de import do CSS:
   ```html
   <link rel="stylesheet" href="assets/css/variables.css">
   <link rel="stylesheet" href="assets/css/global.css">
   <link rel="stylesheet" href="components/01-header/header.css">
   ```
3. Antes do fechamento de `</body>`, importe o JS:
   ```html
   <script src="components/01-header/header.js"></script>
   ```
4. Ajuste os links do menu mobile (`#historia`, `#contato`, etc.) para
   corresponder aos `id` reais das seções que você implementar.
5. O campo de busca está sem back-end (`onsubmit="return false;"`). Ligue-o
   à sua lógica/rota de busca quando tiver esse recurso pronto.

## Personalização
- Trocar o texto "MontReal" por outro nome/logo (pode virar `<img>`).
- Cores controladas por `--color-ink`, `--color-bg`, `--color-clay-dark`
  em `variables.css`.
