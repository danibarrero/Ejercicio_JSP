<%@ page import="java.util.Objects" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculadora</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <%
        Integer nota1 = Integer.valueOf(request.getParameter("nota1"));
        Integer nota2 = Integer.valueOf(request.getParameter("nota2"));
        Integer nota3 = Integer.valueOf(request.getParameter("nota3"));

        // Verificar que las notas no sean menores a 0
        if (nota1 < 0 || nota2 < 0 || nota3 < 0) {
    %>
    <span>No se pueden introducir números menores a 0.</span>
    <%
        } else {
            // Almacenar las notas
            Set<Integer> tamaño = new HashSet<Integer>();
            tamaño.add(nota1);
            tamaño.add(nota2);
            tamaño.add(nota3);

            // Inicializar la variable num
            Integer num = 0;

            // VALIDACIÓN FORMULARIO
            if (Objects.nonNull(nota1) && Objects.nonNull(nota2) && Objects.nonNull(nota3) && tamaño.size() >= 0) {
                num = (nota1 + nota2 + nota3) / tamaño.size();
    %>

            <p>El resultado es: <%= num %></p>

            <% } else { %>
                <span>No Funciona</span>
             <% }
        } %>
</body>
</html>
