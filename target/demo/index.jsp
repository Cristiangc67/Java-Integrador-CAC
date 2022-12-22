<html>
	<head>
		<%@include file="head.jsp" %>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css" type="text/css">	
	</head>
	
	<body>
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>		
		<main>
			<div class="container">
				<section>
					<h1 class="text-center">ABM de productos </h1>
					<div class="d-flex justify-content-center">
						<a class="btn btn-warning fs-3 mt-5" href="<%=request.getContextPath()%>/api/ListadoController" role="button">
							Ir a Listado
						</a>
				   </div>
				</section>
			</div>
		</main>
	</body>	
</html>