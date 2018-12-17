/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author const
 */
public class Alumno {
	private int idAlumno;
	private String nombre;
	private String ap;
	private String am;
	private String control;

	public int getIdAlumno() {
		return idAlumno;
	}

	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getAp() {
		return ap;
	}

	public void setAp(String ap) {
		this.ap = ap;
	}

	public String getAm() {
		return am;
	}

	public void setAm(String am) {
		this.am = am;
	}

	public String getControl() {
		return control;
	}

	public void setControl(String control) {
		this.control = control;
	}

	@Override
	public String toString() {
		return "Alumno{" + "idAlumno=" + idAlumno + ", nombre=" + nombre + ", ap=" + ap + ", am=" + am + ", control=" + control + '}';
	}
	
}
