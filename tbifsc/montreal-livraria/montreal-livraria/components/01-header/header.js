// =========================================================
// COMPONENTE: Header / Navbar
// Controla a abertura/fechamento do menu mobile.
// =========================================================
(function () {
  const toggle = document.getElementById('menuToggle');
  const nav = document.getElementById('mobileNav');
  if (!toggle || !nav) return;

  toggle.addEventListener('click', function () {
    const isOpen = nav.getAttribute('data-open') === 'true';
    nav.setAttribute('data-open', String(!isOpen));
    nav.setAttribute('aria-hidden', String(isOpen));
    toggle.setAttribute('aria-expanded', String(!isOpen));
  });

  // Fecha o menu ao clicar em um link
  nav.querySelectorAll('a').forEach(function (link) {
    link.addEventListener('click', function () {
      nav.setAttribute('data-open', 'false');
      nav.setAttribute('aria-hidden', 'true');
      toggle.setAttribute('aria-expanded', 'false');
    });
  });
})();
