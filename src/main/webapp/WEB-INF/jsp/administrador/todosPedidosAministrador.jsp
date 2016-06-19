
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
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
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value='/painel_administrador'/>"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Costel�o Restaurante</a></li>
                        <li><a>Usu�rio: Pedro da Silva</a></li>
                        <li><a href="index.html">Sair</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="#">Administrar <span class="sr-only">(current)</span></a></li>
                        <li><a href="<c:url value='/painel_administrador'/>">Voltar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="page-header">Todos os Pedidos</h1>
                    <div class="table-responsive">
                        <h3>Mesa: 02</h3>
                        <table class="table">
                            <thead>
                                <tr class="success">
                                    <th>Descrição</th>
                                    <th>Quantidade</th>
                                    <th>Status</th>
                                    <th>Ação</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>X-Salada</td>
                                    <td>2</td>
                                    <td>Em processo</td>
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true" ></i></a>
                                     </td>
                                </tr>
                            </tbody>
                        </table>
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
