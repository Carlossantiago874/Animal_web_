<?php

$conexion=mysqli_connect("localhost","root","","animalweb");


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../estilos/estilos.css">
    <title>Document</title>
</head>
<body>
<nav>
          <label class="logo">Animal Web</label>
          
          <ul>
              
              
              <li><a href="#">Redes Sociales</a>
                  <ul>
                      <li><a href="http://www.facebook.com/">facebook</a></li>
                      <li><a href="http://www.twitter.com/">twiter</a></li>
                  </ul>
              </li>
              <li><a href="../dashboard.php">inicio</a></li>
              
          </ul>
      </nav>
    <table>
    <tr>
        <td>nombre</td>
        <td>apellidos</td>
        <td>telefono</td>
        <td>email</td>
        <td>id_animal</td>
        <td>peticion</td>
    </tr>
    <?php
    $sql="SELECT * FROM enviar ";
    $result=mysqli_query($conexion,$sql);

    while ($mostrar=mysqli_fetch_array($result)){

    
    ?>
    
    <tr>
    <td><?php echo $mostrar['nombre'] ?></td>
    <td><?php echo $mostrar['apellidos'] ?></td>
    <td><?php echo $mostrar['telefono'] ?></td>
    <td><?php echo $mostrar['email'] ?></td>
    <td><?php echo $mostrar['id_animal'] ?></td>
    <td><?php echo $mostrar['peticion'] ?></td>

    </tr>
    <?php
    }
    ?>


    </table>
</body>
</html>