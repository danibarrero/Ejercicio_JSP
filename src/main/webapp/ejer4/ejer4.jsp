<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 10/12/2024
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 4</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <form method="post" action="conversor.jsp" onsubmit="validar()">
        <h3>Conversor</h3>

        <div>
            <label for="dolar">Introduce los dolares: </label>
            <input id="dolar" type="text" name="dolar">
        </div>

        <input type="submit" value="Conversor">
    </form>

    <script>
        function validar() {
            let dolar = document.getElementById("dolar").value;
            let euros = document.getElementById("euros").value;

            // Validar que sean mayor que 0
            if (dolar < 0) {
                alert("Tiene que ser mayor que 0");
                return false;
            } else {
                return true;
            }
        }
    </script>
</body>
</html>
