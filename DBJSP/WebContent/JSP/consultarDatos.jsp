<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Consulte los datos</title>
    <link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body>
    <div id="div1">
        <h2>Bases de Datos con JSP</h2>
        <form method="post" action="verificarConsultar.jsp">
        	<h3>Credenciales para accerder a la base de datos</h3>
        	Usuario:
        	<input name="user">
        	<br>
        	<br>
        	Contraseña:
        	<input name="contra" type="password">
            <br>
            <br>
            <input type="submit" value="Consultar Datos">
        </form>
    </div>
</body>
</html>