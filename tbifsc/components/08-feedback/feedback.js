// =========================================================
// COMPONENTE: Feedback (depoimentos)
// OPCIONAL: gera os cards a partir do array `depoimentos`
// abaixo, em vez de você editar o HTML card a card.
// Para usar: apague os <blockquote> de exemplo em
// feedback.html, deixe #feedbackGrid vazio e inclua este JS.
// =========================================================
(function () {
  const grid = document.getElementById('feedbackGrid');
  if (!grid) return;

  // Se já existirem cards escritos manualmente no HTML, não sobrescreve.
  if (grid.children.length > 0) return;

  const depoimentos = [
    { texto: 'Um elogio incrível', nome: 'Nome', descricao: 'Descrição' },
    { texto: 'Um feedback fantástico', nome: 'Nome', descricao: 'Descrição' },
    { texto: 'Uma avaliação positiva', nome: 'Nome', descricao: 'Descrição' },
    { texto: 'Um elogio incrível', nome: 'Nome', descricao: 'Descrição' },
    { texto: 'Um feedback fantástico', nome: 'Nome', descricao: 'Descrição' },
    { texto: 'Uma avaliação positiva', nome: 'Nome', descricao: 'Descrição' }
  ];

  const frag = document.createDocumentFragment();
  depoimentos.forEach(function (d) {
    const card = document.createElement('blockquote');
    card.className = 'feedback__card';
    card.innerHTML =
      '<p>&ldquo;' + d.texto + '&rdquo;</p>' +
      '<footer>' +
        '<span class="feedback__avatar" aria-hidden="true"></span>' +
        '<span><strong>' + d.nome + '</strong><small>' + d.descricao + '</small></span>' +
      '</footer>';
    frag.appendChild(card);
  });
  grid.appendChild(frag);
})();
