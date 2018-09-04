<%-- 
    Document   : Cliente
    Created on : 3/09/2018, 09:44:24 AM
    Author     : FABIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Clientes</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <a href="clientes.jsp">Volver</a>
        <div class="container well">
            <div align="center">
                <form action="ClientesServlet?action=insert" method="post">
                    <table>
                        <tr>
                            <th><label><b>Cedula:</b></label></th>
                            <th>
                                <input type="number" placeholder="Ingrese Cédula" class="form-control" name="cedula" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Nombre:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese Nombre" class="form-control" name="nombre" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Teléfono:</b></label></th>
                            <th>
                                <input type="tel" placeholder="Ingrese Télefono" class="form-control" name="telefono" required/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Email:</b></label></th>
                            <th>
                                <input type="email" placeholder="Ingrese Email" class="form-control" name="correo" required/>
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

