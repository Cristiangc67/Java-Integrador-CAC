
				
			
					<!--  JSP -->
					<form method="post"
						action="<%=request.getContextPath()%>/CreateController">
						<div class="modal-body">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="text-warning form-label">Nombre</label>
						  <input name="nombre"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50" required>
						</div>
						<div class="mb-3">
							<label for="cate" class="form-label text-warning">Categoria</label>
							<select name="categoria"
								class="form-control" id="cate" required>
							  <option value="transporte">Transporte</option>
							  <option value="libros">Libros</option>
							  <option value="electro">Electrodomesticos</option>
							</select>
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="text-warning form-label">Precio</label>
						  <input name="precio" type="number" class="form-control" id="exampleFormControlTextarea1" required>
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label text-warning">Im&aacute;gen</label>
						  <input name="imagen" type="text" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label text-warning">C&oacute;digo</label>
						  <input name="codigo" type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7" required>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
						<button class="btn btn-warning">
						  Dar de alta
					  </button>
					</div>
						
					</form>
				
		
			