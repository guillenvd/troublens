<!DOCTYPE html>
<html lang="en">
<head>
  <META charset="UTF-8">
  <title>Menu</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
  <link rel="stylesheet" type="text/css" href="css/fonts.css">
  <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<?php
include("conexion.php");
	if(isset($_POST['id']) && !empty($_POST['id']) && 
     isset($_POST['name']) && !empty($_POST['name']) && 
     isset($_POST['email']) && !empty($_POST['email']) &&
     isset($_POST['passwd']) && !empty($_POST['passwd']))
	{
	$conexion = mysql_connect($host, $user, $pw, $db) or die ("Problemas en Conexion");
		mysql_select_db($db, $conexion) or die("Problemas al conectar con la BD");
		mysql_query("INSERT INTO usuarios (id_usuario,nombre,correo,contrasena)
      VALUES ('$_POST[id]','$_POST[name]','$_POST[email]', '$_POST[passwd]')", $conexion);
			echo "<br>datos insertados correctamente";
			?>
	
<?php
	}else{
			echo "<br><br>Campos Vacios";
	}
?>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>