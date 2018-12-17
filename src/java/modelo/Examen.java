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
public class Examen {
	private int id;
	private String nombre;
	private int unidad;
	private int idGrupo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getUnidad() {
		return unidad;
	}

	public void setUnidad(int unidad) {
		this.unidad = unidad;
	}

	public int getIdGrupo() {
		return idGrupo;
	}

	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	@Override
	public String toString() {
		return "Examen{" + "id=" + id + ", nombre=" + nombre + ", unidad=" + unidad + ", idGrupo=" + idGrupo + '}';
	}
	
	
	
}
