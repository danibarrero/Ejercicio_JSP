<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 11/12/2024
  Time: 0:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 10</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <h2>Máquina de Helados</h2>

    <form method="post" action="helado.jsp" onsubmit="validar()">
        <label for="chocolate">Helado de chocolate: </label>
        <input type="text" id="chocolate" name="chocolate" min="0" max="100">

        <label for="fresa">Helado de fresa: </label>
        <input type="text" id="fresa" name="fresa" min="0" max="100">

        <label for="vainilla">Helado de vainilla: </label>
        <input type="text" id="vainilla" name="vainilla" min="0" max="100">

        <input type="submit" value="Generar helado">
    </form>

    <script>
        function validar() {
            let chocolate = parseInt(document.getElementById("chocolate").value);
            let fresa = parseInt(document.getElementById("fresa").value);
            let vainilla = parseInt(document.getElementById("chocolate").value);

            // Verifica si están vacíos o si tienen valores que no son válido
            if (isNaN(chocolate) || isNaN(fresa) || isNaN(vainilla)) {
                alert("Introcuce número validos");
                return false;
            }

            // Verifica si los porcentajes están dentro del rango
            if (chocolate < 0 || chocolate > 100 || fresa < 0 || fresa > 100 || vainilla < 0 || vainilla > 100) {
                alert("Los porcentajes tiene estar entre 0 y 100");
                return false;
            }

            // Verifica si la suma no es mayor que 100
            if (chocolate + fresa + vainilla > 100) {
                alert("La suma de los porcentajes tiene ser menor o igual a 100");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
