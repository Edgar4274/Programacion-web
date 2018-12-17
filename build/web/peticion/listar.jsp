<%@page import="modelo.Grupo"%>
<%@page import="Dao.TablaGrupo"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.BaseDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BaseDatos baseDatos = new BaseDatos("simulador", "user", "1234");
    String resultado = baseDatos.hacerConexion();
    if (resultado.equals("exito")) {
        TablaGrupo tablaGrupo = new TablaGrupo(baseDatos.getConexion());
        List<Grupo> grupo = tablaGrupo.getGrupo();
        Gson datos = new Gson();
        out.print(datos.toJson(grupo));
        //System.out.println(grupo);
    } else {
        System.out.println("mala iris");
    }
%>