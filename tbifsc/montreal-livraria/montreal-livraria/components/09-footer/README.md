# Componente 09 — Rodapé

## O que é
Rodapé com nome do site, ícones sociais e três colunas de links
("Tópicos" / "Página"), igual ao rodapé do protótipo.

## Arquivos
- `footer.html`
- `footer.css`
- `footer.js` — preenche o ano atual no aviso de copyright

## Onde colocar
É o **último elemento antes de `</body>`**, depois de todas as outras
seções (Feedback incluso).

## Como implementar
1. Cole `footer.html` como última seção da página, antes de `</body>`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/09-footer/footer.css">
   ```
3. Importe o JS (também antes de `</body>`, pode vir logo após o HTML do rodapé):
   ```html
   <script src="components/09-footer/footer.js"></script>
   ```
4. Troque os links `href="#"` das colunas "Tópicos" pelas âncoras/páginas
   reais do site (ex.: `#historia`, `#contato`, `/politica-de-privacidade.html`).
5. Troque os `href="#"` dos ícones sociais pelos links reais (Instagram,
   WhatsApp, email, localização/mapa).
6. Renomeie os títulos "Tópicos" e textos "Página" pelo conteúdo real de
   cada coluna do rodapé.

## Personalização
- Cores controladas por `--color-ink` (fundo) e `--color-bg` (texto) —
  o rodapé inverte a paleta do site (fundo escuro) para fechar a página
  com contraste, mantendo a mesma paleta terrosa.
