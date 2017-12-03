<?php

class ejecutarSQL  {
    var $host = 'localhost';
    var $user = 'root';
    var $pass = '';
    var $db = 'store';
    var $myconn;

    function conectar() 
    {
        $con = mysqli_connect($this->host, $this->user, $this->pass, $this->db);
        if (!$con) 
        {
            die('Could not connect to database!');
        }

         else 
         {
            $this->myconn = $con;
            //echo 'Connection established!';
        }
        return $this->myconn;
    }

    public static function consultar($query) {
        if (!$consul = mysql_query($query, ejecutarSQL::conectar())) {
            die(mysql_error().'Error en la consulta SQL ejecutada');
        }
        return $consul;
}

    function close() {
        mysqli_close($myconn);
        // echo 'Connection closed!';
    }

}

?>