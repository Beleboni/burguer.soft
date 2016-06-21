<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: Burguer Soft ::</title>
<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer soft</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Acessar</b> <span class="caret"></span></a>
					<ul id="login-dp" class="dropdown-menu">
						<li>
							<div class="row">
								<div class="col-md-12">
									<form class="form" role="form" method="post" action="${linkTo[IndexController].confereUsuario}" id="login-nav">
										<div class="form-group">
											<label class="sr-only" for="usuario">Usuário</label> 
											<input type="text" class="form-control" id="usuario" name="usuario"	placeholder="Usuário" required>
										</div>
										<div class="form-group">
											<label class="sr-only" for="senha">Senha</label> 
											<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Senha" name="senha" required>
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-primary btn-block">
												<i class="fa fa-check" aria-hidden="true"></i> Acessar
											</button>
										</div>	
									</form>
								</div>
							</div>
						</li>
					</ul></li>
			</ul>
		</div>
	</nav>
	
	<c:if test="${not empty errors}">
		<div class="alert alert-danger alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<c:out value="${errors[0].message}" />
		</div>
	</c:if>
	
	<div class="jumbotron banner margin_top">
		<div class="container">
			<h1 class="cor_fonte_banner">
				<i class="fa fa-cutlery fa-lg" aria-hidden="true"></i> Burguer soft
			</h1>
			<p class="cor_fonte_banner">Sistema para gerenciamento de restaurantes, bares e lanchonetes</p>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-header">Qual é o seu segmento ?</h3>
			</div>
			<div class="col-md-4">
				<img
					src="<%=request.getContextPath()%>/resources/estilo/img/bar.jpg" alt="Bares" class="img-thumbnail">
				<h2>Bares</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
			</div>
			<div class="col-md-4">
				<img
					src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Padarias</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
			</div>
			<div class="col-md-4">
				<img
					src="<%=request.getContextPath()%>/resources/estilo/img/restaurante.jpg" alt="Bares" class="img-thumbnail">
				<h2>Restaurantes</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>

			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/lanche.jpg" alt="Bares" class="img-thumbnail">
				<h2>Lanchonetes</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>

			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/pizzaria.jpg" alt="Bares" class="img-thumbnail">
				<h2>Pizzaria</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>

			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafeteria.jpg" alt="Cafe" class="img-thumbnail">
				<h2>Cafeterias</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-header">Diferenciais do Burguer soft</h3>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Acesse via mobile</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Cardápio na tela do celular</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Gerencie colaboradores</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-header">Nossa equipe</h3>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Fernando Beleboni</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Josué Lopes</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
		</div>

	</div>
	<script src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>
</html>
