package org.iesvegademijas.model;

import java.util.Objects;

public class Fabricante {

	private int codigo;
	private String nombre;
	
	

	public Fabricante() {
		super();
	}

	public Fabricante(int codigo, String nombre) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	

	@Override
	public int hashCode() {
		return Objects.hash(codigo, nombre);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Fabricante other = (Fabricante) obj;
		return codigo == other.codigo && Objects.equals(nombre, other.nombre);
	}

	@Override
	public String toString() {
		return "Fabricante [codigo=" + codigo + ", nombre=" + nombre + "]";
	}
	
	
	
}
