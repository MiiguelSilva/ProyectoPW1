<%-- 
    Document   : registro
    Created on : 31 mar. 2023, 23:04:44
    Author     : myygu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="css/diseños.css">
    <script src="RegistroUsuario.js"  type="text/javascript"></script>
</head>
<body>
    <form id="formRegistro" autocomplete="off" class="Register-container" action="Register" method="POST" enctype="multipart/form-data>
        <p>Registre sus datos</p>
        <p>${sessionScope['error']}</p>
     <b> <label for="nombre">Nombre</label></b>
     <a class="format-error" id="nombreWarning"> <label for="nombre">El nombre solo puede contener letras y espacios</label></a>
     <br>
     <input type="text" id="nombre" name="nombre" > 
     <br><br>
     <b> <label for="apellidoP">Apellido Paterno</label></b>
     <a class="format-error" id="paternoWarning"> <label for="apellidoP">El apellido paterno solo puede contener letras y espacios</label></a>
     <br>
     <input type="text" id="apellidos" name="apellidos" >
     <br><br>

     <b> <label for="BirthDate">Fecha de Nacimiento</label></b>
     <a class="format-error" id="fechaWarning"> <label for="BirthDate">La fecha debe ser antes que hoy</label></a>
     <br>
     <input type="date" id="fecha_nac" name="BirthDate">
     <br><br>

     <b> <label for="correo">Correo Electronico</label></b>
     <a class="format-error" id="correoWarning"> <label for="correo">El correo proporcionado es incorrecto</label></a>
     <br>
     <input type="text" id="email" name="correo" > 
     <br><br>

     <b> <label for="NewName">Nombre de Usuario</label></b>
        <br>
        <input type="text" id="nombre_usuario" name="nombre_usuario" > 
     <br><br>

     <b> <label for="NewPass">Contraseña</label></b>
     <a class="format-error" id="passWarning"> <label for="NewPass">La contraseña debe contener al menos 8 caracteres, una mayuscula, un numero
         y un signo de puntuacion </label></a>
     <br>
     <input type="password" id="pass" name="pass" >
     <br><br>

     <b> <label for="ConfirmPass">Confirmar Contraseña</label></b>
     <a class="format-error" id="cpassWarning"> <label for="ConfirmPass">Las contraseñas no coinciden</label></a>
     <br>
     <input type="password" id="confirmar" name="confirmar" >
     <br><br>

    
     <input type="submit" value="Confirmar" >
     
     <a href="login.jsp">
             <input type="button" value="Regresar" >
            </a>
    </form>
</body>
