<%-- 
    Document   : vehiculos
    Created on : 3/09/2018, 10:11:06 AM
    Author     : FABIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehiculos</title>
    </head>
    <body>
        <a href="index.jsp">Índice</a>
        <a href="VehiculosServlet?action=list">List Vehículos</a>
        
        <h1>Vehiculos</h1>
        <a href="Vehiculo.jsp">Ingresar Vehiculo</a>
        <c:forEach var="b" items="${vehiculos}">
           |${b.matricula}| |${b.marca}| |${b.modelo}| |${b.precio}|  
           <a onclick="return confirm('Esta seguro?')" href="VehiculosServlet?action=delete&id=${b.matricula}">Delete</a>
           <hr/>
        </c:forEach>  
           <a onclick="" href="VehiculosServlet?action=search&id=${b.matricula}">Buscar</a>
        
    </body>
</html>
