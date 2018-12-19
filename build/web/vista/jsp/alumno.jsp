<%-- 
    Document   : alumno
    Created on : 12/12/2018, 12:23:37 AM
    Author     : edal_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumno</title>
        <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <script type="text/javascript" src="../../js/jquery.js"></script>
        <script type="text/javascript" src="../../js/funciones.js"></script>
        <style>
            #sal li{
                display: block;
                color: white;
            }
            a{
                color: white;
            }
            #men{
                color: #fff;
            }
            #men div:hover{
                display: inline;
                padding-left: 0px;
                background: black;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <%! public String usuario;
            public String control;
        %>
        <% usuario = request.getParameter("usuario");
           control = request.getParameter("control");
        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><h2><i class="fa fa-graduation-cap"></i></h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" onclick="materiasAl()">Agregar grupo <i class="fa fa-caret-down" onclick="materiasAl()"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#" onclick="materiasDis()">Mis materias <i class="fa fa-caret-down"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Materias disponibles <i class="fa fa-caret-down"></i> <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                    <ul id="sal">
                        <li><a href="#" id="ic"><i class="fa fa-user"></i></a></li>
                        <li><div><%= usuario%></div></li>
                        <li><div id="men">
                                <a href="http://localhost:8080/examenes_final/"><div>salir</div></a>
                            </div></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section style="padding-top: 25px;">
            <div class="row">
                <div class="col-md-12">
                    <input type="hidden" class="form-control" value="<%= control%>" id="ctrl">
                    <div class="jumbotron">
                        <h2>Bienvenido</h2>
                    </div>                    
                </div>
            </div>
        </section>
</html>
