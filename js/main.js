$(document).ready(function() {
	main();
    setInterval(main, 3000);
});

function main() {
    $.get("php/index.php", function(data, status) { $("#contenido").html(data); } );
}