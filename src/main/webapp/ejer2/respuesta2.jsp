<%@ page import="java.util.Objects" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 25/11/2024
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <%
        String nombre = request.getParameter("nombre");
        String idioma = request.getParameter("idioma");

        Set<String> idiomas = Set.of("es", "en", "it", "nl");
        String saludo = "";

        // VAVLIDACIÓN FORMULARIO
        if (Objects.nonNull(nombre) && nombre.length() > 2 && Objects.nonNull(idioma)) {
            saludo = switch (idioma) {
                case "es" -> "Hola " + nombre;
                case "en" -> "Hello " + nombre;
                case "it" -> "Ciao " + nombre;
                case "nl" -> "Hallo " + nombre;
                default -> "Idioma " + idioma + " no soportado";
            };
    %>

    <span><%= saludo %></span>

    <% } else { %>
        <span>No Funciona</span>
    <% } %>
</body>
</html>