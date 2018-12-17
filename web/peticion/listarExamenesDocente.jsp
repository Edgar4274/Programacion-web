<%-- 
    Document   : listarExamenesDocente
    Created on : Dec 17, 2018, 7:23:34 AM
    Author     : const
--%>

<%@page import="modelo.Examen"%>
<%@page import="Dao.TablaDocente"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        TablaDocente tablaDocentex = new TablaDocente(baseDatos.getConexion());
        List<Examen> examenes = tablaDocentex.getListadoExamenes();
        Gson datos = new Gson();
        out.print(datos.toJson(examenes));
        System.out.println(examenes);
    } else {
        System.out.println("error::Listar examenes Docente jsp");
    }
%>