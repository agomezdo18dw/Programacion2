<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html"%>
<%
	String codigo = request.getParameter("Codigo");
	String user = "root";
	String contra = "anboto";
	String conexionURL = "jdbc:mysql://localhost/";
	String database = "examen";
	String driverDB = "com.mysql.jdbc.Driver";
	try {
		Class.forName(driverDB);
	} catch (Exception ex) {
		System.out.println(ex.getMessage());
	}
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Eliminar articulo</title>
<link rel="stylesheet" href="../CSS/estilos.css" type="text/css">
</head>
<body>
	<%
	try {
		conn = DriverManager.getConnection(conexionURL + database, user, contra);
		st = conn.createStatement();
		int i=st.executeUpdate("delete from articulo where codigo='"+codigo+"'");
		%>
	<h4 id="correcto">Se ha eliminado el
		articulo correctamente</h4>
	<%
	} catch (Exception ex) {
		System.out.println(ex.getMessage());
	%>
	<h4 id="fail">No se puede eliminar el articulo correctamente, pruebe de nuevo.</h4>
	<%
	}
	%>
	<br>
	<a href="Index.jsp">Volver a la tabla articulos</a>
</body>
</html>