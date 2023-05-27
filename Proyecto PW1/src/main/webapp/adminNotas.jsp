<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="css/search2.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="css/nav.css">
    <script src="https://kit.fontawesome.com/e780099646.js" crossorigin="anonymous"></script>
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
    <div>
        <input type="text" placeholder="Nombre de Usuario" id="username" name="username">
    </div>
       <div style=" justify-content: center; ">
        <table class="table" align="center" style=" margin-left: auto; margin-right: auto; color: white; width: 70%; justify-content: center; text-align: center;">
            <tr>
                <th>ID</th>
                <th>TITULO</th>
                <th>CONTENIDO</th>
                <th>AUTOR</th>
                <th>EDITAR</th>
            </tr>
            
            <%
                String nombre_usuario = request.getParameter("usuario");
                
                
                    
                        try{
                        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pia_final?useSSL=false&allowPublicKeyRetrieval=true", "root", "GoldenOrder255!");
                        String sql = "SELECT * FROM notas WHERE username = ? AND eliminado=false;";
                        PreparedStatement pstm = conn.prepareStatement(sql);
                        pstm.setString(1, nombre_usuario);
                        ResultSet rs=pstm.executeQuery();
                        while(rs.next()){

                            %>
                                <tr>
                                    <td class="idF"><%=rs.getInt("nota_id")%></td>>
                                    <td class="tituloC"><%=rs.getString("titulo")%></td>>
                                    <td class="contenidoC"><%=rs.getString("contenido")%></td>>
                                    <td class="userC"><%=rs.getString("username")%></td>>
                                    <td><input id="demo" type="button" class="editButton" value="Editar"></td>>
                                </tr>
                            <%

                        }

                    }
                    catch(Exception e) {
                        out.print("welcome "+ e.getMessage());
                    }
                
                
                
            
            %>
            
            
        </table>
    </div>
    
    <div>
    <form id="NotaBuscar"  autocomplete="off" action="EditarNota" method="post" class="Notes-container" >
        
    <b> <label for="user">User:</label></b>
        <input type="text" readonly id="user" name="user"> 
     <br><br>
        
    <b> <label for="id">ID:</label></b>
        <input type="text" readonly id="idC" name="idC"> 
     <br><br>
    
        <b> <label for="titulo">Titulo:</label></b>
        <input type="text" id="titulo" name="titulo"> 
     <br><br>
     
     <b> <label for="contenido">Contenido:</label></b>
     <p><textarea id="contenido" name="contenido" cols:"30" rows:"10"></textarea> </p>
     <br>
     
     <p style="font-size: 10px;">${sessionScope['info']}</p>
     
     
      <input type="submit" name="action" value="Editar Nota" class="button">
     &nbsp;
     &nbsp;
      <input type="submit" name="action" value="Eliminar Nota" class="button">
     &nbsp;
     &nbsp;
     <a href="home.jsp">
             <input type="button" value="Regresar" class="button">
            </a>
    </form>    
    </div>

            <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
            <script>
             $(document).ready(function() {
    $('.editButton').click(function() {
        var id = $(this).parent().siblings(".idF").text();
        $("#titulo").val($(this).parent().siblings(".tituloC").text());
        $("#contenido").val($(this).parent().siblings(".contenidoC").text());
        $("#idC").val($(this).parent().siblings(".idF").text());
        $("#user").val($(this).parent().siblings(".userC").text());
        
    });
});        
            
            </script>
            
</body>

</html>