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
import modelo.Alumno;
import modelo.Materia;

/**
 *
 * @author const
 */
public class TablaAlumnos {
	private Connection conexion;
    private Statement st;
    private ResultSet rs;

    public TablaAlumnos(Connection conexion) {
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
    
    public List getListadoAlumnosProfesor(String nombreProfesor){
        List<Alumno> salida= new ArrayList();
        String sql = "SELECT * FROM persona p join lisgrup lg on p.id_per = lg.id_per join grupo g on g.id_grup = lg.id_grup join usuario u on u.control = p.control where p.nombre not like '%"+nombreProfesor+"%'";
        try {
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Alumno alumno = new Alumno();
                alumno.setIdAlumno(Integer.parseInt(rs.getString("id_per")));
                alumno.setNombre(rs.getString("nombre"));
				alumno.setAp(rs.getString("paterno"));
				alumno.setAm(rs.getString("materno"));
				alumno.setControl(rs.getString("control"));
                salida.add(alumno);
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
