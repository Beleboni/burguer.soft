<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<a class="navbar-brand" href="<c:url value='/painelGarcom'/>"><i
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
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<form class="form-horizontal" action="/listaPedido" method="post">
					<h2 class="page-header">Novo pedido</h2>
					<div class="form-group">
						<label for="tipo_produto" class="col-sm-2 control-label">
							Número da mesa *</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" name="pedido" id="numero_mesa"
								placeholder="Número da mesa" required="required">
						</div>
					</div>
					
					<div class="form-group">
						<label for="descricao" class="col-sm-2 control-label">
							Selecione seus itens *
						</label>
						<div class="col-sm-10">
							<c:forEach var="map" items="${produtos}" varStatus="status">
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="heading-${status.index}">
											<h4 class="panel-title">
												<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-${status.index}" aria-expanded="true" 
													aria-controls="collapse-${status.index}">
													${map.key.nome}
												</a>
											</h4>
										</div>
										<div id="collapse-${status.index}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-${status.index}">
											<div class="panel-body">
												<table class="table table-striped table-bordered table-hover">
													<thead>
														<tr>
															<th>Descrição</th>
															<th>Quantidade</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="produto" items="${map.value}">
															<tr>
																<td>
																	<label>
																		<input type="checkbox"> ${produto.descricao}
																	</label>
																</td>
																<td>
																	<input class="form-control col-md-2" type="number">
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
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
								<i class="fa fa-shopping-cart" aria-hidden="true"></i> Montar
								pedido
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
