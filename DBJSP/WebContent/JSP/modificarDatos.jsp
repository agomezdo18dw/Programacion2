<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Modifique los datos</title>
    <link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body>
    <div id="div1">
        <h2>Bases de Datos con JSP</h2>
        <form method="post" action="verificarModificar.jsp">
        	<h3>Credenciales para accerder a la base de datos</h3>
        	Usuario:
        	<input name="user">
        	Contrase�a:
        	<input name="contra" type="password">
        	<h3>Datos a modificar</h3>
            Nombre:
            <input name="nombre">
            Apellido:
            <input name="apellido">
            <br>
            <br>
            Edad:
            <input name="edad" type="number">
            ID:
            <input name="ID" type="number">
            <br>
            <br>
            <input type="submit" value="Modificar Datos">
        </form>
    </div>
</body>
</html>