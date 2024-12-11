<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"></head>
<body>
    <form method="post" action="respuesta2.jsp">
        <h3>Saludo en varios idiomas</h3>

        <div>
            <label for="nombre">Introduzca nombre: </label>
            <input id="nombre" type="text" name="nombre"/>
        </div>

        <div>
            <label for="idioma">Selecciona idioma</label>
            <select id="idioma" name="idioma" required>
                <option value="">Sin selecionar</option>>
                <option value="es">Español</option>
                <option value="en">Ingles</option>
                <option value="it">Italiano</option>
                <option value="nl">Holandés</option>
            </select>
        </div>

        <input type="submit" value="Enviar">
    </form>

    <script>
        function validate() {
            let idioma = document.getElementById("idioma").value;
            if(idioma === "") {  // Validamos si el valor del select está vacío
                alert('Rellena el campo : ');
                return false;  // Impide el envío del formulario
            } else {
                return true;  // Permite el envío del formulario
            }
        }
    </script>
</body>
</html>
