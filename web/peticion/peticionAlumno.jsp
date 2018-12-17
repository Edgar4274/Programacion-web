<%-- 
    Document   : peticionAlumno
    Created on : 16/12/2018, 04:08:42 AM
    Author     : edal_
--%>

<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.TablaMateria"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        String opc=request.getParameter("opc");
        
        if (opc.equals("agregar")) {
            TablaMateria tablaMateria = new TablaMateria(baseDatos.getConexion());
            String salida = tablaMateria.getInsert(request.getParameter("control"), request.getParameter("materia"));
            Gson datos = new Gson();
            out.print(datos.toJson(salida));
        }
    } else {
        System.out.println("mala iris");
    }
%>
