<%-- 
    Document   : DataEliminar
    Created on : 12 jun. 2020, 0:55:57
    Author     : DELL
--%>

<%@page contentType="text/html; charset=ISO-8859-1"%>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Estilos/Estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Eliminando entrada...</title>
    </head>
    <body background="imagen_back.png">
        <div class="contenedor">
            <div class="contenedor-servicios">
                <div class="servicio violeta">
 <h1><strong><center>En mi Diario</center></strong></h1>
        <%
            String ID = request.getParameter("ID");

            Connection con = null;
            Statement st = null;

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/laboratorio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false", "root", "1234");
                st= con.createStatement();
                
                String query ="UPDATE `laboratorio`.`registros` SET `Visibilidad` = '0' WHERE (`id` = '"+ID+"');";
                st.executeUpdate(query);
                
                out.println("\n ¡Tu entrada ha sido eliminada exitosamente!");
                
                
            } catch (Exception e) {
                
                out.print("Oops! Parece que los datos introducidos han sido incorrectos. Intenta de nuevo!");
                e.printStackTrace();
            }


        %>

        <p></p>
        <center>
</br>
<a href="index.html">
  <img src="inicio.png" style="max-width:04%;width:auto;height:auto;">
</a>
	</center>
                        </div>
            </div>
        </div>
    </body>
</html>

