<?php
	include 'conexion.php';

	$query = "INSERT INTO reportes (titulo, descripcion, direccion) VALUES ('" . $_POST['titulo'] . "', '" . $_POST['descripcion'] . "', '" . $_POST['direccion'] . "')";

	if ($conexion->query($query)) {
		echo '<script> location.href="../index.html"; </script>';
	}

	$conexion->close();
?>