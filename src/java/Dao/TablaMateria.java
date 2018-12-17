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
import modelo.Materia;

/**
 *
 * @author edal_
 */
public class TablaMateria {
    private Connection conexion;
    private Statement st;
    private ResultSet rs;

    public TablaMateria(Connection conexion) {
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
    
    public List getListado(){
        List<Materia> salida= new ArrayList();
        String sql = "SELECT * FROM materia where id_mat  like '%%'";
        try {
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Materia materia = new Materia();
                materia.setId(rs.getString("id_mat"));
                materia.setMateria(rs.getString("materia"));
                salida.add(materia);
            }
            return salida;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());
        }
        
        return null;
    }
    
    public String getInsert(String control, String materia){
        try {
            String sql = "INSERT INTO lisgrup VALUES(null, "+control+", "+materia+")";
            int n = st.executeUpdate(sql);
            if (n == 1) {
                return "exitoso";
            } else {
                return "error de insercion";
            }
        } catch (SQLException ex) {
            return "error sql al insertar " + ex.toString();
        }
    }
}
