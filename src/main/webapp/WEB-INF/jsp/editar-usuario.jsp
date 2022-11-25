<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.iesvegademijas.model.Usuario"%>
<%@page import="java.util.Optional"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Usuario</title>
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
			<form action="/tienda_informatica/usuarios/editar/" method="post" >
				<input type="hidden" name="__method__" value="put" />
				<div class="clearfix">
					<div style="float: left; width: 50%">
						<h1>Editar Usuario</h1>
					</div>
					<div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">
						
						<div style="position: absolute; left: 39%; top : 39%;">
									<input type="submit" value="Guardar" />						
						</div>
						
					</div>
				</div>
				
				<div class="clearfix">
					<hr/>
				</div>
				
				<% 	Optional<Usuario> optUsu = (Optional<Usuario>)request.getAttribute("usuario");
					if (optUsu.isPresent()) {
				%>
				
				<div style="margin-top: 6px;" class="clearfix">
					<div style="float: left;width: 50%">
						<label>Id</label>
					</div>
					<div style="float: none;width: auto;overflow: hidden;">
						<input name="id" value="<%= optUsu.get().getId() %>" readonly="readonly"/>
					</div> 
				</div>
				<div style="margin-top: 6px;" class="clearfix">
					<div style="float: left;width: 50%">
						<label>Usuario</label>
					</div>
					<div style="float: none;width: auto;overflow: hidden;">
						<input name="user" value="<%= optUsu.get().getUser() %>"/>
					</div> 
				</div>
				<div style="margin-top: 6px;" class="clearfix">
					<div style="float: left;width: 50%">
						<label>Contraseña</label>
					</div>
					<div style="float: none;width: auto;overflow: hidden;">
						<input type="password" name="password" placeholder="Nueva Contraseña"/>
					</div> 
				</div>
				<div style="margin-top: 6px;" class="clearfix">
					<div style="float: left;width: 50%">
						<label>Rol</label>
					</div>
					<div style="float: none;width: auto;overflow: hidden;">
						<input name="rol" value="<%= optUsu.get().getRol() %>"/>
					</div> 
				
				<% 	} else { %>
					
						request.sendRedirect("usuarios/");
				
				<% 	} %>
			</form>
		</div>
	</main>
	<%@ include file="/WEB-INF/jsp/footer.jspf" %>
</body>
</html>