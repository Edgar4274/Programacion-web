/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author edal_
 */
public class BaseDatos {
    private Connection conexion;
    private String nombre;
    private String usuario;
    private String password;

    public BaseDatos(String nombre, String usuario, String password) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.password = password;
    }
    public String hacerConexion(){
        try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion =  DriverManager.getConnection("jdbc:mysql://localhost:3306/"+nombre,usuario,password);
                        //conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca?useSSL=true&useLegacyDatetimeCode=false&serverTimezone=America/New_York","root","1304");
    
			return "exito";
		} catch (ClassNotFoundException e) {
			System.out.println("driver no encontrado");
			return "Error Clase "+e.getMessage();
		}
                catch(SQLException e){
                    return e.getMessage()+"SQL ERROR";
                }
    }
   public Connection getConexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/"+nombre,usuario,password);
			return conexion;
		} catch (ClassNotFoundException e) {
			System.out.println("driver no encontrado");
			return null;
		}
                catch(SQLException e){
                    
                    return null;
                }
	}
	
	public void cerrarConexion() {
		if (conexion!=null) {
			try {
			conexion.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}

    
}
