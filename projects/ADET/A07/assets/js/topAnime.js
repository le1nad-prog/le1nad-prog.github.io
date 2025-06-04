function loadTopAnime() {
  const topAnime = document.getElementById('topAnime');
  fetch(`contents/topAnime.html`)
    .then(response => response.text())
    .then(data => {
      topAnime.innerHTML = data;
    })
    .catch(error => console.error('Error fetching file:', error));
}