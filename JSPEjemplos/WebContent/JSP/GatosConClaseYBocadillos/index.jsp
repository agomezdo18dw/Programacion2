<%-- index.jsp (proyecto GatosConClaseYBocadillos) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="daw1.Gato2"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Gatos con clase y bocadillos</title>
		  <link rel="stylesheet" type="text/css" href="estilos.css" />
    </head>
    <body>
      <h1>Gatos con clase</h1>
      <hr>
      <%
        Gato2 g1 = new Gato2("Pepe", "gato.jpg");
        Gato2 g2 = new Gato2("Garfield", "garfield.jpg");
        Gato2 g3 = new Gato2("Tom", "tom.png");
        out.println(g1);
        out.println(g2);
        out.println(g3);
        out.println(g1.maulla());
        out.println(g2.come("sardinas"));
      %>
    </body>
</html>