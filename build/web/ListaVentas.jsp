<%-- 
    Document   : ListaVentas
    Created on : 3/09/2018, 02:34:29 PM
    Author     : FABIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de ventas</title>
    </head>
    <body>
        <a href="index.jsp">Índice</a>
        <a href="VentasServlet?action=list">List Ventas</a>
        <h1>Ventas</h1>
        <c:forEach var="c" items="${ListaVentas}">
           |${c.ventasPK.cedula}||${c.ventasPK.matricula}||${c.precio}|  
           <a onclick="return confirm('Esta seguro?')" href="VentasServlet?action=delete&id=${c.ventasPK}">Delete</a>
           <hr/>
        </c:forEach>        
        
    </body>
</html>