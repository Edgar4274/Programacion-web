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
    <body onload="alumnoDoc();">
        <%! public String usuario;
			public String control;
        %>
        <% usuario = request.getParameter("usuario");
			control = request.getParameter("control");
        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" onclick=""><i class="fa fa-plus-circle"></i> Agregar Materia  <i class="fa fa-caret-down"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a id="ex-sh" class="nav-link" href="#" onclick="examenDoc();"><i class="fa fa-files-o"></i> Examenes <i class="fa fa-caret-down"></i><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a id="gr-sh" class="nav-link" href="#" onclick="grupoDoc();"><i class="fa fa-users"></i> Grupos <i class="fa fa-caret-down"></i> <span class="sr-only">(current)</span></a>
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

			<div id="ex-show" class="panel-group" style="display: none;">

				<div  class="panel panel-info" >
					<div class="panel-heading">
						<h2>Examenes <span><a id="plus-ex"><i id="plus-fa" class="fa fa-plus-circle" ></i></a></span></h2>
					</div>
					<div class="panel-body">
						<div class="col-md-12" >

							<div class="container" id="examenes-field" >
							</div>
						</div>
					</div>
				</div>

				<div id="nuevo-ex-show" class="panel panel-success" style="display: none">
					<div class="panel-heading"><h4 style="color: #00cc33;"> + Nuevo examen</h4></div>
					<div class="panel-body">
						<div class="col-md-12" >
							<div class="container" id="nuevo-examenes-field" >
								<form action="#" method="post">
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputNombreEx">Nombre</label>
											<input type="text" class="form-control" id="inputNombreEx" placeholder="ej. Origenes de JAVA">
										</div>
										<div class="form-group col-md-4">
											<label for="inputState">Unidad</label>
											<select id="inputState" class="form-control">
												<option selected>Selecciona...</option>
												<option>.1.2.3.</option>
											</select>
										</div>
									</div>
									<button type="submit" class="btn btn-primary">Guardar</button>                          
								</form>
							</div>  
						</div>
					</div>
				</div>
			</div>
			<div id="gr-show" class="panel-group" style="display: none;">
				<div class="panel panel-info" >
					<div class="panel-heading">
						<h2>Grupos <span><a id="plus-gr"><i id="plus-fa" class="fa fa-plus-circle" ></i></a></span></h2>
					</div>
					<div class="panel-body">
						<div class="col-md-12" >
							<div class="container" id="grupos-field" >
							</div>
						</div>
					</div>
				</div>

				<div id="nuevo-gr-show" class="panel panel-success" style="display: none">
					<div class="panel-heading"><h4 style="color: #00cc33;"> + Nuevo grupo</h4></div>
					<div class="panel-body">
						<div class="col-md-12" >
							<div class="container" id="nuevo-grupos-field" >
								<form action="#" method="post">
									<div class="form-row">
										<div class="form-group col-md-4">
											<label for="inputNombreGr">Nombre</label>
											<input type="text" class="form-control" id="inputNombreGr" placeholder="ej. 1A, 7F, 1M, etc">
										</div>
										<div class="form-group col-md-4">
											<label for="inputCarrera">Carrera</label>
											<select id="inputCarrera" class="form-control">
												<option selected>Selecciona...</option>
												<option>.1.2.3.</option>
											</select>
										</div>
										<div class="form-group col-md-4">
											<label for="inputMateria">Materia</label>
											<select id="inputMateria" class="form-control">
												<option selected>Selecciona...</option>
												<option>.1.2.3.</option>
											</select>
										</div>
									</div>
									<button type="submit" class="btn btn-primary">Guardar grupo</button>                          
								</form>
							</div>  
						</div>
					</div>
				</div>				
			</div>





        </section>
</html>

