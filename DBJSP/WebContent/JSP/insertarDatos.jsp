<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insertar Datos</title>
	<link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
	try {
		String conexionURL = "jdbc:mysql://localhost/pruebaJSP";
		String driverDB = "com.mysql.jdbc.Driver";
		String user = request.getParameter("user");
		String contra = request.getParameter("contra");
		Connection connection = null;
		Class.forName(driverDB).newInstance();
		connection = DriverManager.getConnection(conexionURL, user, contra);
		if (!connection.isClosed()){
			%>
			<font size="" color="green"></b>
			<% 
			out.println("Successfully connected to MySQL server using TCP/IP...");
			connection.close();
			%>
			</font>
			<%
		}
	} catch(Exception ex){
		%>
		<font size="+3" color="red"></b>
		<%
		out.println("Unable to connect to database.");
	}
	%>
	</font>
</body>
</html>