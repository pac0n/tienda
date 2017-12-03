<?php

error_reporting(E_ERROR | E_WARNING | E_PARSE);

$host="localhost";
$username="root";
$password="";
$databasename="store";

$connect=mysql_connect($host,$username,$password);
$db=mysql_select_db($databasename);

if(isset($_POST['user_comm']) && isset($_POST['user_name']) && isset($_POST['num_prod']))
{
  $name=$_POST['user_name'];
  $comment=$_POST['user_comm'];
  $codprod=$_POST['num_prod'];
  $insert=mysql_query("insert into comentarios (autor,comentario,fecha,CodigoProd) values('$name','$comment',CURRENT_TIMESTAMP,'$codprod')");

  $select=mysql_query("select autor,comentario,fecha from comentarios where autor='$name' and comment='$comment'");
}

?>