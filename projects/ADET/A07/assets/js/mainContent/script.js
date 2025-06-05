function loadMainContent(content = 'action') {
  const maincontent = document.getElementById('mainContent');
  fetch(`contents/${content}.html`)
    .then(response => response.text())
    .then(data => {
      maincontent.innerHTML = data;
    })
    .catch(error => console.error('Error fetching file:', error));
}