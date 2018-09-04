<%-- 
    Document   : clientes
    Created on : 3/09/2018, 10:10:34 AM
    Author     : FABIAN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <a href="index.jsp">Índice</a>
        <a href="ClientesServlet?action=list">List Clientes</a>
        <h1>Clientes</h1>
        <a href="Cliente.jsp">Ingresar Clientes</a>
        <hr/>
        <c:forEach var="a" items="${clientes}">
           |${a.cedula}| |${a.nombre}| |${a.telefono}| |${a.correo}|  
           <a onclick="return confirm('Esta seguro?')" href="ClientesServlet?action=delete&id=${a.cedula}">Delete</a>
           <hr/>
        </c:forEach>        
        
    </body>
</html>
