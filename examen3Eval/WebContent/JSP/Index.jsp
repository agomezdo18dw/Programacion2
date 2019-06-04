<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html"%>
<%
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
<title>Examen</title>
<link rel="stylesheet" href="../CSS/estilos.css" type="text/css">
</head>
<body>
	<div>
		<h1>Tabla articulos</h1>
		<table>
			<tr id="titulos">
				<td><b>Codigo</b></td>
				<td><b>Descripcion</b></td>
				<td><b>Precio de compra</b></td>
				<td><b>Precio de venta</b></td>
				<td><b>Stock</b></td>
				<td><b>Eliminar articulo</b></td>
			</tr>
			<%
				try {
					conn = DriverManager.getConnection(conexionURL + database, user, contra);
					st = conn.createStatement();
					String sql = "select * from articulo";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("codigo")%></td>
				<td><%=rs.getString("descripcion")%></td>
				<td><%=rs.getString("precio_compra")%></td>
				<td><%=rs.getString("precio_venta")%></td>
				<td><%=rs.getString("stock")%></td>
				<td><a
					href="eliminarArticulo.jsp?Codigo=<%=rs.getString("codigo")%>">Eliminar</a></td>
			</tr>
			<%
				}
				} catch (Exception ex) {
			%>
			<font color="red"> <%
 	out.println("No se puede conectar con la base de datos");
 %>
			</font>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>