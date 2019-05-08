<%-- index.jsp (proyecto DBJSP) --%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Verifica tu usuario y contraseña</title>
    <link href="estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body style="text-align: center">
    <div id="div1">
    	<h2>Verifica tu identidad</h2>
        <form method="post" action="insertarDatos.jsp">
     		<p>User</p> 
      	 	<input name="user">
     	 	<br>
    	  	<p>Password</p> 
    	  	<input type="password" name="contra">
   			<br>
      	  	<br>
      	  	<input type="submit" value="Log In">
		</form>
    </div>
</body>
</html>