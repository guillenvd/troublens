<?php
/*
//Conexion de Manera Local
	$host = 'localhost';
	$user = 'root';
	$pw	  = '';
	$db   = 'vantest';
*/
//Conexion con servidor Externo Informatux
	$host = 'infor011.mysql.guardedhost.com';
	$user = 'infor011_igastel';
	$pw	  = '47mu3JbBp2';
	$db   = 'infor011_igastelum';

			$conexion = mysqli_connect($host,$user,$pw,$db);
			if (mysqli_connect_errno()){
				echo "No se pudo conectar a la base de datos" . mysqli_connect_error();
			}else{
				echo "conexión exitosamente realizada";
			}
?>