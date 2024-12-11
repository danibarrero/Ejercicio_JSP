<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 5</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <form method="post" action="ecuacion.jsp" onsubmit="validar()">
        <h3>Ecuación</h3>

        <div>
            <label for="a">Introduce a:</label>
            <input id="a" type="text" name="a">
        </div>

        <div>
            <label for="b">Introduce b:</label>
            <input id="b" type="text" name="b">
        </div>

        <div>
            <label for="c">Introduce c:</label>
            <input id="c" type="text" name="c">
        </div>

        <input type="submit" value="Solución">
    </form>

    <script>
        function validar() {
            let a = document.getElementById("a").value;
            let b = document.getElementById("b").value;
            let c = document.getElementById("c").value;

            if (a === "" | b === "" | c === "") {
                alert("Introduce todos los valores")
                return false;
            } else {
                return true;
            }
        }
    </script>

</body>
</html>
