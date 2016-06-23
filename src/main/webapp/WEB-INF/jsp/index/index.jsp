<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: Burguer Soft ::</title>
<link rel="icon" href="<%=request.getContextPath()%>/resources/estilo/img/favicon.png">
<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo_login.css" rel="stylesheet" type="text/css" />
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
           <a class="navbar-brand" href="index.html"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer soft</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Acessar</b> <span class="caret"></span></a>
                  <ul id="login-dp" class="dropdown-menu">
                      <li>
                          <div class="row">
                              <div class="col-md-12">
                                  <form class="form" role="form" method="post" action="${linkTo[IndexController].confereUsuario}" id="login-nav">
										<div class="form-group">
											<label class="sr-only" for="usuario">Usu�rio</label> 
											<input type="text" class="form-control" id="usuario" name="usuario"	placeholder="Usu�rio" required>
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
                    </ul>
                </li>
            </ul>
          
        </div>
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
				<h3 class="page-header">Qual � o seu segmento ?</h3>
			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/bar.jpg" alt="Bares" class="img-thumbnail">
				<h2>Bares</h2>
				<p>Com muitas horas de atendimentos e muitos clientes pode ocorrer v�rios erros um atr�s do outro principalmente no caixa. 
				N�o querendo mais que isso acontece temos um �timo sistema para seu bar. Experimente! </p>

			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Padarias</h2>
				<p>Uma exalta jornada essa de manter a padaria n�o ?. Chega nos hor�rios de pico voc� n�o quer se estressar com 
				os clientes e mantendo o sistema antigo que é nos papais essa realidade não mudará, só será possível com um sistema gerenciador que temos para você, desafio a fazer um teste. </p>

			</div>
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/restaurante.jpg" alt="Bares" class="img-thumbnail">
				<h2>Restaurantes</h2>
				<p>Controle seu restaurante at� mesmo com seu celular. Nos desenvolvemos um sistema que gerencia toda a estrutura e os setores para vo��, com
				o burguer soft, voc� pode controlar colaboradores, gerar pedidos e o card�pio do dia.</p>


			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/lanche.jpg" alt="Bares" class="img-thumbnail">
				<h2>Lanchonetes</h2>
				<p>Como que est� sua lanchonete hoje?  Desorganizadas na hora de mandar os lanches para serem feitos?,  
				muitos pedidos trocados? Indo lanche para os clientes sem algum ingrediente? Pois é esta em suas m�os um 
				organizado sistema de pedidos que atrav�s da ser�o gerado uma lista de pedidos e encaminhado diretamente para a cozinha. 

			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/pizzaria.jpg" alt="Bares" class="img-thumbnail">
				<h2>Pizzaria</h2>
				<p>A cada semana muda o seu entregador de pizza e você precisa saber nas notas qual dos funcionários fez a entrega? 
				Com esse sistema você faz o cadastro do se colaborador em no máximo dois minutos, e para deleta-lo então menos ainda, 
				Faça parte de milhares de pizzaria que tem ótimas experiências como nosso sistema.</p>


			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafeteria.jpg" alt="Cafe" class="img-thumbnail">
				<h2>Cafeterias</h2>
				<p>Tendo dúvida se seus funcion�rios ent�o fechando o caixa de uma forma correta, ou a pessoa que voc� deixou no 
				caixa est� com dificuldades na hora de calcular os trocos por ter grande fluxo de clientes a todo momento, esse sistema 
				vem tirar essa dor de cabe�a que passa todos dias. Coloque j� em sua padaria um gerenciador de caixa.</p>

			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<h3 class="page-header">Diferenciais do Burguer soft</h3>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Acesse via mobile</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Card�pio na tela do celular</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Gerencie colaboradores</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<h3 class="page-header">Nossa equipe</h3>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Fernando Beleboni</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
			
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
				<h2>Josu� Lopes</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				
			</div>
		</div>
		
		<div class="rodape">
	        <div class="clearfix">  
	        </div>
    	</div>
    	<div class="pe"></div>
		

	</div>
	<script src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>
</html>
