<?php
include 'conexion.php';
function getTipo($tipo)
{ $value ="";
   switch ($tipo) {
        case 1:
            $value ="Incendio";
            break;
        case 2:
            $value ="Agua";
            break;
        case 3:
            $value ="Gas";
            break;
        case 4:
            $value ="Luz";
            break;
        case 5:
            $value ="Choque";
            break;
        case 6:
            $value ="Baches";
            break;
        case 7:
            $value ="Otros";
            break;
         
       
      
   }
    return ($value); //string
}

    if($_GET['input']==0)
            $query = "SELECT * FROM reportes order by id_reporte desc";
    else 
            $query = "SELECT * FROM reportes where tipo = ".$_GET['input']." order by id_reporte desc";

$conexion->set_charset("utf8");

$result = $conexion->query($query);

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
        $nombre_fichero = '../img/upload/'.$row['foto'];
        $img="";
        if (file_exists($nombre_fichero)) {
           $img="
                <a href=\"img/upload/". $row['foto'] ."\">
                <h1>". $row['titulo'] ."</h1>
                <img class=\"notimg\" src=\"img/upload/". $row['foto'] ."\"> 
                </a>
                ";
        } 
        else {
          $img= " <h1>". $row['titulo'] ."</h1>";
        }
		echo 
        "<div class=\"noticia\"> 
            <center>
            ".$img."
            </center>
		<p><b>Descripción:</b><br>". $row['descripcion'] ."<br><b>Dirección:</b><br> ". $row['direccion'] ."</p> <br> <p style=\"text-align:right;\"> <b >Clasificación:</b><br> ".getTipo($row['tipo'])."</p></p>
        </a>
		</div>";
	}
} else {
	echo
	"<div class=\"noticia\">
	<h1>No hay reportes de <ins>".getTipo($_GET['input'])."</ins>  :-(</h1>
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