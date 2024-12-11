<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabla de multiplicar</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"></head>
</head>
<body>
    <h3>Tabla de Multiplicar</h3>
    <table>
        <thead>
        <tr>
            <th>Número</th>
            <th>Multiplicado</th>
            <th>Resultado</th>
        </tr>
        </thead>
        <tbody>
        <%
            String numeroStr = request.getParameter("num");
            if (numeroStr != null && !numeroStr.isEmpty()) {
                try {
                    Integer numero = Integer.parseInt(numeroStr);
                    for (int i = 0; i < 10; i++) {
        %>
        <tr>
            <td><%= numero %></td>
            <td><%= i+1 %></td>
            <td><%= numero * (i+1) %></td>
        </tr>
        <%
            }
        } catch (NumberFormatException e) {
        %>
        <tr>
            <td colspan="3">El numero que has introducido no es valido</td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="3">Introduce un numero</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    </body>
</html>
