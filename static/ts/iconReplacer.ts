for (const icon of document.querySelectorAll('icon')) {
  const img: HTMLImageElement = document.createElement('img');
  img.height = 32;
  img.width = 32;
  img.className = 'icon';
  img.src = `https://cdn.simpleicons.org/${icon.getAttribute('slug')}/white`;

  icon.replaceWith(img);
}
