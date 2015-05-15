<?php
include("conexion.php");
  if(isset($_POST['titulo']) && !empty($_POST['titulo']) && 
     isset($_POST['descripcion']) && !empty($_POST['descripcion']) &&
     isset($_POST['direccion']) && !empty($_POST['direccion']))
  {    
    $conexion = mysqli_connect($host, $user, $pw, $db);
        if (!$conexion) {
            die("Connection failed: " . mysqli_connect_error());
        }
      mysqli_set_charset($conexion, "utf8");
      mysqli_query($conexion,"INSERT INTO reportes (titulo, descripcion, direccion) VALUES ('" . $_POST['titulo'] . "', '" . $_POST['descripcion'] . "', '" . $_POST['direccion'] . "')");
         $id = mysqli_insert_id($conexion);
    

  }
?>

<?php
 
  $validextensions = array("jpeg", "jpg", "png");
  $temporary = explode(".", $_FILES["file"]["name"]);
  $file_extension = end($temporary);
   if ((($_FILES["file"]["type"] == "image/png") || ($_FILES["file"]["type"] == "image/jpg") || ($_FILES["file"]  ["type"] == "image/jpeg") ) && in_array($file_extension, $validextensions)) 
   {
    if ($_FILES["file"]["error"] > 0) 
         {
            echo "Return Code: " . $_FILES["file"]["error"] . "<br/><br/>";
         } 
   else 
         {
           
         if (file_exists("upload/" . $_FILES["file"]["name"])) 
             {
                  echo $_FILES["file"]["name"] . " <b>already exists.</b> ";
             } 
         else 
             {      $sql = "UPDATE reportes SET foto='".$id.".jpg' WHERE id_reporte='".$id."' ";
                  move_uploaded_file($_FILES["file"]["tmp_name"], "../img/upload/" . $_FILES["file"]["name"]);
                    rename("../img/upload/".$_FILES["file"]["name"],"../img/upload/".$id.".jpg"  );
            }
         }
   }
   else{
      $nombre = "nope";
      $sql = "UPDATE reportes SET foto='".$nombre.".jpg' WHERE id_reporte='".$id."' ";
   }echo "<script type=\"text/javascript\">
                  location.href = \"../index.html\";</script>
                ";
        mysqli_query($conexion, $sql);
        mysqli_close($conexion);

?>