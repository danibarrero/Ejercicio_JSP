<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 8</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <form method="post" action="configurador.jsp" onsubmit="validar()">
        <h3>Configurador del vehículo</h3>

        <div>
            <label for="tapiceria">Elige el color de la tapicería: </label>
            <select id="tapiceria" name="tapiceria">
                <option value="">Selecciona...</option>
                <option value="blanco">Blanco</option>
                <option value="negro">Negro</option>
                <option value="berenjena">Berenjena</option>
            </select>
        </div>

        <div>
            <label for="moldura">Elige el material de las molduras:</label>
            <select id="moldura" name="moldura">
                <option value="">Selecciona...</option>
                <option value="madera">Madera</option>
                <option value="carbono">Carbono</option>
            </select>
        </div>

        <input type="submit" value="Ver Configuración">
    </form>

    <script>
        function validar() {
            let tapiceria = document.getElementById("tapiceria").value;
            let moldura = document.getElementById("moldura").value;

            if (tapiceria === "" || moldura === "") {
                alert("Elige la tapicería y la moldura");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
