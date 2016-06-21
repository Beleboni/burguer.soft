<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <h1><i class="fa fa-cutlery fa-lg" aria-hidden="true"></i> Burguer soft</h1>
            <p>Sistema para gerenciamento de restaurantes, bares e lanchonetes</p>
        </div>
    </div>
	
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="page-header ">Qual é o seu segmento ?</h3>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                    <img src="<%=request.getContextPath()%>/resources/estilo/img/bar.jpg" alt="Bares" class="img-thumbnail">
                </div>
                <h2>Bares</h2>
                <p>Com muitas horas de atendimentos e muitos clientes pode ocorrer vários erros um atrás do outro principalmente no caixa. Não querendo mais que isso acontece temos um ótimo sistema para seu bar. Experimente! </p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/cafe.jpg" alt="Padarias" class="img-thumbnail">
                </div>
                <h2>Padarias</h2>
                <p>Uma exalta jornada essa de manter a padaria não é ?. Chega nos horários de pico você não quer se estressar com os clientes e mantendo o sistema antigo que é nos papais essa realidade não mudará, só será possível com um sistema gerenciador que temos para você, desafio a fazer um teste. </p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/restaurante.jpg" alt="Bares" class="img-thumbnail">
                </div>
                <h2>Restaurantes</h2>
                <p>É difícil encontrar hoje em dia garçom que presta um bom atendimento ao público não é, pensando nisso produzimos um ótimo aplicativo que pode ser acessado por cada cliente em sua mesa e fazer os pedidos desejados. Dando até a possibilidade de reduzir custo com funcionários.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">                
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/lanche.jpg" alt="Bares" class="img-thumbnail">
                </div>
                <h2>Lanchonetes</h2>
                <p>Como que está sua lanchonete hoje?  Desorganizadas na hora de mandar os lanches para serem feitos?,  muitos pedidos trocados? Indo lanche para os clientes sem algum ingrediente? Pois é esta em suas mãos um organizado sistema de pedidos que através da será gerado uma lista de pedidos e encaminhado diretamente para a cozinha. </p>

            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">                
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/pizzaria.jpg" alt="Bares" class="img-thumbnail">
                </div>
                <h2>Pizzaria</h2>
                <p>A cada semana muda o seu entregador de pizza e você precisa saber nas notas qual dos funcionários fez a entrega? Com esse sistema você faz o cadastro do se colaborador em no máximo dois minutos, e para deleta-lo então menos ainda, Faça parte de milhares de pizzaria que tem ótimas experiências como nosso sistema.</p>
                
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">                
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/cafeteria.jpg" alt="Cafe" class="img-thumbnail">
                </div>
                <h2>Cafeterias</h2>
                <p>Tendo dúvida se seus funcionários então fechando o caixa de uma forma correta, ou a pessoa que você deixou no caixa está com dificuldades na hora de calcular os trocos por ter grande fluxo de clientes a todo momento, esse sistema vem tirar essa dor de cabeça que passa todos dias. Coloque já em sua padaria um gerenciador de caixa.</p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="page-header">Diferenciais do Burguer soft</h3>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/mobile.png" alt="Acesse via mobile" class="img-thumbnail">
                </div>
                <h2>Acesse via mobile</h2>
                <p>Nosso sistema se adapta a qualquer dispositivo móvel, seja, desktop, tablet ou celular</p>
                
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/cardapio.png" alt="Cardapio" class="img-thumbnail">
                </div>
                <h2>Cardápio na tela do celular</h2>
                <p>Elimine comandas ou fichas, faça o pedido pelo próprio celular e garanta controle na produção</p>
               
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
               <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/colaborador.png" alt="Colaboradores" class="img-thumbnail">
               </div>
                <h2>Gerencie colaboradores</h2>
                <p>Nosso sistema permite que você crie cargos e responsabilidades para cada colaborador, cada um com seu painel especifico</p>
               
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="page-header">Nossa equipe</h3>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/fernando.jpg" alt="Fernando" class="img-thumbnail">
                </div>
                <h2>Fernando Beleboni</h2>
                <p>Desenvolvedor back-end da Burguer soft</p>
               
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="clearfix text-center">
                <img src="<%=request.getContextPath()%>/resources/estilo/img/josue.jpg" alt="Josue" class="img-thumbnail">
                </div>
                <h2>Josué Lopes</h2>
                <p>Desenvolvedor front-end da Burguer soft</div>
        </div>
    </div>
    <div class="espaco">
    
    </div>
     <div class="rodape">
        <div class="clearfix"> 
        	<div class="container">
        		<p class="detalhe">Contate-nos: <i class="fa fa-phone" aria-hidden="true"></i> (49) 8418-5254 - 
        		<i class="fa fa-industry" aria-hidden="true"></i> Xanxerê - SC - <i class="fa fa-envelope" aria-hidden="true"></i> comercial@burguer.soft.com.br</p>
        	</div> 
        </div>
    </div>
	<script src="<%=request.getContextPath()%>/resources/estilo/js/jquery.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/bootstrap.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/estilo/js/scripts.js"></script>
</body>
</html>
