<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>::Burguer Soft::</title>
    <link rel="icon" href="estilo/img/favicon.png">
    <link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   	<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/dashboard.css" rel="stylesheet" type="text/css" /> 

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
                <a class="navbar-brand" href="#">Burguer Soft</a>
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
                    <li class="active"><a href="#">Administrar <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Novo colaborador</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                    <li><a href="">Todos os pedidos</a></li>
                    <li><a href="">Cardápio de bebidas</a></li>
                    <li><a href="">Cardápio de comidas</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h2 class="sub-header">Todos os colaboradores</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Telefone</th>
                                <th>Status</th>
                                <th>Setor</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${funcionarioList}" var="funcionario">
                            <tr>
                                <td>${funcionario.nome}</td>
                                <td>${funcionario.telefone}</td>
                                <td>${funcionario.status}</td>
                                <td>${funcionario.setor}</td>
                                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                            </tr>
                            </c:forEach>
                       </tbody>
                    </table>
                </div>

                <h2 class="sub-header">Cardápio de bebidas</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Descrição</th>
                                <th>Valor</th>
                                <th>Status</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${bebidas}" var="bebida">
                            <tr>
                                <td>${bebida.descricao}</td>
                                <td>${bebida.valor}</td>
                                <td>${bebida.status}</td>
                                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <h2 class="sub-header">Cardápio de lanches</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Descrição</th>
                                <th>Valor</th>
                                <th>Status</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${lanches}" var="lanche">
                            <tr>
                                <td>${lanche.descricao}</td>
                                <td>${lanche.valor}</td>
                                <td>${lanche.status}</td>
                                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="estilo/js/jquery.js"></script>
    <script src="estilo/js/bootstrap.min.js"></script>
    <script src="estilo/js/scripts.js"></script>
</body>

</html>