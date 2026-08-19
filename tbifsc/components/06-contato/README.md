# Componente 06 — Contato

## O que é
Seção com título "Contato", lista de Telefone / Email / Instagram, foto e
dois botões de ação: **WhatsApp** e **Ligar agora**. Igual ao bloco de
contato do protótipo.

## Arquivos
- `contato.html`
- `contato.css`

## Onde colocar
Depois do **Divisor** (componente 05). Tem `id="contato"`, usado pelo link
"Contato" do menu mobile do Header.

## Como implementar
1. Cole `contato.html` após `divider.html`.
2. Importe o CSS:
   ```html
   <link rel="stylesheet" href="components/06-contato/contato.css">
   ```
3. Preencha os textos reais de telefone, email e Instagram nos `<dd>`.
4. **Botão WhatsApp**: troque o número no link
   `href="https://wa.me/5500000000000"` pelo número real, no formato
   `55` + DDD + número, sem espaços ou símbolos.
5. **Botão Ligar agora**: troque `href="tel:+5500000000000"` pelo telefone
   real (formato `tel:+55DDDNUMERO`).
6. **Imagem real**: troque
   ```html
   <div class="contato__image img-placeholder dog-ear"><span>...</span></div>
   ```
   por
   ```html
   <div class="contato__image dog-ear">
     <img src="assets/img/contato.jpg" alt="Descrição da foto">
   </div>
   ```
   e adicione ao CSS: `.contato__image img { width:100%; height:100%; object-fit:cover; border-radius: var(--radius-md); }`

## Personalização
- Não há back-end: os botões apenas abrem o WhatsApp Web/app e o discador
  do telefone. Não é necessário servidor para isso.
