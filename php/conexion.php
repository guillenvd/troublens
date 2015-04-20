<?php
	$host = 'localhost';
	$user = 'root';
	$pw	  = '';
	$db   = 'troublens';

			$conexion = mysqli_connect($host,$user,$pw,$db);
			if (mysqli_connect_errno()){
				echo "No se pudo conectar a la base de datos" . mysqli_connect_error();
			}else{
			}
?>