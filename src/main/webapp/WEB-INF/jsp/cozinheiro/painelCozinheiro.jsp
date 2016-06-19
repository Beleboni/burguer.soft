<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="estilo/img/food.png" type="image/x-icon" />
<title>:: Burguer Soft ::</title>
<link
	href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/estilo/css_sistema/dashboard.css"
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
				<a class="navbar-brand" href="<c:url value='/painelCozinheiro'/>"><i
					class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>Costelão Restaurante</a></li>
					<li><a>Usuário: Pedro da Silva</a></li>
					<li><a href="index.html">Sair</a></li>
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
					<li><a href="<c:url value='/montar_cardapio_alimentos'/>"><i
							class="fa fa-plus" aria-hidden="true"></i> Adicionar item</a></li>
					<li><a href="<c:url value='/todosPedidosCozinheiro'/>"><i
							class="fa fa-plus" aria-hidden="true"></i> Todos os pedidos</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h2 class="sub-header">Cardápio de hoje</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr class="success">
								<th>Descrição</th>
								<th>Valor</th>
								<th>Tipo</th>
								<th>Status</th>
								<th class="text-center">Ação</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${produtoList}" var="produto">
								<tr>
									<td>${produto.descricao}</td>
									<td>${produto.valor}</td>
									<td>${produto.tipoProduto}</td>
									<td>${produto.status}</td>
									<td class="text-center">
									<a class="abrirModal" href="${linkTo[CozinheiroController].modalAlterar(produto)}">
										<i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
									</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"></div>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
	<script>
		$('.abrirModal').on('click', function(e) {
			var _modal = $('#myModal'); 
			$.get($(this).attr('href'), function(data) {
				_modal.html(data);
				_modal.modal('show');
			});
			
			e.stopPropagation();
			e.preventDefault();
		});
	</script>
</body>
</html>
