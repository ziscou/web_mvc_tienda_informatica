<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.iesvegademijas.model.FabricanteDTO"%>
<%@page import="org.iesvegademijas.model.Fabricante"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fabricantes</title>
<style>
.clearfix::after {
	content: "";
	display: block;
	clear: both;
}

</style>
</head>
<body>
<body>

	<div id="contenedora" style="float:none; margin: 0 auto;width: 900px;" >
		<div class="clearfix">
			<div style="float: left; width: 50%">
				<h1>Fabricantes</h1>
			</div>
			<div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">
				
				<div style="position: absolute; left: 39%; top : 39%;">
					
						<form action="/tienda_informatica/fabricantes/crear">
							<input type="submit" value="Crear">
						</form>
					</div>
				
			</div>
		</div>
		<form action="/tienda_informatica/fabricantes" >
			<label style="float: left; width: 20%" >Ordenar por:</label>
			<select name="orden" style="float: left; width: 20%">
				<option value="ordCod">Codigo</option>
				<option value="ordNom">Nombre</option>
			</select>
			
			<label style="float: left; width: 20%; margin-left: 4%" >Modo:</label>
			<select name="modo" style="float: left; width: 20%">
				<option value="modAsc">asc</option>
				<option value="modDesc">desc</option>
			</select>
			<input type="submit" value="Ordenar" style="float: left; width: 12%;margin-left: 4%"/>
		</form>
		<div class="clearfix">
			<hr/>
		</div>
		<div class="clearfix">
			<div style="float: left;width: 10%">Código</div>
			<div style="float: left;width: 30%">Nombre</div>
			<div style="float: left;width: 20%">Nº Productos</div>
			<div style="float: none;width: auto;overflow: hidden;">Acción</div>
		</div>
		<div class="clearfix">
			<hr/>
		</div>
	<% 
        if (request.getAttribute("listaFabricantes") != null) {
            List<FabricanteDTO> listaFabricante = (List<FabricanteDTO>)request.getAttribute("listaFabricantes");
            
            for (FabricanteDTO fabricante : listaFabricante) {
    %>

		<div style="margin-top: 6px;" class="clearfix">
			<div style="float: left;width: 10%"><%= fabricante.getCodigo()%></div>
			<div style="float: left;width: 30%"><%= fabricante.getNombre()%></div>
			<div style="float: left;width: 20%"><%= fabricante.getNumProd()%></div>
			<div style="float: none;width: auto;overflow: hidden;">
				<form action="/tienda_informatica/fabricantes/<%= fabricante.getCodigo()%>" style="display: inline;">
    				<input type="submit" value="Ver Detalle" />
				</form>
				<form action="/tienda_informatica/fabricantes/editar/<%= fabricante.getCodigo()%>" style="display: inline;">
    				<input type="submit" value="Editar" />
				</form>
				<form action="/tienda_informatica/fabricantes/borrar/" method="post" style="display: inline;">
					<input type="hidden" name="__method__" value="delete"/>
					<input type="hidden" name="codigo" value="<%= fabricante.getCodigo()%>"/>
    				<input type="submit" value="Eliminar" />
				</form>
			</div>
		</div>

	<% 
            }
        } else { 
    %>
		No hay registros de fabricante
	<% } %>
	</div>
</body>
</body>
</html>