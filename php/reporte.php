<?php
	include 'conexion.php';

	$query = "INSERT INTO reportes (titulo, descripcion, direccion) VALUES ('" . $_POST['titulo'] . "', '" . $_POST['descripcion'] . "', '" . $_POST['direccion'] . "')";

	$conexion->query($query);
	$conexion->close();
?>