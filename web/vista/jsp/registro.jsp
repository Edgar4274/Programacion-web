<%-- 
    Document   : Registro
    Created on : 5/12/2018, 12:37:38 AM
    Author     : edal_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
    </head>
    <body>
        <br>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="jumbotron">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="" method="POST">
                                <table class="table" style="width: 70%;">
                                <tr>
                                    <td><h2>::Registro Usuario::</h2></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" id="name" placeholder="Nombre"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" id="paterno" placeholder="Apellido paterno"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" id="name" placeholder="Apellido materno"></td>
                                </tr>
                                <tr>
                                    <td><input type="email" class="form-control" id="name" placeholder="email"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <select class="custom-select">
                                            <option>Administracion</option>
                                            <option>Contador</option>
                                            <option>Informatica</option>
                                            <option>Sistema Computacion</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                                <br>
                                <input type="submit" value="Guardar" class="btn btn-primary"><input type="reset" value="Cancelar" class="btn btn-danger">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </body>
</html>
