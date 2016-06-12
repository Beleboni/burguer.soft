<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>:: Burguer Soft ::</title>
<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="container">
		<h1 class="page-header">Cadastrar Colaborador</h1>
		<form action="<c:url value='/cadastrar_colaborador'/>" method="post" class="form-horizontal">
			<div class="form-group">
				<label for="inputNome" class="col-sm-2 control-label">*
					Nome:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.nome"
						placeholder="Nome">
				</div>
			</div>
			<div class="form-group">
				<label for="inputCpf" class="col-sm-2 control-label">* Cpf:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.cpf"
						placeholder="Cpf">
				</div>
			</div>
			<div class="form-group">
				<label for="inputTelefone" class="col-sm-2 control-label">*
					Telefone:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.telefone"
						placeholder="Telefone">
				</div>
			</div>
			<div class="form-group">
				<label for="inputSetor" class="col-sm-2 control-label">*
					Setor:</label>
				<div class="col-sm-10">
					<select class="form-control" name="funcionario.setor">
						<option value="Garcom">Garçom</option>
						<option value="Cozinheiro">Cozinheiro</option>
						<option value="Administrador">Administrador</option>
					</select>
					 
				</div>
			</div>
			<div class="form-group">
				<label for="inputUsuario" class="col-sm-2 control-label">*
					Usuario:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.usuario"
						placeholder="Usuario">
				</div>
			</div>
			<div class="form-group">
				<label for="inputSenha" class="col-sm-2 control-label">*
					Senha:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.senha"
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
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary"><i class="fa fa-check" aria-hidden="true"></i> Cadastrar
						colaborador</button>
					<button type="submit" class="btn btn-warning"><i class="fa fa-times" aria-hidden="true"></i> Cancelar</button>
				</div>
			</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>


