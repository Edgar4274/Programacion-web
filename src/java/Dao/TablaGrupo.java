/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Grupo;

/**
 *
 * @author edal_
 */
public class TablaGrupo {
    private Connection conexion;
    private Statement st;
    private ResultSet rs;

    public TablaGrupo(Connection conexion) {
        this.conexion = conexion;
        this.crearSentecia();
    }
    
    private void crearSentecia() {
        try {
            st = conexion.createStatement();
        } catch (SQLException ex) {
            //Logger.getLogger(TablaLibros.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error: " + ex.toString());
        }
    }
    
    public  List getGrupo(String con){
        List<Grupo> salida= new ArrayList<>();
        String sql = "select id_grup, grupo, materia, nombre from grupo g join materia m on g.id_mat=m.id_mat join persona p on g.id_per=p.id_per where  g.id_grup not in(select id_grup from lisgrup where id_per="+con+") and fecha between DATE_SUB(CURDATE(), INTERVAL 4 month) and curdate()";
        try {
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Grupo g = new Grupo();
                g.setId(rs.getString("id_grup"));
                g.setGrupo(rs.getString("grupo"));
                g.setMateria(rs.getString("materia"));
                g.setMaestro(rs.getString("nombre"));
                salida.add(g);
            }
            return salida;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());
        }
        
        return null;
    }
    
    public List listarGrupo(String con){
        List<Grupo> salida= new ArrayList<>();
        String sql = "select g.id_grup, grupo, materia from persona p join lisgrup l on p.id_per=l.id_per join grupo g on l.id_grup=g.id_grup join materia m on g.id_mat=m.id_mat where p.id_per='"+con+"'";
        try {
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Grupo g = new Grupo();
                g.setId(rs.getString("id_grup"));
                g.setGrupo(rs.getString("grupo"));
                g.setMateria(rs.getString("materia"));
                salida.add(g);
            }
            return salida;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());
        }
        
        return null;
    }
}
