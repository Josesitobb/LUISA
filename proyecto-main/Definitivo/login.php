<!doctype html>
<html lang="es">
<head>
    <title>Iniciar Sesión</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <br/> <br/> <br/> <br/> <br/>

            <div class="card">
                <div class="card-header">
                    Inicio de Sesión
                </div>
                <div class="card-body">
                    <form action="./sesion/validacion.php" method="POST">
                        <div class="form-group">
                            <label>Nombre de Usuario</label>
                            <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Ingresa tu Usuario">
                        </div>

                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="password" class="form-control" name="contraseña" id="contraseña" placeholder="Escribe tu Contraseña">
                        </div>

                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
