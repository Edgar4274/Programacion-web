var logi;
var ajax;
var materia;
function login(){
    document.getElementById("error").innerHTML="";
    var f = document.querySelector("#form-login");
    if (window.XMLHttpRequest) {
        ajax = new XMLHttpRequest();
        
    } else {
        ajax = new ActiveXObject(microsofXMLHTTP);
    }
    ajax.onreadystatechange = procesarLogin;
    ajax.open("GET", "peticion/peticionLogin.jsp?control="+f.control.value+"&pass="+f.pass.value, true);
    ajax.send();
}
function procesarLogin(){
    if (ajax.readyState==4 && ajax.status==200) {
        var respuesta = ajax.responseText;
        var inicio = respuesta.indexOf('{');
        var fin = respuesta.indexOf('}');
        var contenido = respuesta.substring(inicio, fin+1);
        if (contenido=="{}") {
            document.getElementById("error").innerHTML="<p style='color: red; fontsize: 18px;'>Usurio o contraseña incorrecta</p>";
        } else {
            contenido= "["+contenido+"]";
            logi=JSON.parse(contenido);
            var rol="";
            var usu="";
            var con="";
            for (var i = 0; i < logi.length; i++) {
                con=logi[i].id;
                rol=logi[i].rol;
                usu = logi[i].nombre;
            }
            
            if (rol=="alum") {
                window.location.href = "http://localhost:8080/examenes_final/vista/jsp/alumno.jsp?usuario="+usu+"&control="+con;
            }
            if (rol=="profe") {
                window.location.href = "http://localhost:8080/examenes_final/vista/jsp/profesor.jsp?usuario="+usu;
            }
        }        
    }
}

function materiasAl(){
    ajax="";
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
    if (ajax.readyState==4 && ajax.status==200) {
        var respuesta = ajax.responseText;
        var inicio = respuesta.indexOf('[');
        var fin = respuesta.indexOf(']');
        var contenido = respuesta.substring(inicio, fin+1);
        materia=JSON.parse(contenido);
        
    } else{
        
    }
    var salida ="<h2>Agregar materia</h2><table class='table'><tr><th>Materia</th><th>Accion</th></tr>";
    if (materia.length >0) {
        for (var i = 0; i < materia.length ; i++) {
            salida+="<tr> <td>"+materia[i].materia+"</td><td><button class='btn btn-success' value='"+materia[i].id+"' onclick='agregarMat(this)'><i class='fa fa-plus-circle'></i> Agregar</button></td></option> ";
        }
        $(".jumbotron").html(salida);
    }
}
function agregarMat(e){
    if (window.XMLHttpRequest) {
        ajax = new XMLHttpRequest();
        
    } else {
        ajax = new ActiveXObject(microsofXMLHTTP);
    }
    ajax.onreadystatechange = agregarMaterias;
    ajax.open("GET", "../../peticion/peticionAlumno.jsp?control="+$("#ctrl").val()+"&materia="+e.value+"&opc=agregar", true);
    ajax.send();
}
function agregarMaterias(){
    if (ajax.readyState==4 && ajax.status==200) {
        var respuesta = ajax.responseText;
        alert(respuesta);
        $(".jumbotron").html("");
    } else{
        
    }
}

$(document).ready(function () {
   $( "#men" ).hide();
   
   $("#ic").click(function () {
    $("#men").show();
});
});
