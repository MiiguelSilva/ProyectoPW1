<%-- 
    Document   : iniciosesión
    Created on : 31 mar. 2023, 23:01:01
    Author     : myygu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesion</title>
    <script src="https://kit.fontawesome.com/e780099646.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/diseños.css">
</head>
<body>
    <form class="login-container" action="Login" method="post">
        <div class="data" style="justify-content: center; align-content:center; text-align: center; ">
            <br>
           
            <p>Inicio de Sesión</p>
            <br>
            <p style="font-size: 10px;">${sessionScope['error']}</p>
            <i class="fa-solid fa-circle-user" ></i>
            <input type="text" placeholder="Usuario" id="nombre_usuario" name="nombre_usuario" >
            <br>
            <i class="fa-solid fa-key"></i>
            <input type="password" placeholder="Contraseña" id="pass" name="pass" >      
        </div>
         &nbsp; 
         <input type="submit" value="Login">
         &nbsp;
         <a href="registro.jsp">
             <input type="button" value="Registrarse">
            </a>
    
        </form>
    <br> 
</body>
</html>