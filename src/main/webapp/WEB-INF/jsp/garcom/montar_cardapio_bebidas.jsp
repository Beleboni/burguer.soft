<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>::Burguer Soft::</title>
<link rel="icon" href="estilo/img/favicon.png">
<title>:: Burguer Soft ::</title>
<link
	href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css"
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
					href="<c:url value='/painelGarcom'/>"><i
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
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<form action="<c:url value='/cadastrar_bedida'/>" method="post"
					class="form-horizontal">
					<h2 class="page-header">Cadastrar novo produto</h2>
					<div class="form-group">
						<label for="tipo_produto" class="col-sm-2 control-label">
							Tipo de produto *</label>
						<div class="col-sm-3">
							<select name="produto.tipoProduto" class="form-control">
								<option value="BEBIDA">Bebida</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="descricao" class="col-sm-2 control-label">
							Descrição *</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="5" name="produto.descricao"
								placeholder="Descrição do produto" required="required"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="valor_unitario" class="col-sm-2 control-label">
							Valor unitário *</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" name="produto.valor"
								placeholder="Valor unitário" required="required">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-2 control-label"></div>
						<div class="col-sm-10">
							<p>* Campos obrigatório</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">
								<i class="fa fa-check" aria-hidden="true"></i> Cadastrar item
							</button>
							<button type="reset" class="btn btn-warning">
								<i class="fa fa-eraser" aria-hidden="true"></i> Limpar campos
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>
</html>
