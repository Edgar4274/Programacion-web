<%-- 
    Document   : peticionAlumno
    Created on : 16/12/2018, 04:08:42 AM
    Author     : edal_
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
        TablaMateria tablaMateria = new TablaMateria(baseDatos.getConexion());
        TablaGrupo tablaGrupo = new TablaGrupo(baseDatos.getConexion());
        TablaExamen tablaExamen = new TablaExamen(baseDatos.getConexion());
        if (opc.equals("agregar")) {

            String salida = tablaMateria.getInsert(request.getParameter("control"), request.getParameter("materia"));
            Gson datos = new Gson();
            out.print(datos.toJson(salida));
        }
        if (opc.equals("lismateria")) {
            List<Grupo> grupo = tablaGrupo.listarGrupo(request.getParameter("control"));
            Gson datos = new Gson();
            out.print(datos.toJson(grupo));
            System.out.println(request.getParameter("control"));
        }
        if (opc.equals("lisexamen")) {
            List<Examen> examens = tablaExamen.getExamen(request.getParameter("grupo"));
            Gson datos = new Gson();
            out.print(datos.toJson(examens));
            System.out.println(examens);
        }
        if (opc.equals("inicioExa")) {
            Gson datos = new Gson();
            out.print(datos.toJson("[iris]"));
        }
    } else {
        System.out.println("mala iris");
    }
%>
