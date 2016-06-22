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
        <link rel="stylesheet" href="estilo/css_sistema/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilo/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="estilo/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="estilo/css_sistema/dashboard.css" type="text/css" />
        <link rel="stylesheet" href="estilo/css_sistema/estilo_login.css" type="text/css" />	
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
                    <a class="navbar-brand" href="painel_administrativo.html"><i class="fa fa-cutlery" aria-hidden="true"></i> Burguer Soft</a>
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
                <div class="col-md-12">

                    <h1 class="page-header">Confere Pedido</h1>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Descrição</th>
                                    <th>Quantidade</th>
                                    <th>Valor</th>
                                    <th class="text-center">Alterar</th>
                                    <th class="text-center">Excluir</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Descrição</td>
                                    <td>Quantidade</td>
                                    <td>Valor</td>
                                    <td class="text-center"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                                    <td class="text-center"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></td>
                                </tr>
                                <tr>
                                    <td>Descrição</td>
                                    <td>Quantidade</td>
                                    <td>Valor</td>
                                    <td class="text-center"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                                    <td class="text-center"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    
                    <div class="row">
                        <div class="form-group margin_top">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-cart-plus" aria-hidden="true"></i> Adicionar item</button>
                                <button type="submit" class="btn btn-success"><i class="fa fa-check" aria-hidden="true"></i> Concluir pedido</button>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>    
        <script src="estilo/js/jquery.js"></script>
        <script src="estilo/js/bootstrap.min.js"></script>
        <script src="estilo/js/scripts.js"></script>
    </body>
</html>


