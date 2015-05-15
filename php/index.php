<?php
include 'conexion.php';

$conexion->set_charset("utf8");

$query = "SELECT a.titulo as titulo, a.descripcion as descripcion, a.direccion as direccion, a.foto as foto, b.nombre as dependencia FROM reportes a, dependencia b where b.id_dependencia=a.id_dependencia order by a.id_reporte desc";

$result = $conexion->query($query);

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
        $nombre_fichero = '../img/upload/'.$row['foto'];
        $img="";
        if (file_exists($nombre_fichero)) {
           $img="
                <a href=\"img/upload/". $row['foto'] ."\">
                <h1>". $row['titulo'] ."</h1>
                <img class=\"notimg\" src=\"http://localhost/troublens/img/upload/". $row['foto'] ."\"> 
                </a>
                ";
        } 
        else {
          $img= "";
        }
		echo 
        "<div class=\"noticia\"> 
            <center>
            ".$img."
            </center>
		<p><b>Descripción:</b><br>". $row['descripcion'] ."<br><b>Dirección:</b><br> ". $row['direccion'] ."</p> <br><b>Dependencia:</b><br> ". $row['dependencia'] ."</p>
        </a>
		</div>";
	}
} else {
	echo
	"<div class=\"noticia\">
	<h1>No hay noticias :-(</h1>
	</div>";
}

$conexion->close();
?>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="css/modal/jquery.lightbox.js"></script>
<script>
  // Initiate Lightbox
  $(function() {
    $('.noticia a').lightbox(); 
  });
</script>