// =========================================================
// COMPONENTE: Hero / Banner de boas-vindas
// Lógica simples de carrossel. Funciona com 1 ou vários
// elementos .hero__slide dentro de #heroSlides.
// =========================================================
(function () {
  const track = document.getElementById('heroSlides');
  const prevBtn = document.getElementById('heroPrev');
  const nextBtn = document.getElementById('heroNext');
  if (!track || !prevBtn || !nextBtn) return;

  const slides = Array.from(track.querySelectorAll('.hero__slide'));
  let current = 0;

  function render() {
    // Some ao adicionar mais slides no HTML: cada .hero__slide vira
    // uma "página" e este script alterna a exibição entre elas.
    slides.forEach(function (slide, i) {
      slide.style.display = i === current ? 'grid' : 'none';
    });
    prevBtn.disabled = slides.length <= 1;
    nextBtn.disabled = slides.length <= 1;
  }

  prevBtn.addEventListener('click', function () {
    current = (current - 1 + slides.length) % slides.length;
    render();
  });

  nextBtn.addEventListener('click', function () {
    current = (current + 1) % slides.length;
    render();
  });

  render();
})();
