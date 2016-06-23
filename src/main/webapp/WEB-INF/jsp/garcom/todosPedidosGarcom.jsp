<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="">
        <link rel="icon" href="<%=request.getContextPath()%>/resources/estilo/img/favicon.png">
        <title>:: Burguer Soft ::</title>
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
                    <a class="navbar-brand" href="<c:url value='/painelGarcom'/>"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Usuário: ${usuario.funcionario.nome}</a></li>
                     	<li><a href="${linkTo[IndexController].logout}">Sair</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="#">Administrar <span class="sr-only">(current)</span></a></li>
                        <li><a href="<c:url value='/painelGarcom'/>"><i class="fa fa-chevron-left" aria-hidden="true"></i> Voltar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="page-header">Todos os Pedidos</h1>
                    <div class="table-responsive">
                    	<c:forEach items="${pedidoList}" var="pedido">
                    	<div class="panel panel-default">
						  <div class="panel-heading"><b>Mesa:</b> ${pedido.mesa} - <b>Data de processo do pedido:</b> ${pedido.dataPedido}</div>
						  <div class="panel-body no-padding">
	                        <table class="table no-margin">
	                            <thead>
	                                <tr class="success">
	                                    <th>Descrição</th>
	                                    <th class="text-center">Quantidade</th>
	                                    <th class="text-center">Valor</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach items="${pedido.itens}" var="item">
	                                <tr>
	                                    <td>
	                                    	<c:out value="${item.produto.descricao}" />
	                                    </td>
	                                    <td class="text-center">
	                                    	<c:out value="${item.quantidade}" />
	                                    </td>
	                                    <td class="text-center">
	                                    	<c:out value="${item.valor}" />
	                                    </td>
	                                </tr>
	                                </c:forEach>
	                            </tbody>
	                            <tfoot>
	                            	<tr>
	                            		<td class="text-right" colspan="2">
	                            			<strong>Total:</strong>
	                            		</td>
	                            		<td class="text-center">
	                            			<strong>
	                            				<c:out value="${pedido.valorTotal}" />
	                            			</strong>
	                            		</td>
	                            	<tr>
	                            </tfoot>
	                        </table>
						  </div>
						</div> 
                        </c:forEach>
                    </div>
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
