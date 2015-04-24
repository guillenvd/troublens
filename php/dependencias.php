<?php 
$host = "localhost"; 
$user = "root"; 
$pass = ""; 
$database = "troublens"; 
$linkID = mysql_connect($host, $user, $pass) or die("Could not connect to host."); 
mysql_select_db($database, $linkID) or die("Could not find database."); 
$sth = mysql_query("SELECT * FROM dependencia");
$rows = array();
while($r = mysql_fetch_assoc($sth)) {
   $rows[] = $r;
} 
print json_encode($rows);
?>