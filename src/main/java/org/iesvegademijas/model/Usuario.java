package org.iesvegademijas.model;

import java.util.Objects;

public class Usuario {
	private int id;
	private String user;
	private String password;
	private String rol;
	
	public Usuario(int id, String user, String password, String rol) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.rol = rol;
	}
	public Usuario() {
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id, password, rol, user);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return id == other.id && Objects.equals(password, other.password) && Objects.equals(rol, other.rol)
				&& Objects.equals(user, other.user);
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", user=" + user + ", password=" + password + ", rol=" + rol + "]";
	}
	

}
