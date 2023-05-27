<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!--        <p style="font-size: 10px;">${sessionScope['usuario']}</p>-->
        <link rel= "stylesheet" href="css/Menustyle.css">
        <link rel= "stylesheet" href="css/Menustyle2.css">
               
    </head>
    <body>
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        <a href="Profile.html">
            <input type="button" value="Perfil de Usuario" class="button">
        </a>        
        &nbsp
        &nbsp
        <a href="index.html">
        <input type="button" value="Cerrar sesion" class="button">
        </a>
        <h1>Menu de Notas</h1>
        
        <div class="Para-Notas">
            &nbsp
            &nbsp
            &nbsp
            &nbsp
            <a href="crear_nota.jsp" >
                <input type="button" class="button2" value="Crear Nota"></input>
            </a>
            &nbsp
            &nbsp
            <a href="adminNotas.jsp?usuario=${sessionScope['usuario']}" >
            <input type="button" value="Administrar Notas" class="button2">
            </a>
            <a href="buscar_nota.jsp?query=true&contenido=&titulo=&fecha1=&fecha2=" >
            <p><input type="button" value="Busqueda de Notas" class="button3"></p>
            </a>
        </div>
        <div id="footer">
            
            <p>Derechos reservados Copyright 2023 Miguel Angel Rangel Silva & Diego Ismael Espinosa Ramos
            
            </div>
    </body>
</html>
