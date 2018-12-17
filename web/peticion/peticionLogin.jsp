<%-- 
    Document   : peticionLogin
    Created on : 11/12/2018, 11:27:34 PM
    Author     : edal_
--%>

<%@page import="com.google.gson.Gson"%>
<%@page import="modelo.Login"%>
<%@page import="Dao.TablaLogin"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        TablaLogin tablaLogin = new TablaLogin(baseDatos.getConexion());
        Login login = tablaLogin.getLibro(request.getParameter("control"), request.getParameter("pass"));
        Gson datos = new Gson();
        out.print(datos.toJson(login));
        System.out.println(login);
    } else {
        System.out.println("mala iris");
    }
%>