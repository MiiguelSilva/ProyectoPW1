<%@page import="java.text.SimpleDateFormat"%>
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
     <link rel="stylesheet" href="css/search4.css">
    <link rel="stylesheet" href="css/search3.css">
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
    
    <div style="padding-bottom: 100px;">
        
        <form id="busqueda avanzada" class="busquedacontainer" action="BuscarNota" method="post">
            <h2>Busqueda Avanzada</h2>
            <br>
            <b> <label for="titulo">Titulo:</label></b>
        <input type="text" id="titulo" name="titulo"  placeholder="Escriba un titulo"> 
     <br>
     <br>
     
     <b> <label for="contenido">Contenido:</label></b>
     <p><textarea id="contenido" name="contenido" cols:"30" rows:"5"  placeholder="LLene el contenido de su nota"></textarea> </p>
     <br>
            <label for="">Fechas Aproximadas</label><br>
            <b> <label for="Date1">De:</label></b>
     <input type="date" id="Date1" name="Date1">
     <b> &nbsp;&nbsp;<label for="Date2">A:</label></b>
     <input type="date" id="Date2" name="Date2">
     <br><br>
     <input type="submit" value="Buscar" class="button2">
</form>
        
    </div>
    
    
    <div style="padding-bottom: 200px; justify-content: center; ">
        <table class="table" align="center" style=" margin-left: auto; margin-right: auto; color: white; width: 70%; justify-content: center; text-align: center;">
            <tr>
                <th>ID</th>
                <th>TITULO</th>
                <th>CONTENIDO</th>
                <th>AUTOR</th>
                <th>EDITAR</th>
            </tr>
            
            <%
                String param = request.getParameter("query");
                String titulo = request.getParameter("titulo");
                String contenido = request.getParameter("contenido");
                String fecha1 = request.getParameter("fecha1");
                String fecha2 = request.getParameter("fecha2");
                Date date1 = null;
                Date date2 = null;
                if(fecha1 == null || fecha1 == ""){
                  fecha1 = null;
                }
                else{
                   date1 = java.sql.Date.valueOf(fecha1);
                }
                
                if(fecha2 == null ||  fecha2 == ""){
                  fecha2 = null;
                }
                else{
                   date2 = java.sql.Date.valueOf(fecha2);
                }
                
                if(!param.isEmpty()){
                    
                        try{
                        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pia_final?useSSL=false&allowPublicKeyRetrieval=true", "root", "GoldenOrder255!");
                        String sql = "CALL buscarnotas(?,?,?,?)";
                        PreparedStatement pstm = null;
                        pstm = conn.prepareStatement(sql);
                        pstm.setString(1, titulo);
                        pstm.setString(2, contenido);
                        if(date1 != null){
                            pstm.setDate(3, date1);
                        }
                        else{
                            pstm.setNull(3, Types.DATE);
                        }
                        if(date2 != null){
                            pstm.setDate(4, date2);
                        }
                        else{
                            pstm.setNull(4, Types.DATE);
                        }
                        ResultSet rs=pstm.executeQuery();
                        while(rs.next()){

                            %>
                                <tr>
                                    <td><%=rs.getInt("nota_id")%></td>>
                                    <td><%=rs.getString("titulo")%></td>>
                                    <td><%=rs.getString("contenido")%></td>>
                                    <td><%=rs.getString("username")%></td>>
                                    <td><input type="button" class="editButton" value="Editar"></td>>
                                </tr>
                            <%

                        }

                    }
                    catch(Exception e) {
                        out.print("welcome "+ e.getMessage());
                    }
                }
                
                
            
            %>
            
            
        </table>
    </div>
    

</body>
</html>