<%-- 
    Document   : profesor
    Created on : 12/12/2018, 03:08:48 AM
    Author     : edal_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profesor</title>
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
        <%! public String usuario;%>
        <% usuario = request.getParameter("usuario");%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" onclick=""><i class="fa fa-plus-circle"></i> Agregar materia  <i class="fa fa-caret-down"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa fa-files-o"></i> Agregar examen <i class="fa fa-caret-down"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa fa-users"></i> Grupos <i class="fa fa-caret-down"></i> <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                    <ul id="sal">
                        <li><a href="#" id="ic"><i class="fa fa-user"></i></a></li>
                        <li><div><%= usuario%></div></li>
                        <li><div id="men">
                                <a href="http://localhost:8080/ProyectoFinal/"><div>salir</div></a>
                            </div></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section style="padding-top: 25px;">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
						<div class="jumbotron">
							<h2>Escritorio</h2>
						</div>                    
					</div>
					<div class="col-md-8">
						<div class="container">
							<h2>Examenes</h2>
						</div>                    
					</div>

				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="container">
							<h4>Alumnos</h4>
						</div>                    
					</div>
				</div>
			</div>
        </section>
</html>

