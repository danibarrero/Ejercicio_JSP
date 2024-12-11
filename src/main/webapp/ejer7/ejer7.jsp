<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 7</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"></head>
</head>
<body>
    <form method="post" action="calendario.jsp" onsubmit="validar()">
        <h3>Calendario</h3>

        <div>
            <label for="mes">Introduce el nombre del mes: </label>
            <input id="mes" type="text" name="mes">
        </div>

        <div>
            <label for="año">Introduce el año: </label>
            <input id="año" type="text" name="año">
        </div>

        <input type="submit" value="Crear">
    </form>

    <script>
        function validar() {
            let mes = document.getElementById("mes").value.trim().toLowerCase();
            let año = document.getElementById("año").value;

            if (mes === "" || año.length !== 4 || isNaN(año)) {
                alert("Introduce un mes válido y un año con 4 dígitos");
                return false;
            }

            // Validar que el mes esté dentro de los 12 posibles
            let mesesValidos = ["enero", "febrero", "marzo", "abril", "mayo", "junio",
                "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
            if (!mesesValidos.includes(mes)) {
                alert("Introduce un mes válido (enero - diciembre)");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
