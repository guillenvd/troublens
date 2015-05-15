$(document).ready(main);

function main(){

var contador=1;
	$('.menu_bar').click(function(){
		//$('nav').toggle();

		if (contador == 1) {
			$('nav').animate({
				left: '0'
			});
			contador = 0;
		}else{
			$('nav').animate({
				left: '-100%'
			});
			contador = 1;
		}
	});
};
function menu() {
var stringMenu ="<ul>"+
                    "<li><a href=\"index.html\"><span class=\"icon-home3\"></span>Inicio</a></li>"+
                    "<li><a href=\"reporte.html\"><span class=\"icon-checkmark\"></span>Reportar</a></li>"+
                    "<li><a href=\"registrar.html\"><span class=\"icon-user\"></span>¡Regístrate!</a></li>"+
                    "<li><a href=\"directorio.html\"><span class=\"icon-pencil\"></span>Directorio</a></li>"+
                    "<li><a href=\"acerca.html\"><span class=\"icon-book\"></span>Acerca</a></li>"+
                "</ul>";
document.getElementById("MenuText").innerHTML = stringMenu;
}
menu();