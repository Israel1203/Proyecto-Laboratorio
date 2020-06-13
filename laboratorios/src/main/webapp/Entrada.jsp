<%-- 
    Document   : Entrada
    Created on : 11 jun. 2020, 13:41:35
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Estilos/Estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Entrada</title>
    </head>
    <body background= "imagen_back.png">
        <div class="contenedor">
            <div class="contenedor-servicios">
                <div class="servicio violeta">
        <h1><strong><center>Materiales de Laboratorio</center></strong></h1>
		
		<br><br/>


        <form name="Registro" action="data.jsp" method="get">
		
<center>
            <p><strong>Escribe tus Materil y una descripción </strong></p>
			
            <textarea name="Entrada" rows="60" cols="100" wrap="hard" placeholder="Inicia tu escritura"></textarea>

				
            <p>Selecciona el nivel de estado del material:</p>

            <img src="ok.png" style="max-width:03%;width:auto;height:auto;"><input type="radio" id="1" name="Estado" value="1">
            <label for="male">Bueno</label><br>
			<br/>

            <img src="reg.png" style="max-width:02.6%;width:auto;height:auto;"><input type="radio" id="2" name="Estado" value="2">
            <label for="female">Regular</label><br>
			<br/>
            <img src="mal.png" style="max-width:02.6%;width:auto;height:auto;"><input type="radio" id="3" name="Estado" value="3">
            <label for="other">Malo</label><br>
			<br/>

			
            </center>
<center>
            <p></p>
            <input type="submit" value="Ingresar entrada">
</center>
        </form>

		
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