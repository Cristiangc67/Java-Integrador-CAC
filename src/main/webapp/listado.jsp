<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp" %>
		<title>listado</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css" type="text/css">	
	</head>
	
	<body>
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main>
			<div class="container">
				<section>
					<h1>Listado</h1>
					<!-- Button trigger modal -->
					<div class="d-flex justify-content-end">
						<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
							<img src="../img/agregar.png" class="icon col-1" alt="">
							Agregar producto
						</button>
					</div>
  
  					<!-- Modal -->
					  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
						  <div class="modal-content bg-dark">
							<div class="modal-header">
							  <h1 class="modal-title fs-5" id="exampleModalLabel">Alta De Producto</h1>
							  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
								<%@include file="alta.jsp" %>
						  </div>
						</div>
					  </div>

					<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">NOMBRE</th>
					      <th scope="col">CATEGORIA</th>
					      <th scope="col">IMAGEN</th>
					      <th scope="col">PRECIO</th>
					      <th scope="col">C&Oacute;DIGO</th>
					      <th scope="col">&nbsp;</th>
					    </tr>
					  </thead>
					  <% 
					  	//codigo java
					  	//obtener el listado desde el request
					  	//se guardo bajo el nombre de "listado"
					  	List<Producto> listado = (List<Producto>)request.getAttribute("listado");
					  %>
					  <tbody>
					   <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
					   <%
					   	for( Producto  unProducto : listado) {
					   %>
					    <tr>
					      <th scope="row"> <%=unProducto.getIdProducto()%> </th>
					      <td><%=unProducto.getNombre() %></td>
					      <td><%=unProducto.getCategoria() %></td>
						  <td><img src="../img/prod/<%=unProducto.getImagen()%>" alt="" class="h-25 w-25"></td>
					      <td><%=unProducto.getPrecio() %></td>
					      <td><%=unProducto.getCodigo() %></td>
					      <td>
							<div class="btn-group" >
					      		<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">
									<img src="../img/eliminar.png" class="icon col-2" alt="">
									Eliminar
								</a> 
					      		<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">
									<img src="../img/editar.png" class="icon col-2" alt="">
									Editar
								</a>
						   </div>
					      </td>
					    </tr>
					   <%
					   	}
					   %>
					  </tbody>
					</table>
					<div class="curve"></div>
				</section>
			</div>
		</main>
	</body>	
</html>