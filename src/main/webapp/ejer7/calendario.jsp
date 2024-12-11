<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calendario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>
    <%
        String mesStr = request.getParameter("mes");
        Integer año = Integer.valueOf(request.getParameter("año"));
        // Lista de meses
        String[] meses = {"enero", "febrero", "marzo", "abril", "mayo", "junio",
                "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};

        Integer mes = null;
        for (int i = 0; i < meses.length; i++) {
            if (mesStr.trim().toLowerCase().equals(meses[i])) {
                mes = i;
                break;
            }
        }

        if (mes != null && mes >= 0 && mes <= 11) {
            Calendar calendar = Calendar.getInstance();
            calendar.setFirstDayOfWeek(Calendar.MONDAY); // Semana empieza el lunes
            calendar.set(año, mes, 1);

            int primerDia = calendar.get(Calendar.DAY_OF_WEEK); // Día de la semana del 1er día del mes
            int espaciosVacios = (primerDia == Calendar.SUNDAY) ? 6 : primerDia - Calendar.MONDAY;

            int diasMes = calendar.getActualMaximum(Calendar.DAY_OF_MONTH); // Días del mes
            String[] diasSemana = {"L", "M", "X", "J", "V", "S", "D"};
    %>
    <h3>Calendario de <%= mesStr.substring(0, 1).toUpperCase() + mesStr.substring(1) %> de <%= año %></h3>
    <table border="1">
        <tr>
            <% for (String dia : diasSemana) { %>
            <th><%= dia %></th>
            <% } %>
        </tr>
        <tr>
            <%
                // Generar celdas vacías antes del primer día
                for (int i = 0; i < espaciosVacios; i++) {
                    out.print("<td></td>");
                }

                // Llenar los días del mes
                for (int dia = 1; dia <= diasMes; dia++) {
                    out.print("<td>" + dia + "</td>");
                    if ((espaciosVacios + dia) % 7 == 0) {
                        out.print("</tr><tr>");
                    }
                }

                // Rellenar los espacios vacíos al final del mes
                int sobrantes = (espaciosVacios + diasMes) % 7;
                for (int i = 0; i < (7 - sobrantes) % 7; i++) {
                    out.print("<td></td>");
                }
            %>
        </tr>
    </table>
        <% } else { %>
            <p>El mes introducido no es válido</p>
        <% } %>
</body>
</html>
