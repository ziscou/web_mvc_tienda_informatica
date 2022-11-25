<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.iesvegademijas.model.Usuario"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Usuarios</title>
		<style>
			.clearfix::after {
				content: "";
				display: block;
				clear: both;
			}
		</style>
		<%@ include file="/WEB-INF/jsp/style.jspf" %>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/header.jspf" %>
		<%@ include file="/WEB-INF/jsp/nav.jspf" %>
		<main>
			<div id="contenedora" style="float:none; margin: 0 auto;width: 900px;" >
				<div class="clearfix">
					<div style="float: left; width: 50%">
						<h1>Usuarios</h1>
					</div>
					<div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">
						
						<div style="position: absolute; left: 39%; top : 39%;">
							
		 						<form action="/tienda_informatica/usuarios/crear"> 
									<input type="submit" value="Crear"> 
								</form> 
							</div>
						
					</div>
				</div>
				<div class="clearfix">
					<hr/>
				</div>
				<div class="clearfix">
					<div style="float: left;width: auto;overflow: hidden;position: relative;">
						<form action="/tienda_informatica/usuarios">
							<input name="filtro" placeholder="buscador">
							<button>Buscar</button>
						</form>
					</div>
				</div>
				<div class="clearfix">
					<hr/>
				</div>
				<div class="clearfix">
					<div style="float: left;width: 10%">Código</div>
					<div style="float: left;width: 30%">Nombre</div>
					<div style="float: left;width: 10%">Rol</div>
					<div style="float: none;width: auto;overflow: hidden;">Acción</div>
				</div>
				<div class="clearfix">
					<hr/>
				</div>
			<% 
		        if (request.getAttribute("listaUsuarios") != null) {
		            List<Usuario> listaUsuarios = (List<Usuario>)request.getAttribute("listaUsuarios");
		            
		            for (Usuario usuario : listaUsuarios) {
		    %>
		
				<div style="margin-top: 6px;" class="clearfix">
					<div style="float: left;width: 10%"><%= usuario.getId()%></div>
					<div style="float: left;width: 30%"><%= usuario.getUser()%></div>
					<div style="float: left;width: 10%"><%= usuario.getRol()%></div>
					<div style="float: none;width: auto;overflow: hidden;">
						<form action="/tienda_informatica/usuarios/<%= usuario.getId()%>" style="display: inline;">
		    				<input type="submit" value="Ver Detalle" />
						</form>
						<form action="/tienda_informatica/usuarios/editar/<%= usuario.getId()%>" style="display: inline;">
		    				<input type="submit" value="Editar" />
						</form>
						<form action="/tienda_informatica/usuarios/borrar/" method="post" style="display: inline;">
							<input type="hidden" name="__method__" value="delete"/>
							<input type="hidden" name="id" value="<%= usuario.getId()%>"/>
		    				<input type="submit" value="Eliminar" />
						</form>
					</div>
				</div>
		
			<% 
		            }
		        } else { 
		    %>
				No hay registros de usuario
			<% } %>
			</div>
		</main>
		<%@ include file="/WEB-INF/jsp/footer.jspf" %>
	</body>
</html>