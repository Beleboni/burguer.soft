<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>::Burguer Soft::</title>
<link rel="icon" href="estilo/img/favicon.png">
<link
	href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/css_sistema/dashboard.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="<c:url value='/painel_administrativo'/>"><i
					class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>Costelão Restaurante</a></li>
					<li><a>Usuário: Pedro da Silva</a></li>
					<li><a href="#">Sair</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">Administrar <span
							class="sr-only">(current)</span></a></li>
					<li><a href="<c:url value='/cadastro'/>"><i
							class="fa fa-user-plus" aria-hidden="true"></i> Novo colaborador</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h2 class="sub-header">Todos os colaboradores</h2>
				<div class="table-responsive">
					<table class="table table-striped table-condensed">
						<thead>
							<tr class="success">
								<th>Nome</th>
								<th>Telefone</th>
								<th>Status</th>
								<th>Setor</th>
								<th class="text-center">Ação</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funcionarioList}" var="funcionario">
								<tr>
									<td>${funcionario.nome}</td>
									<td>${funcionario.telefone}</td>
									<td>${funcionario.status}</td>
									<td>${funcionario.setor}</td>
									<td class="text-center"><a href="#" data-toggle="modal"
										data-target="#myModal"><i
											class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<h2 class="sub-header">Cardápio de todos os produtos</h2>
				<div class="table-responsive">
					<table class="table table-striped table-condensed">
						<thead>
							<tr class="success">
								<th>Descrição</th>
								<th>Valor</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${produtos}" var="produto">
								<tr>
									<td>${produto.descricao}</td>
									<td>${produto.valor}</td>
									<td>${produto.status}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Alterar dados
						colaborador</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="inputNome" class="col-sm-2 control-label">Nome
								*</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputNome"
									placeholder="Nome">
							</div>
						</div>
						<div class="form-group">
							<label for="inputCpf" class="col-sm-2 control-label">Cpf
								*</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="inputCpf"
									placeholder="Cpf">
							</div>
						</div>
						<div class="form-group">
							<label for="inputTelefone" class="col-sm-2 control-label">Telefone
								*</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="inputTelefone"
									placeholder="Telefone">
							</div>
						</div>
						<div class="form-group">
							<label for="inputSetor" class="col-sm-2 control-label">Setor
								*</label>
							<div class="col-sm-3">
								<select class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputUsuario" class="col-sm-2 control-label">Usuario
								*</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="inputUsuario"
									placeholder="Usuario">
							</div>
						</div>
						<div class="form-group">
							<label for="inputSenha" class="col-sm-2 control-label">Senha
								*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="inputSenha"
									placeholder="Senha">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<div class="row">
										<label>* Itens Obrigatórios</label>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Alterar</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#myModal').modal(options)
	</script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>

</html>