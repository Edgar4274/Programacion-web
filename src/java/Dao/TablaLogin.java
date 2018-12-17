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
import modelo.Login;

/**
 *
 * @author edal_
 */
public class TablaLogin {
    private Connection conexion;
    private Statement st;
    private ResultSet rs;

    public TablaLogin(Connection conexion) {
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
    
    public String guardarLibro(Login login) {
        try {
            String sql ="";
            //String sql = "INSERT INTO libro VALUES(" + libro.getIsbn() + ",'" + libro.getTitulo() + "', '" + libro.getAutor() + "', '" + libro.getEdicion() + "', '" + libro.getEditorial() + "')";
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

    public Login getLibro(String numero, String pass) {
        String sql = "select * from usuario u join persona p on u.control=p.control WHERE u.control='" + numero + "' and password='"+pass+"'";
        try {
            rs = st.executeQuery(sql);
            Login login = new Login();
            if (rs.next()) {
                login.setNumero(rs.getString("control"));
                login.setPassword(rs.getString("password"));
                login.setRol(rs.getString("rol"));
                login.setNombre(rs.getString("nombre"));
                login.setPaterno(rs.getString("paterno"));
                login.setMaterno(rs.getString("materno"));
                login.setId(rs.getString("id_per"));
            }
            return login;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
}
