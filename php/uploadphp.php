

<?php
include("conexion.php");
  if(isset($_POST['name']) && !empty($_POST['name']) && 
     isset($_POST['email']) && !empty($_POST['email']) &&
     isset($_POST['passwd']) && !empty($_POST['passwd']))
  {
      $conexion = mysql_connect($host, $user, $pw, $db) or die ("Problemas en Conexion");
    mysql_select_db($db, $conexion) or die("Problemas al conectar con la BD");
    mysql_query("INSERT INTO usuarios (nombre,correo,contrasena) VALUES ('$_POST[name]','$_POST[email]', '$_POST[passwd]')", $conexion);
         $id = mysql_insert_id();
        $conn = mysqli_connect($host, $user, $pw, $db);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        $sql = "UPDATE usuarios SET foto='".$id.".jpg' WHERE id_usuario='".$id."' ";
        if (mysqli_query($conn, $sql)) {
          echo "<script type=\"text/javascript\">
                  alert('alta exitosa');
                  location.href = \"../index.html\";</script>
                ";
        } else {

          }
        mysqli_close($conn);

  }
?>

<?php
if (true)
{ 
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
             {  /*renombrar archivo*/
                  move_uploaded_file($_FILES["file"]["tmp_name"], "../img/upload/" . $_FILES["file"]["name"]);
                    rename("../img/upload/".$_FILES["file"]["name"],"../img/upload/".$id.".jpg"  );
            }
         }
   } 

}
?>