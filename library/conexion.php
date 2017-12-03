<?php

$mysqli=new mysqli("localhost","id3635840_root","coca01","id3635840_store"); 
	
	if(mysqli_connect_errno())
	{
		echo 'Conexion Fallida : ', mysqli_connect_error();
		exit();
	}

?>