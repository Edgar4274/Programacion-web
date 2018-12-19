var logi;
var ajax;
var materia;
var grupo;
var examen;
var respuesta;
var pregunta;
var alumnos;

function login() {
	document.getElementById("error").innerHTML = "";
	var f = document.querySelector("#form-login");
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = procesarLogin;
	ajax.open("GET", "peticion/peticionLogin.jsp?control=" + f.control.value + "&pass=" + f.pass.value, true);
	ajax.send();
}
function procesarLogin() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('{');
		var fin = respuesta.indexOf('}');
		var contenido = respuesta.substring(inicio, fin + 1);
		if (contenido == "{}") {
			document.getElementById("error").innerHTML = "<p style='color: red; fontsize: 18px;'>Usurio o contraseña incorrecta</p>";
		} else {
			contenido = "[" + contenido + "]";
			logi = JSON.parse(contenido);
			var rol = "";
			var usu = "";
			var con = "";
			for (var i = 0; i < logi.length; i++) {
				con = logi[i].id;
				rol = logi[i].rol;
				usu = logi[i].nombre;
			}

			if (rol == "alum") {
				window.location.href = "http://localhost:8080/examenes_final/vista/jsp/alumno.jsp?usuario=" + usu + "&control=" + con;
			}
			if (rol == "profe") {
				window.location.href = "http://localhost:8080/examenes_final/vista/jsp/profesor.jsp?usuario=" + usu;
			}
		}
	}
}

function login() {
	document.getElementById("error").innerHTML = "";
	var f = document.querySelector("#form-login");
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = procesarLogin;
	ajax.open("GET", "peticion/peticionLogin.jsp?control=" + f.control.value + "&pass=" + f.pass.value, true);
	ajax.send();
}
function procesarLogin() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('{');
		var fin = respuesta.indexOf('}');
		var contenido = respuesta.substring(inicio, fin + 1);
		if (contenido == "{}") {
			document.getElementById("error").innerHTML = "<p style='color: red; fontsize: 18px;'>Usurio o contraseña incorrecta</p>";
		} else {
			contenido = "[" + contenido + "]";
			logi = JSON.parse(contenido);
			var rol = "";
			var usu = "";
			var con = "";
			for (var i = 0; i < logi.length; i++) {
				con = logi[i].id;
				rol = logi[i].rol;
				usu = logi[i].nombre;
			}

			if (rol == "alum") {
				window.location.href = "http://localhost:8080/examenes_final/vista/jsp/alumno.jsp?usuario=" + usu + "&control=" + con;
			}
			if (rol == "profe") {
				window.location.href = "http://localhost:8080/examenes_final/vista/jsp/profesor.jsp?usuario=" + usu;
			}
		}
	}
}

function materiasAl() {
	ajax = "";
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listarMateria;
	ajax.open("GET", "../../peticion/listar.jsp", true);
	ajax.send();
}

function listarMateria() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenido = respuesta.substring(inicio, fin + 1);
		materia = JSON.parse(contenido);

	} else {

	}
	var salida = "<h2>Agregar materia</h2><table class='table'><tr><th>Grupos</th><th>Accion</th></tr><tr>";
	if (materia.length > 0) {
		for (var i = 0; i < materia.length; i++) {
			if (i % 2 == 0) {
				salida += "</tr><td><div style='background:#797575; color:#fff;'><h4>Materia: " + materia[i].materia + " </h4><h4>Maestro: " + materia[i].maestro + "</h4> <h4>Gruo: " + materia[i].grupo + " </h4><button class='btn btn-success' value='" + materia[i].id + "' onclick='agregarMat(this)'><i class='fa fa-plus-circle'></i> Agregar</button></div></td>";
			} else {
				salida += "<td><div style='background:#797575; color:#fff;'><h4>Materia: " + materia[i].materia + " </h4><h4>Maestro: " + materia[i].maestro + "</h4> <h4>Gruo: " + materia[i].grupo + " </h4> <button class='btn btn-success' value='" + materia[i].id + "' onclick='agregarMat(this)'><i class='fa fa-plus-circle'></i> Agregar</button></div></td>";
			}
		}
		salida += "</tr></table>";
		$(".jumbotron").html(salida);
	}
}
function agregarMat(e) {
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = agregarMaterias;
	ajax.open("GET", "../../peticion/peticionAlumno.jsp?control=" + $("#ctrl").val() + "&materia=" + e.value + "&opc=agregar", true);
	ajax.send();
}
function agregarMaterias() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		alert(respuesta);
		$(".jumbotron").html("");
	} else {

	}
}

function materiasDis() {
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listaG;
	ajax.open("GET", "../../peticion/peticionAlumno.jsp?control=" + $("#ctrl").val() + "&opc=lismateria", true);
	ajax.send();
}
function listaG() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenido = respuesta.substring(inicio, fin + 1);
		grupo = JSON.parse(contenido);
	} else {

	}
	var salida = "<h2>Mis Grupos</h2><table class='table'><tr><th>Grupos</th><th>Accion</th></tr><tr>";
	if (grupo.length > 0) {
		for (var i = 0; i < grupo.length; i++) {
			if (i % 2 == 0) {
				salida += "</tr><td style='width:50%;'><div style='background:#797575; color:#fff;'><h4>Materia: " + grupo[i].materia + " </h4> <h4>Gruo: " + grupo[i].grupo + " </h4><button class='btn btn-success' value='" + grupo[i].id + "' onclick='lisExamen(this)'><i class='fa fa-eye'></i> ver</button></div></td>";
			} else {
				salida += "<td style='width:50%;'><div style='background:#797575; color:#fff;'><h4>Materia: " + grupo[i].materia + " </h4> <h4>Gruo: " + grupo[i].grupo + " </h4> <button class='btn btn-success' value='" + grupo[i].id + "' onclick='lisExamen(this)'><i class='fa fa-eye'></i> ver</button></div></td>";
			}
		}
		salida += "</tr></table>";
		$(".jumbotron").html(salida);
	}
}

function lisExamen(e) {
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listaExa;
	ajax.open("GET", "../../peticion/peticionAlumno.jsp?grupo=" + e.value + "&opc=lisexamen", true);
	ajax.send();
}
function listaExa() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenido = respuesta.substring(inicio, fin + 1);
		examen = JSON.parse(contenido);
		alert(contenido);
	} else {

	}
	var salida = "<h2>Examen Disponible</h2><table class='table'><tr><th>Grupos</th><th>Accion</th></tr><tr>";
	if (examen.length > 0) {
		for (var i = 0; i < examen.length; i++) {
			if (i % 2 == 0) {
				salida += "</tr><td style='width:50%;'><div style='background:#797575; color:#fff;'><h4>Examen: " + examen[i].examen + " </h4> <h4>Unidad: " + examen[i].unidad + " </h4><button class='btn btn-success' value='" + examen[i].id + "' onclick=''><i class='fa fa-eye'></i> ver</button></div></td>";
			} else {
				salida += "<td style='width:50%;'><div style='background:#797575; color:#fff;'><h4>Ubidad: " + examen[i].examen + " </h4> <h4>Ubidad: " + examen[i].unidad + " </h4> <button class='btn btn-success' value='" + examen[i].id + "' onclick=''><i class='fa fa-eye'></i> ver</button></div></td>";
			}
		}
		salida += "</tr></table>";
		$(".jumbotron").html(salida);
	}
}


$(document).ready(function () {
	$("#ic").click(function () {
		$("#men").toggle();
	});
	$("#ex-sh").click(function () {
		$("#gr-show:visible").hide();
		$("#ex-show").toggle();
		$("#examenes-field:hidden").show("slow");
	});
	$("#gr-sh").click(function () {
		$("#ex-show:visible").hide();
		$("#gr-show").toggle();
	});
		
	$(document).ready(function () {
		$("#plus-ex").click(function () {
			$("#nuevo-ex-show").toggle("slow");
			$("#examenes-field:visible").hide("slow");
			//$("#grupos-field").toggle("slow");
		});
	});
	$(document).ready(function () {
		$("#plus-gr").click(function () {
			$("#nuevo-gr-show").toggle("slow");	
			//$("#examenes-field").toggle("slow");
		});
	});
});

function alumnoDoc() {

	ajax = "";
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listarAlumnosDocente;
	ajax.open("GET", "../../peticion/listarAlumnosDocente.jsp?usuario=" + $("#ctrl").val(), true);
	ajax.send();
}

function listarAlumnosDocente() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenido = respuesta.substring(inicio, fin + 1);
		alumnos = JSON.parse(contenido);
		//alert(alumnos);
	} else {

	}
	var salida = "<table class='table table-hover table-dark'>" +
			"<tr>" +
			"<th>Nombre</th><th>Paterno</th><th>Materno</th><th>no. control</th><th>Grupo</th><th>Carrera</th></tr><tr>";
	if (alumnos.length > 0) {
		for (var i = 0; i < alumnos.length; i++) {
			salida += "</tr><td><div  >" + alumnos[i].nombre + "</div></td>";
			salida += "<td><div  >" + alumnos[i].ap + "</div></td>";
			salida += "<td><div  >" + alumnos[i].am + "</div></td>";
			salida += "<td><div  >" + alumnos[i].control + "</div></td>";
			salida += "<td><div  >" + alumnos[i].grupo + "</div></td>";
			salida += "<td><div  >" + alumnos[i].carrera + "</div></td>";
		}
		salida += "</table>";
		$("#alumnos-field").html(salida);
	}
}

function examenDoc() {
	ajax = "";
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listarExamenesDoc;
	ajax.open("GET", "../../peticion/listarExamenesDocente.jsp", true);
	ajax.send();
}

function listarExamenesDoc() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenidox = respuesta.substring(inicio, fin + 1);
		//alert(contenido);
		examen = JSON.parse(contenidox);

	} else {

	}
	var salida = '<div class="card-deck" style="margin-left: 5%;margin-top: 5vh;">';
	if (examen.length > 0) {
		for (var i = 0; i < examen.length; i++) {
			salida += '<div class="card border-info mb-3" style="max-width: 12rem;">';
			salida += '<div class="card-body text-info">';
			salida += '<h5 class="card-title"><a class="btn btn-info" href="admin">' + examen[i].examen + '</a></h5>';
			salida += '<p class="card-text"> Unidad ' + examen[i].unidad + '</p>';
			salida += '</div>';
			salida += '</div>';
		}
		salida += "</div>";
		$("#examenes-field").html(salida);
	}
}

function grupoDoc() {
	ajax = "";
	if (window.XMLHttpRequest) {
		ajax = new XMLHttpRequest();

	} else {
		ajax = new ActiveXObject(microsofXMLHTTP);
	}
	ajax.onreadystatechange = listarGrupoDoc;
	ajax.open("GET", "../../peticion/peticionDocente.jsp?opc=listgrupo", true);
	ajax.send();
}

function listarGrupoDoc() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var respuesta = ajax.responseText;
		var inicio = respuesta.indexOf('[');
		var fin = respuesta.indexOf(']');
		var contenidox = respuesta.substring(inicio, fin + 1);
		//alert(contenidox);
		grupo = JSON.parse(contenidox);

	} else {

	}
	var salida = '<div class="card-deck" style="margin-left: 5%;margin-top: 5vh;">';
	if (grupo.length > 0) {
		for (var i = 0; i < grupo.length; i++) {
			salida += '<div class="card border-info mb-3" style="max-width: 12rem;">';
			salida += '<div class="card-body text-info">';
			salida += '<h5 class="card-title"><a class="btn btn-info" href="admin">' + grupo[i].grupo + '</a></h5>';
			salida += '<p class="card-text"> ... </p>';
			salida += '</div>';
			salida += '</div>';
		}
		salida += "</div>";
		$("#grupos-field").html(salida);
	}
}
