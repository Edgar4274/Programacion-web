<%@page import="java.util.List"%>
<%@page import="modelo.Materia"%>
<%@page import="Dao.TablaMateria"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "root", "4274");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        TablaMateria tablaMateria = new TablaMateria(baseDatos.getConexion());
        List<Materia> materia = tablaMateria.getListado();
        Gson datos = new Gson();
        out.print(datos.toJson(materia));
        System.out.println(materia);
    } else {
        System.out.println("mala iris");
    }
%>