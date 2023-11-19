function ValidarCrud() {
    var id = document.getElementById("txtID").value;
    var Nombre = document.getElementById("txtNombre").value;
    var Identificacion = document.getElementById("txtIdentificación").value;
    var Correo = document.getElementById("txtCorreo").value;
    var Imagen = document.getElementById("txtImagen").value;
    var Rol = document.getElementById("txtRol").value;
    var correoExpresion = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var nombreExpresion = /^[a-zA-Z\s]+$/; // Modificada para permitir solo letras y espacios

    if (Nombre === "" || Identificacion === "" || Correo === "" || Imagen === "" || Rol === "") {
        alert("Algun campo está vacío");
        return false;
    }

    if (!Rol.match(nombreExpresion)) {
        alert("El Rol solo debe contener letras y espacios.");
        return false;
    }

    if (!Nombre.match(nombreExpresion)) {
        alert("El Nombre solo debe contener letras y espacios.");
        return false;
    }

    if (isNaN(Identificacion) || Identificacion.length <= 5) {
        alert("La identificación debe ser un número y tener más de 5 dígitos");
        return false;
    }

    if (Correo.length <= 5 || !correoExpresion.test(Correo)) {
        alert("Correo electrónico no válido o menor a 5 caracteres");
        return false;
    }

    return true;
}
