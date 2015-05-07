<?php
include 'conexion.php';

$query = "SELECT titulo, descripcion, direccion, foto FROM reportes order by id_reporte desc";

$result = $conexion->query($query);

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
		echo 
		"<div class=\"noticia\">
		<a href=\"#\">
		<h1>". $row['titulo'] ."</h1>
		<img class=\"notimg\" src=\"img/upload/". $row['foto'] ."\">	
		<p><b>Descripción:</b><br>". $row['descripcion'] ."<br><b>Dirección:</b><br> ". $row['direccion'] ."</p>
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