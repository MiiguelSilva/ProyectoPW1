<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/CrearNotas.css">"
    <link rel="stylesheet" href="css/nav.css">
</head>
<body>
    <nav>
        <ul class="nav-links">
            <li><a href="home.jsp">Menu Principal</a></li>
            <li><a href="Profile.html">Perfil de Usuario</a></li>
            <li><a href="adminNotas.jsp">Administrar Notas</a></li>
            <li><a href="login.jsp">Cerrar sesion</a></li>
        </ul>
        </div>
    </nav>
    
        <form id="NotaNueva"  autocomplete="off" class="Notes-container" action="CrearNota" method="post">
            <b> <label for="titulo">User:</label></b>
            <input type="text" value="${sessionScope['usuario']}" id="usuario" name="usuario"  placeholder="Ponga un titulo" readonly> 
            <br>
            <b> <label for="titulo">Titulo:</label></b>
            <input type="text" id="titulo" name="titulo"  placeholder="Ponga un titulo"> 
     <br><br>
     
     <b> <label for="contenido">Contenido:</label></b>
     <p><textarea id="contenido" name="contenido" cols:"30" rows:"10"  placeholder="LLene el contenido de su nota"></textarea> </p>
      <p style="padding-top: 10px;">${sessionScope['info']}</p>
     <br>
    
     
      <input type="submit" value="Guardar Nota" class="button">
     &nbsp;
     &nbsp;
            <a href="/proyectoWeb/home.jsp">
             <input type="button" value="Regresar" class="button">
            </a>
    </form>
</body>
</html>