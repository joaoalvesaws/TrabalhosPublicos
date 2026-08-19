// =========================================================
// COMPONENTE: Rodapé
// Preenche o ano atual automaticamente no aviso de copyright.
// =========================================================
(function () {
  const yearEl = document.getElementById('footerYear');
  if (yearEl) yearEl.textContent = new Date().getFullYear();
})();
