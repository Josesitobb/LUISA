<?php

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['usuario'])) {
    require('../Config/bd.php');

    $Name = $_POST['usuario'];
    $Password = $_POST['contraseña'];

    // Utiliza la conexión PDO
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Corrige los nombres de los parámetros en la consulta preparada
    $query = $conexion->prepare("SELECT * FROM usuarios WHERE nombre = :Name AND Identificación = :Password");

    $query->bindParam(":Name", $Name);
    $query->bindParam(":Password", $Password);
    
    try {
        $query->execute();
        $usuario = $query->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            $_SESSION['usuario'] = $usuario["Nombre"];
            header("Location: crud.php");
            exit();
        } else {
            echo "Usuario o contraseña incorrectos";
        }
    } catch (PDOException $e) {
        echo "Error en la consulta: " . $e->getMessage();
    }
} else {
    // Manejar el caso en el que no se envió un formulario o falta el campo de usuario
    echo "Error: No se proporcionó un usuario válido.";
}
?>




