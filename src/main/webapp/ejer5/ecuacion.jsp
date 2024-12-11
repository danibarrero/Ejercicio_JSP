<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.RoundingMode" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ecuación Cuadrática</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <%
        String aStr = request.getParameter("a");
        String bStr = request.getParameter("b");
        String cStr = request.getParameter("c");

        if (aStr != null && !aStr.isEmpty() && bStr != null && !bStr.isEmpty() && cStr != null && !cStr.isEmpty()) {

            BigDecimal a = new BigDecimal(aStr);
            BigDecimal b = new BigDecimal(bStr);
            BigDecimal c = new BigDecimal(cStr);

            BigDecimal discriminante = b.multiply(b).subtract(new BigDecimal(4).multiply(a).multiply(c));

            if (discriminante.compareTo(BigDecimal.ZERO) >= 0) {

                BigDecimal raizDiscriminante = new BigDecimal(Math.sqrt(discriminante.doubleValue()));

                BigDecimal divisor = a.multiply(new BigDecimal(2));
                BigDecimal resultado1 = b.negate().add(raizDiscriminante).divide(divisor, 4, RoundingMode.HALF_EVEN);
                BigDecimal resultado2 = b.negate().subtract(raizDiscriminante).divide(divisor, 4, RoundingMode.HALF_EVEN);
    %>
                <p>La primera solución es: <%= resultado1 %> | La segunda solución es: <%= resultado2 %></p>

            <% } else { %>
                <p>No hay soluciones reales (discriminante negativo).</p>
            <% }

        } else { %>
            <span>Por favor, rellena todos los campos.</span>
        <% } %>
</body>
</html>
