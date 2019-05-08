<%-- index.jsp (proyecto DBJSP) --%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <title>Verifica tu usuario y contraseña</title>
    <link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body>
    <div id="div1">
        <h2>Bases de Datos con JSP</h2>
        <input type="submit" value="Insertar Datos" onclick="location.href='insertarDatos.jsp'">
        <br>
        <br>
        <input type="submit" value="Consultar Datos" onclick="location.href='consultarDatos.jsp'">
        <br>
        <br>
        <input type="submit" value="Modificar Datos" onclick="location.href='modificarDatos.jsp'">
        <br>
        <br>
        <input type="submit" value="Eliminar Datos" onclick="location.href='eliminarDatos.jsp'">
    </div>
</body>
</html>
