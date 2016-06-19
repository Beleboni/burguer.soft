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
		<form action="${linkTo[AdministradorController].alterar(funcionario)}" method="post" class="form-horizontal">
			<div class="modal-body">
				<input type="hidden" name="_method" value="put" />
				<div class="form-group">
					<label for="nome" class="col-sm-2 control-label">Nome</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="nome" value="${funcionario.nome}" name="funcionario.nome">
					</div>
				</div>
				<div class="form-group">
					<label for="cpf" class="col-sm-2 control-label">Cpf</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${funcionario.cpf}" id="cpf" name="funcionario.cpf">
					</div>
				</div>
				<div class="form-group">
					<label for="telefone" class="col-sm-2 control-label">Telefone</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${funcionario.telefone}" id="telefone" name="funcionario.telefone">
					</div>
				</div>
				<div class="form-group">
					<label for="status" class="col-sm-2 control-label">Setor</label>
					<div class="col-sm-5">
						<select class="form-control" name="funcionario.setor">
							<option value="ADMINISTRADOR" <c:if test="${funcionario.setor eq 'ADMINISTRADOR'}">selected="selected"</c:if>>
								Administrador
							</option>
							<option value="COZINHEIRO" <c:if test="${funcionario.setor eq 'COZINHEIRO'}">selected="selected"</c:if>>
								Cozinheiro
							</option>
							<option value="GARCOM" <c:if test="${funcionario.setor eq 'GARCOM'}">selected="selected"</c:if>>
								Garçom
							</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="usuario" class="col-sm-2 control-label">Usuário</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${funcionario.usuario}" id="usuario" name="funcionario.usuario">
					</div>
				</div>
				<div class="form-group">
					<label for="senha" class="col-sm-2 control-label">Senha</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${funcionario.senha}" id="senha" name="funcionario.senha">
					</div>
				</div>
				<div class="form-group">
					<label for="status" class="col-sm-2 control-label">Status</label>
					<div class="col-sm-5">
						<select class="form-control" name="funcionario.status">
							<option value="ATIVO" <c:if test="${funcionario.status eq 'ATIVO'}">selected="selected"</c:if>>
								Ativo
							</option>
							<option value="INATIVO" <c:if test="${funcionario.status eq 'INATIVO'}">selected="selected"</c:if>>
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