<?php

include 'consulSQL2.php';

$connection = new ejecutarSQL();
$connection->conectar();

$query = 'SELECT * FROM  cliente';
$result = mysqli_query($connection->myconn, $query);

if($numrows = mysqli_num_rows($result)) 
{
        //echo $numrows;
    while ($row = mysqli_fetch_assoc($result)) 
    {
        $NombreCliente = $row['Nombre'];
        $Email = $row['Email'];
        echo $NombreCliente;
        echo " = ";
        echo $Email;
        echo "<br>";
    }
}

?>