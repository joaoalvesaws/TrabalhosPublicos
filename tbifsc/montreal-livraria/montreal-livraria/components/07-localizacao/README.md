# Componente 07 — Localização

## O que é
Seção com título "Localização" e um mapa mostrando onde fica a livraria,
igual ao bloco de mapa do protótipo.

## Arquivos
- `localizacao.html`
- `localizacao.css`

## Onde colocar
Depois da seção de **Contato** (componente 06).

## Como implementar
1. Cole `localizacao.html` após `contato.html`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/07-localizacao/localizacao.css">
   ```
3. **Sem back-end necessário** — o mapa é um `<iframe>` do Google Maps,
   carregado direto no navegador do visitante.
4. **Trocar pelo endereço real**: no Google Maps, busque o endereço da
   livraria → "Compartilhar" → "Incorporar um mapa" → copie a URL de dentro
   do atributo `src` do iframe fornecido → cole no lugar de:
   ```html
   src="https://www.google.com/maps?q=livraria&output=embed"
   ```
   Alternativa rápida sem gerar embed: use
   `https://www.google.com/maps?q=ENDEREÇO+COMPLETO&output=embed`
   substituindo `ENDEREÇO+COMPLETO` (espaços viram `+`).

## Personalização
- O filtro `filter: sepia(...)` em `.localizacao__map` deixa o mapa com tom
  terroso, combinando com a paleta do site. Remova essa linha se preferir
  o mapa com cores originais do Google.
