<%@ page import="org.iesvdm.ejercicio_jsp.HelloServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Conversor</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
  <%
    double dolar = Double.parseDouble(request.getParameter("dolar"));
    Double euros = 0.0;

    if (dolar < 0) {
  %>

  <span>introduce números mayores que 0</span>

  <%
    } else {
      // Operación para pasar de dolar a euro
      euros = dolar * 0.95;
  %>

  <p>El cambio de <%= dolar%> dólares es: <%= euros%></p>
  <%
    }
  %>

</body>
</html>
