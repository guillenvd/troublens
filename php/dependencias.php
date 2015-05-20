<?php 
include("conexion.php");
$sth = mysqli_query($conexion,"SELECT * FROM dependencia");
$rows = array();

while($r = mysqli_fetch_assoc($sth)) {
   $rows[] = $r;
} 
print json_encode($rows);
?>