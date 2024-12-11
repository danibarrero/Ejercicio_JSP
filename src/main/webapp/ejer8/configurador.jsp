<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Configurador</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <%
        String tapiceria = request.getParameter("tapiceria");
        String moldura = request.getParameter("moldura");

        if (tapiceria == null || moldura == null || tapiceria.isEmpty() || moldura.isEmpty()) {
            out.println("Elige la tapicería y la moldura");
        } else {
    %>
            <p>Has Selecionado: </p>
            <p>Tapicería: <%=tapiceria%></p>
            <p>Moldura: <%=moldura%></p>
    <%
            if ("blanco".equals(tapiceria) && "madera".equals(moldura)) {
    %>
                <img src="./img/Blanco_Madera.jpg" width="600px">
                <% } else if ("blanco".equals(tapiceria) && "carbono".equals(moldura)) { %>
                <img src="./img/Blanco_Carbono.jpg" width="600px">
                <% } else if ("negro".equals(tapiceria) && "madera".equals(moldura)) { %>
                <img src="./img/Negro_Madera.jpg" width="600px">
                <% } else if ("negro".equals(tapiceria) && "carbono".equals(moldura)) { %>
                <img src="./img/Negro_Carbono.jpg" width="600px">
                <% } else if ("berenjena".equals(tapiceria) && "madera".equals(moldura)) { %>
                <img src="./img/Berenjena_Madera.jpg" width="600px">
                <% } else if ("berenjena".equals(tapiceria) && "carbono".equals(moldura)) { %>
                <img src="./img/Berenjena_Carbono.jpg" width="600px">
            <% } else { %>
                <p>No se ha seleccionado una opción válida.</p>
            <% }
        }
        %>
</body>
</html>
