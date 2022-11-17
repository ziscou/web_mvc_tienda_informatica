package org.iesvegademijas.model;

import java.util.Objects;

public class Producto {
	private int codigo;
	private String nombre;
	private double precio;
	private int codigoFabricante;
	
	


	public Producto() {
		super();
	}

	public Producto(int codigo, String nombre, double precio, int codigoFabricante) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.precio = precio;
		this.codigoFabricante = codigoFabricante;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCodigoFabricante() {
		return codigoFabricante;
	}

	public void setCodigoFabricante(int codigoFabricante) {
		this.codigoFabricante = codigoFabricante;
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
		return Objects.hash(codigo, codigoFabricante, nombre, precio);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Producto other = (Producto) obj;
		return codigo == other.codigo && codigoFabricante == other.codigoFabricante
				&& Objects.equals(nombre, other.nombre)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio);
	}

	@Override
	public String toString() {
		return "Producto [codigo=" + codigo + ", nombre=" + nombre + ", precio=" + precio + ", codigoFabricante="
				+ codigoFabricante + "]";
	}

	
}
