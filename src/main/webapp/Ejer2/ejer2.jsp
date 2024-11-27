<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 25/11/2024
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 2</title>
</head>
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
        // let lang = document.getElementById("idioma");
        // let boton = document.querySelector("button[type='submit']");
        // boton.addEventListener("click", (e) => {
        //     if (lang.value == "def") {
        //         e.preventDefault();
        //     }
        // })

        function validate(){
            let idioma = document.getElementById("idioma").value;
            if(idioma == "def"){
                alert('rellena el campo :)');
            }
            else{ formulario.submit();
            }
        };
    </script>
</body>
</html>
