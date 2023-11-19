
<?php

$host="Localhost";
$bd="definitivo";
$usuario="root";
$contrasenia="";

try {
    $conexion = new PDO("mysql:host=$host;dbname=$bd", $usuario, $contrasenia);
      if($conexion){ ;}
} catch (Exception $ex) {
    echo $ex ->getMessage();
}

?>