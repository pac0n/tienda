 
<?php
include './library/configServer.php';
include './library/consulSQL.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Productos</title>
    <?php include './inc/link.php'; ?>
    <link rel="stylesheet" href="css/ecom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/com.js"></script>
</head>
<body id="container-page-product">
    <?php include './inc/navbar.php'; ?>
    <section id="infoproduct">
        <div class="container">
            <div class="row">
                <div class="page-header">
                    <h1>Tienda <small class="tittles-pages-logo">TiendaFcc</small></h1>
                </div>
                <?php 
                error_reporting(E_ERROR | E_WARNING | E_PARSE);
                    $CodigoProducto=$_GET['CodigoProd'];
                    $productoinfo=  ejecutarSQL::consultar("select * from producto where CodigoProd='".$CodigoProducto."'");
                    while($fila=mysql_fetch_array($productoinfo)){
                        echo '
                            <div class="col-xs-12 col-sm-6">
                                <h3 class="text-center">Información de producto</h3>
                                <br><br>
                                <h4><strong>Propietario: </strong>'.$fila['Nombre'].'</h4><br>
                                <h4><strong>Nombre: </strong>'.$fila['NombreProd'].'</h4><br>
                                <h4><strong>Modelo: </strong>'.$fila['Modelo'].'</h4><br>
                                <h4><strong>Marca: </strong>'.$fila['Marca'].'</h4><br>
                                <h4><strong>Precio: </strong>$'.$fila['Precio'].'</h4>

                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <br><br><br>
                                <img class="img-responsive" src="assets/img-products/'.$fila['Imagen'].'">
                            </div>
                            <br><br><br><br><br><br>
                            <div class="col-xs-12 text-center">
                            <br><br><br>
                                <a href="product.php" class="btn btn-lg btn-primary"><i class="fa fa-mail-reply"></i>&nbsp;&nbsp;Regresar a la tienda</a> &nbsp;&nbsp;&nbsp; 
                                <button value="'.$fila['CodigoProd'].'" class="btn btn-lg btn-success botonCarrito"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp; Añadir al carrito</button>
                            </div>
                        ';
                    }
                ?>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<div class="comentar">
    <br><br>
               <h1>Si tiene alguna pregunta, no dude en comentar. </h1>
               <br><br>
      <?php 

      $adminProd= $_POST['admin-name'];
      
       ?>
                <form method='post' action="" onsubmit="return post();" id="container">
      <input type="hidden" id="usuario" value="<?php if(!$_SESSION['nombreAdmin']=="") {
    echo $_SESSION['nombreAdmin'];} else echo $_SESSION['nombreUser']; ?>">
      <textarea id="comentar" placeholder="Escriba su pregunta o comentario aquí... "></textarea>  
      <input class="form-control" id="codprod" type="hidden" name="code-old-prod" required="" value="<?php echo $CodigoProducto; ?>">'
      <input type="submit" value="Comentar" id="submit">
      <br><br>
  </form>

  <div id="all_comments">
  <?php

    $comm = mysql_query("SELECT autor,comentario,fecha from comentarios WHERE CodigoProd = '$CodigoProducto'");
    while($row=mysql_fetch_array($comm))
    {
      $nombre=$row['autor'];
      $comentario=$row['comentario'];
      $fecha=$row['fecha'];
    ?>
    
<div class="comment_div"> 
 <p class="name"><strong><?php echo $nombre;?></strong> comenta: <span style="float:right"><?php echo date("j-M-Y g:ia", strtotime($fecha)) ?></span></p>
 <p class="comments"><?php echo $comentario;?></p>
</div>
 
    <?php
    }
    ?>
  </div>
    <br>
</div> <!--fin div comentarios-->


            </div>
        </div>
    </section>
    <?php include './inc/footer.php'; ?>
</body>
</html>