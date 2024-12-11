<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 10/12/2024
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 6</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"></head>
</head>
<body>
    <form method="post" action="tabla.jsp" onsubmit="validar()">
        <h3>Tabla de Multiplicar</h3>

        <div>
            <label for="num">Introduce un número: </label>
            <input id="num" type="text" name="num">
        </div>

        <input type="submit" value="Calcular">
    </form>

    <script>
        function validar(){
            let num = document.getElementById("num").value;

            if (num === "" | num < 0) {
                alert("Introduce un válido")
                return false;
            } else {
                return true;
            }
        }
    </script>
</body>
</html>
