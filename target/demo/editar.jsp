<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp" %>	
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css" type="text/css">
	</head>
	
	<body>
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container">
				<section>
					<% 
					  	Producto producto = (Producto)request.getAttribute("producto");
				  	%>
					<h1>Editar producto ID=<%=producto.getIdProducto()%></h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/EditarController">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label text-warning">Nombre</label>
						  <input name="nombre"
						  	value="<%=producto.getNombre()%>"  
						  	type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50" required>
						</div>
						<div class="mb-3">
						  <label for="cate" class="form-label text-warning">Nombre</label>
						  <select name="categoria"
						  	value="<%=producto.getCategoria()%>"
						  	class="form-control" id="cate" required>
							<option value="transporte">Transporte</option>
							<option value="libros">Libros</option>
							<option value="electro">Electrodomesticos</option>
						  </select>
						</div>

						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label text-warning">Precio</label>
						  <input name="precio"
						  	value="<%=producto.getPrecio()%>" 
						  	type="number" class="form-control" id="exampleFormControlTextarea1" required>
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label text-warning">Im&aacute;gen</label>
						  <input name="imagen"
						  value="<%=producto.getImagen()%>"
						  type="text" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label text-warning">C&oacute;digo</label>
						  <input name="codigo"
						  	readonly="readonly"
						  	value="<%=producto.getCodigo()%>" 
						  	type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7" required>
						</div>
						<button class="btn btn-warning">
							Grabar
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>