<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Generador de Helado</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <h2>Helado Creado</h2>

    <%
        String chocolateStr = request.getParameter("chocolate");
        String fresaStr = request.getParameter("fresa");
        String vainillaStr = request.getParameter("vainilla");

        int chocolate = 0, fresa = 0, vainilla = 0;
        boolean valido = true;

        if (chocolateStr != null && !chocolateStr.isEmpty() && chocolateStr.matches("\\d+")) {
            chocolate = Integer.parseInt(chocolateStr);
        } else {
    %>
            <span>Introduce un número válido para el helado de chocolate</span>
    <%
            valido = false;
        }

        if (fresaStr != null && !fresaStr.isEmpty() && fresaStr.matches("\\d+")) {
            fresa = Integer.parseInt(fresaStr);
        } else {
    %>
            <span>Introduce un número válido para el helado de fresa</span>
    <%
            valido = false;
        }

        if (vainillaStr != null && !vainillaStr.isEmpty() && vainillaStr.matches("\\d+")) {
            vainilla = Integer.parseInt(vainillaStr);
        } else {
    %>
            <span>Introduce un número válido para el helado de vainilla</span>
    <%
            valido = false;
        }

        if (valido && (chocolate < 0 || chocolate > 100 || fresa < 0 || fresa > 100 || vainilla < 0 || vainilla > 100)) {
    %>
            <span>El porcentaje no está entre 0 y 100</span>
    <%
            valido = false;
        }

        if (valido && (chocolate + fresa + vainilla > 100)) {
    %>
        <span>La suma de todos los porcentajes tiene que ser menor o igual a 100</span>

    <%
            valido = false;
        }

        if (valido) {
    %>

    <div style="border: 2px solid #000; width: 300px; height: 300px; position: relative;">
        <% if (chocolate > 0) { %>
        <div style="background-color: brown; height: <%= chocolate * 3 %>px; width: 100%; position: absolute; : 0;">
            <p style="text-align: center; color: white; margin: 0;">Chocolate: <%= chocolate %>%</p>
        </div>
        <% } %>

        <% if (fresa > 0) { %>
        <div style="background-color: pink; height: <%= fresa * 3 %>px; width: 100%; position: absolute; : <%= chocolate * 3 %>px;">
            <p style="text-align: center; color: white; margin: 0;">Fresa: <%= fresa %>%</p>
        </div>
        <% } %>

        <% if (vainilla > 0) { %>
        <div style="background-color: beige; height: <%= vainilla * 3 %>px; width: 100%;
                position: absolute; : <%= (chocolate + fresa) * 3 %>px;">
            <p style="text-align: center; color: black; margin: 0;">Vainilla: <%= vainilla %>%</p>
        </div>
        <% } %>
    </div>
    <% } %>

    <br>
    <input type="submit" value="Volver hacer otro helado" src="ejer10.jsp">
</body>
</html>
