<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html"%>
        <%
        String user = request.getParameter("user");
		String contra = request.getParameter("contra");
		String conexionURL = "jdbc:mysql://localhost/pruebaJSP";
		String driverDB = "com.mysql.jdbc.Driver";
		try {
			Class.forName(driverDB);
		} catch(ClassNotFoundException e){
		%>
		<font color="red">
		<%
			out.println("No se puede conectar con la base de datos");
		%>
		</font>
		<%
		}
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		%>
		<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Verificacion insertar datos</title>
    <link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body>
    <div id="div1">
        <h2>Verificacion consulta datos</h2 >
		<table>
			<tr>
				<td><b>ID</b></td>
				<td><b>Nombre</b></td>
				<td><b>Apellido</b></td>
				<td><b>Edad</b></td>
			</tr>
		<%
		try{
			conn = DriverManager.getConnection(conexionURL, user, contra);
			st = conn.createStatement();
			String sql = "select * from personas";
			rs = st.executeQuery(sql);
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString("idPersonas")%></td>
			<td><%=rs.getString("Nombre")%></td>
			<td><%=rs.getString("Apellido")%></td>
			<td><%=rs.getString("Edad")%></td>
		</tr>
		<%			}
		} catch (Exception ex){
			
		}
		%>
		</table>
		<br>
		<form method="post" action="index.jsp">
			<input type="button" value="Volver" onclick="location.href='index.jsp'">
		</form>
    </div>
</body>
</html>