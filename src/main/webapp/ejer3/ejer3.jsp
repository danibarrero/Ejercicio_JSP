<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 3</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <form method="post" action="calculadora.jsp" onsubmit="validar()">
        <h3>Notas</h3>

        <div>
            <label for="nota1">Introduce la 1 nota: </label>
            <input id="nota1" type="text" name="nota1">
        </div>

        <div>
            <label for="nota2">Introduce la 2 nota: </label>
            <input id="nota2" type="text" name="nota2">
        </div>

        <div>
            <label for="nota3">Introduce la 3 nota: </label>
            <input id="nota3" type="text" name="nota3">
        </div>

        <input type="submit" value="Calcular">
    </form>

    <script>
        function validar() {
            let nota1 = document.getElementById("nota1").value;
            let nota2 = document.getElementById("nota2").value;
            let nota3 = document.getElementById("nota3").value;

            // Validar que las notas sean mayores a 0
            if (nota1 < 0 || nota2 < 0 || nota3 < 0) {
                alert("Las notas deben ser mayores que 0");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
