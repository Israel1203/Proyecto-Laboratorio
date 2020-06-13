<%-- 
    Document   : data
    Created on : 17/05/2020, 07:58:44 PM
--%>

<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Estilos/Estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

        <title>Añadiendo entrada...</title>
    </head>

    <body background= "imagen_back.png">
        <div class="contenedor">
            <div class="contenedor-servicios">
                <div class="servicio violeta">
        <h1><strong><center>Material de Laboratorio</center></strong></h1>
        <%
            String entrada = request.getParameter("Entrada");
            String estado = request.getParameter("Estado");

            Connection con = null;
            Statement st = null;

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/laboratorio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false", "root", "1234");
                st= con.createStatement();
                
                String query ="INSERT INTO `laboratorio`.`registros` (`Entradas`, `Estados_id`) VALUES ('"+entrada+"', '"+estado+"');";
                st.executeUpdate(query);
                
                out.println("\n Tu entrada ha sido insertada exitosamente!");
                
                
            } catch (Exception e) {
                out.print("Oops! Parece que los datos introducidos han sido incorrectos. Intentalo de nuevo!");
                e.printStackTrace();
            }


        %>

        <p></p>
        <center>
<a href="index.html">
  <img src="inicio.png" style="max-width:04%;width:auto;height:auto;">
</a>
</center>
                </div>
            </div>
        </div>
    </body>
</html>