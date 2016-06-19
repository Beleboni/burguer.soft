<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="modal-dialog" role="document">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<h4 class="modal-title" id="alterar">Alterar</h4>
		</div>
		<form action="${linkTo[CozinheiroController].alterar(produto)}" method="post" class="form-horizontal">
			<div class="modal-body">
				<input type="hidden" name="_method" value="put" />
				<div class="form-group">
					<label for="descricao" class="col-sm-2 control-label">Descrição</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="descricao" value="${produto.descricao}" name="produto.descricao">
					</div>
				</div>
				<div class="form-group">
					<label for="status" class="col-sm-2 control-label">Tipo produto</label>
					<div class="col-sm-5">
						<select class="form-control" name="produto.tipoProduto">
							<option value="LANCHE" <c:if test="${produto.tipoProduto eq 'LANCHE'}">selected="selected"</c:if>>
								Lanche
							</option>
							<option value="PORCAO" <c:if test="${produto.tipoProduto eq 'PORCAO'}">selected="selected"</c:if>>
								Porção
							</option>
							<option value="ALMOCO" <c:if test="${produto.tipoProduto eq 'ALMOCO'}">selected="selected"</c:if>>
								Almoço
							</option>
							<option value="BIFE_SOPAS" <c:if test="${produto.tipoProduto eq 'BIFE_SOPAS'}">selected="selected"</c:if>>
								Bife sopas
							</option>
							<option value="SOBREMESA" <c:if test="${produto.tipoProduto eq 'SOBREMESA'}">selected="selected"</c:if>>
								Sobremesa
							</option>
							<option value="SORVETE" <c:if test="${produto.tipoProduto eq 'SORVETE'}">selected="selected"</c:if>>
								Sorvete
							</option>
							<option value="RODIZIO_PIZZA" <c:if test="${produto.tipoProduto eq 'RODIZIO_PIZZA'}">selected="selected"</c:if>>
								Rodizio pizza
							</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="valor" class="col-sm-2 control-label">Valor</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${produto.valor}" id="valor" name="produto.valor">
					</div>
				</div>
				<div class="form-group">
					<label for="status" class="col-sm-2 control-label">Status</label>
					<div class="col-sm-5">
						<select class="form-control" name="produto.status">
							<option value="ATIVO" <c:if test="${produto.status eq 'ATIVO'}">selected="selected"</c:if>>
								Ativo
							</option>
							<option value="INATIVO" <c:if test="${produto.status eq 'INATIVO'}">selected="selected"</c:if>>
								Inativo
							</option>
						</select>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
				<button type="submit" class="btn btn-primary">Alterar</button>
			</div>
		</form>
	</div>
</div>



