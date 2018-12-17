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
import modelo.Examen;
import modelo.Grupo;

/**
 *
 * @author edal_
 */
public class TablaExamen {
    private Connection conexion;
    private Statement st;
    private ResultSet rs;

    public TablaExamen(Connection conexion) {
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
    
    public List getExamen(String examen){
        List<Examen> salida= new ArrayList<>();
        String sql = "select * from examen where id_grup='"+examen+"'";
        try {
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Examen e = new Examen();
                e.setId(rs.getString("id_exa"));
                e.setExamen(rs.getString("nombre"));
                e.setUnidad(rs.getString("unidad"));
                salida.add(e);
            }
            return salida;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());
        }
        return null;
    }
}
