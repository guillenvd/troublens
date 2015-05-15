<?php
include("conexion.php");
  if(isset($_POST['titulo']) && !empty($_POST['titulo']) && 
     isset($_POST['descripcion']) && !empty($_POST['descripcion']) &&
     isset($_POST['direccion']) && !empty($_POST['direccion']))
  {
      $conexion = mysql_connect($host, $user, $pw, $db) or die ("Problemas en Conexion");
      mysql_select_db($db, $conexion) or die("Problemas al conectar con la BD");
      mysql_query("INSERT INTO reportes (titulo, descripcion, direccion) VALUES ('" . $_POST['titulo'] . "', '" . $_POST['descripcion'] . "', '" . $_POST['direccion'] . "')", $conexion);
         $id = mysql_insert_id();
        $conn = mysqli_connect($host, $user, $pw, $db);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
      

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
   }
        if (mysqli_query($conn, $sql)) {
          echo "<script type=\"text/javascript\">
                  alert('alta exitosa');
                  location.href = \"../index.html\";</script>
                ";
        } else {

          }
        mysqli_close($conn);

?>