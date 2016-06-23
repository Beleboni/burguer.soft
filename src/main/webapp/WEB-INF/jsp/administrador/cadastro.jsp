<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>:: Burguer Soft ::</title>
<link rel="icon" href="<%=request.getContextPath()%>/resources/estilo/img/favicon.png">
<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value='/painel_administrativo'/>"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Usuário: ${usuario.funcionario.nome}</a></li>
                        <li><a href="${linkTo[IndexController].logout}">Sair</a></li>
                    </ul>
                </div>
            </div>
    </nav>
	<div class="container">
		<h1 class="page-header">Cadastrar Colaborador</h1>
		<form action="<c:url value='/cadastrar_colaborador'/>" method="post" class="form-horizontal">
			<div class="form-group">
				<label for="inputNome" class="col-sm-2 control-label">
					Nome *</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="funcionario.nome"
						placeholder="Nome">
				</div>
			</div>
			<div class="form-group">
				<label for="inputCpf" class="col-sm-2 control-label">Cpf *</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="funcionario.cpf"
						placeholder="Cpf">
				</div>
			</div>
			<div class="form-group">
				<label for="inputTelefone" class="col-sm-2 control-label">
					Telefone *</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="funcionario.telefone"
						placeholder="Telefone">
				</div>
			</div>
			<div class="form-group">
				<label for="inputSetor" class="col-sm-2 control-label">
					Setor *</label>
				<div class="col-sm-2">
					<select class="form-control" name="funcionario.setor">
						<option value="GARCOM">Garçom</option>
						<option value="COZINHEIRO">Cozinheiro</option>
						<option value="ADMINISTRADOR">Administrador</option>
					</select>
					 
				</div>
			</div>
			<div class="form-group">
				<label for="inputUsuario" class="col-sm-2 control-label">
					Usuario *</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="funcionario.usuario"
						placeholder="Usuario">
				</div>
			</div>
			<div class="form-group">
				<label for="inputSenha" class="col-sm-2 control-label">
					Senha *</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" name="funcionario.senha"
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
					<button type="reset" class="btn btn-warning"><i class="fa fa-eraser" aria-hidden="true"></i> Limpar campos</button>
				</div>
			</div>
		</form>
	</div>
	
	
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>
</html>


