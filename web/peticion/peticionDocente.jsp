<%-- 
    Document   : peticionDocente
    Created on : Dec 17, 2018, 9:23:10 AM
    Author     : const
--%>
<%@page import="modelo.Examen"%>
<%@page import="Dao.TablaExamen"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Grupo"%>
<%@page import="Dao.TablaGrupo"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.TablaMateria"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        String opc = request.getParameter("opc");
        TablaGrupo tablaGrupo = new TablaGrupo(baseDatos.getConexion());
        
        if (opc.equals("listgrupo")) {
			List<Grupo> grupo = tablaGrupo.getGrupo();
            Gson datos = new Gson();
            out.print(datos.toJson(grupo));
            System.out.println("PETICION DOC::  "+request.getParameter("control"));
        }
	}else {
        System.out.println("mala iris");
    }
%>
