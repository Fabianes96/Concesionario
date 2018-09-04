<%-- 
    Document   : Ventas
    Created on : 3/09/2018, 09:44:06 AM
    Author     : FABIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar venta</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container well">
            <div align="center">
                <form action="VentasServlet?action=insert" method="post">
                    
                    <table>
                        <tr>
                            <th><label><b>Matricula:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese la matricula" class="form-control" name="matricula" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Cédula:</b></label></th>
                            <th>
                                <input type="number" placeholder="Ingrese la cédula" class="form-control" name="cedula" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Precio:</b></label></th>
                            <th>
                                <input type=number" placeholder="Ingrese el precio" class="form-control" name="precio" required/>
                            </th>
                        </tr>                        
                        <div class="break"></div>
                        </div>
                        <tr>
                            <td colspan="2">
                                <input class="btn icon-btn btn-success" type="submit" name="action" value="Insert">
                                <span class="glyphicon glyphicon-ok-sign"></span>
                                <input class="btn icon-btn btn-lg" type="reset" name="action" value="Reset">
                                <span class="glyphicon glyphicon-remove"></span>
                            </td>
                        </tr>
                    </table>    
                </form> 
            </div>
            <br>
        </div>
    </body>
</html>