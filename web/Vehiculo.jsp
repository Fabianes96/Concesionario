<%-- 
    Document   : Vehiculo
    Created on : 3/09/2018, 09:43:43 AM
    Author     : FABIAN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar vehiculo</title>

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
                
                <form action="VehiculosServlet?action=insert" method="post">
                    <table>
                        <tr>
                            <th><label><b>Matricula:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese la matricula" class="form-control" name="matricula" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Marca:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese la marca" class="form-control" name="marca" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Modelo:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese el modelo" class="form-control" name="modelo" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Costo:</b></label></th>
                            <th>
                                <input type="number" placeholder="Ingrese el precio" class="form-control" name="precio" required/>
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