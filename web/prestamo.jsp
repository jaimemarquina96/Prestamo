<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:19:20
    Author     : DAW203
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Banco Bosco</h1>
        <h2>Solicitud de préstamos</h2>
        <% ArrayList<String> meses = ( ArrayList<String> ) request.getAttribute("meses"); %>
        <form action="prestamo" method="post">
            <label for="nombre">Nombre:</label><input type="text" name="nombre" id="nombre"><br><br>
            <label for="cantidad">Cantidad:</label><input type="text" name="cantidad" id="cantidad"><br><br>
            <label for="interes">Interés:</label><input type="text" name="interes" id="interes"><br><br>
            <label for="tiempo">Tiempo:</label>
            <select>
                <% for(int i=0; i<meses.size(); i++){ %>
                <option value="<%=meses.get(i)%>"><%=meses.get(i)%></option>
                <% } %>
            </select>
            <input type="submit" value="Consultar">
        </form>
        
    </body>
</html>
