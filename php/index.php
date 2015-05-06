<?php
	include 'conexion.php';

	$query = "SELECT titulo, descripcion, direccion FROM reportes order by id_reporte desc";

	$result = $conexion->query($query);

	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) {
			echo 
			"<div class=\"noticia\">
			<a href=\"#\">
			<h1>". $row['titulo'] ."</h1>
			<img class=\"notimg\" src=\"img/noticias/1a.jpg\">	
			<p>". $row['descripcion'] ."<br> Direccion: ". $row['direccion'] ."</p>
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