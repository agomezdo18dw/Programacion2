<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Verificacion insertar datos</title>
    <link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body>
    <div id="div1">
        <h2>Verificacion insertar datos</h2>
        <%
        String user = request.getParameter("user");
		String contra = request.getParameter("contra");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
		try {
			String conexionURL = "jdbc:mysql://localhost/";
			String database = "pruebajsp";
			String driverDB = "com.mysql.jdbc.Driver";
			Connection conn = null;
			Class.forName(driverDB).newInstance();
			conn = DriverManager.getConnection(conexionURL+database, user, contra);
			Statement st = conn.createStatement();
			int i=st.executeUpdate("insert into personas(Nombre,Apellido,Edad)values('"+nombre+"','"+apellido+"','"+edad+"')");
			%>
			<font size="" color="green">
			<%
			out.println("Se ha agregado a "+nombre+" correctamente");
			%>
			</font>
			<%
		} catch(Exception ex){
		%>
		<font color="red">
		<%
			out.println("No se puede conectar con la base de datos");
		%>
		</font>
		<%
		}
		%>
		<form method="post" action="index.jsp">
			<input type="button" value="Volver" onclick="location.href='index.jsp'">
		</form>
    </div>
</body>
</html>