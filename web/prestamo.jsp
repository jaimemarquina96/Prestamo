<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:19:20
    Author     : DAW203
--%>

<%@page import="modelo.Prestamo"%>
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
        <% ArrayList<String> meses = ( ArrayList<String> ) request.getAttribute("meses"); 
            String importePrestamo, cantidad, tiempo, interes;
            String nombre = (String) request.getAttribute("nombre");
            Prestamo prest = (Prestamo) request.getAttribute("prestamo");
            
            if (nombre == null) {
                nombre = "";
            }
            
            if (prest == null) {
                importePrestamo = "";
                cantidad = "0";
                interes = "0";
                tiempo = "12";
            } else {
                importePrestamo = String.valueOf(prest.getImportePrestamo());
                cantidad = String.valueOf(prest.getCantidad());
                interes = String.valueOf(prest.getInteres());
                tiempo = String.valueOf(prest.getTiempo());
            }
        %>
        <form action="prestamo" method="post">
            <label for="nombre">Nombre:</label><input type="text" value="<%=nombre%>" name="nombre" id="nombre"><br><br>
            <label for="cantidad">Cantidad:</label><input type="text" value="<%=cantidad%>" name="cantidad" id="cantidad"><br><br>
            <label for="interes">Interés:</label><input type="text" value="<%=interes%>" name="interes" id="interes"><br><br>
            <label for="tiempo">Tiempo:</label>
            <select name="tiempo" id="tiempo">
                <% for (int i = 0; i<meses.size(); i++) {
                            String selected = "";
                            if (tiempo.equals(meses.get(i))) {
                                selected = "selected";
                            }
                    %>
                <option value="<%=meses.get(i)%>" <%=selected%> ><%=meses.get(i)%></option>
                <% } %>
            </select>
            <input type="submit" value="Consultar">
            
            <% if(importePrestamo != ""){ %>
                <h1>Importe Total del Préstamo:<%=importePrestamo%></h1>
            <% } %>
        </form>
            
    </body>
</html>
