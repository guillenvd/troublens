$(document).ready(function() {
	main();
   setInterval(main, 3000);
});

function main() {
    console.log("input"+document.getElementById('tipo-get').value);
    var input = document.getElementById('tipo-get').value;
    $.get("php/index.php?input="+input, function(data, status) { $("#contenido").html(data); } );
}
function  tipo(tipo) {
    $("#loading-img").show();
    document.getElementById('tipo-get').value = tipo;
    main();
}