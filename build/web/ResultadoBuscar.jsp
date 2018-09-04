<%-- 
    Document   : ResultadoBuscar
    Created on : 3/09/2018, 09:52:22 PM
    Author     : FABIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de busqueda</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="b" items="${ResultadoBuscar}">
           |${b}}|  
           <a onclick="return confirm('Esta seguro?')" href="VehiculosServlet?action=delete&id=${b.matricula}">Delete</a>
           <hr/>
        </c:forEach>  
           <a onclick="" href="VehiculosServlet?action=search&id=${b.matricula}">Buscar</a>
    </body>
</html>
