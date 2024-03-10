window.addEventListener('load', function() {
	let header = document.querySelector("header");
    header.innerHTML = `<button class="scale2" onclick="history.go(-1)"><i id="allow" class="fas fa-arrow-left"></i></button>`;
});
