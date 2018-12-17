<%-- 
    Document   : listarAlumnosDocente
    Created on : Dec 17, 2018, 2:23:21 AM
    Author     : const
--%>

<%@page import="modelo.Alumno"%>
<%@page import="Dao.TablaDocente"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        TablaDocente tablaDocente = new TablaDocente(baseDatos.getConexion());
        List<Alumno> alumnos = tablaDocente.getListadoAlumnosProfesor(request.getParameter("usuario"));
        Gson datos = new Gson();
        out.print(datos.toJson(alumnos));
        System.out.println(alumnos);
    } else {
        System.out.println("error::Listar alumnos Docente jsp");
    }
%>