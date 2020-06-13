<%-- 
    Document   : Ver
    Created on : 17/05/2020, 03:01:01 PM
--%>

<%@page contentType="text/html; charset=ISO-8859-1"
        import ="java.sql.Connection"        
        import ="java.sql.DriverManager"        
        import ="java.sql.ResultSet"        
        import ="java.sql.Statement"        
        import ="java.sql.SQLException"        

        %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Estilos/Estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Ver entradas</title>
    </head>
        <bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource">
        <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
        <property name="url" value="jdbc:mysql://127.0.0.1/laboratorio?serverTimezone=UTC"/>
        <property name="username" value="root"/>
        <property name="password" value="root"/>
    </bean>
        <bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource">
        <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
        <property name="url" value="jdbc:mysql://127.0.0.1/laboratorio?serverTimezone=UTC"/>
        <property name="username" value="root"/>
        <property name="password" value="root"/>
    </bean>
    <body background= "imagen_back.png">
        <div class="contenedor">
            <div class="contenedor-servicios">
                <div class="servicio violeta">
                    <h1><strong><center>Viendo Entradas</center></strong></h1>

                    <table border bgcolor="#F0F8FF" style="margin: 0 auto;">
                        <p><strong><marquee behavior=alternate><center>Bienvenido a tus entradas</center></marquee></strong></p>

                        <center>
                            <tr>
                                <th><font color="Peru">ID de la entrada</font></th>
                                <th><font color="Peru">Entradas </font></th>
                                <th><font color="Peru">Fecha de creación</font></th>
                                <th><font color="Peru">Nivel se uso</font></th>
                            </tr>


                            <%
                                Connection conex = null;
                                Statement sql = null;
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    conex = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/laboratorio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false", "root", "1234");
                                    sql = conex.createStatement();

                                    String qry = "select * from laboratorio.registros";
                                    ResultSet data = sql.executeQuery(qry);
                                    while (data.next()) {
                            %>

                            <% if (data.getInt("Visibilidad") == 1) { %>
                            <tr>
                                <td><font color="black">
                                    <% out.print(data.getInt("Id"));%>
                                    </font>                                </td>
                                <td><font color="black">
                                    <% out.print(data.getString("Entradas"));%>
                                    </font>
                                </td>
                                <td><font color="black">
                                    <% out.print(data.getString("Fecha de creación"));%>
                                    </font>
                                </td>
                                <td><font color="black">
                                    <% 
                                        if (Integer.parseInt(data.getString("Estados_id")) == 1) {

                                            out.print("Bueno");

                                            }

                                        else 
                                        if (Integer.parseInt(data.getString("Estados_id")) == 2) {

                                            out.print("Regular");

                                        } else 
                                        if (Integer.parseInt(data.getString("Estados_id")) == 3) {
                                            out.print("Malo");

                                        }

                                   %>
                                </font></td>
                            </tr>

                             <%  } %>

                                    <%
                                            }
                                            data.close();

                                        }catch (Exception e) {
                                            out.print("Error en la conexión con los registros. :( Intenta de nuevo!");
                                            e.printStackTrace();
                                        }

                                    %>
                                    </table>
                                    </br>
                            <center>
                                <a href="index.html">
                                    <img src="inicio.png" style="max-width:04%;width:auto;height:auto;">
                                </a>
                            </center>
                </div>
            </div>
        </div>
    </body>