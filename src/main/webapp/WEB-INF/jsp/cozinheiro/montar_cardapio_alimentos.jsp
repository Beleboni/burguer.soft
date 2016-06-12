<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>::Burguer Soft::</title>
        <link rel="icon" href="estilo/img/favicon.png">
        <title>:: Burguer Soft ::</title>
		<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />	
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form action="<c:url value='/cadastrar_produto'/>" method="post" class="form-horizontal">
                        <h2 class="page-header">Cadastrar novo produto</h2>
                        <div class="form-group">
                            <label for="tipo_produto" class="col-sm-2 control-label">* Tipo de produto:</label>
                            <div class="col-sm-10">
                                <select name="produto.tipoProduto" class="form-control">
                                  <option value="Lanche">Lanche</option>
                                  <option value="Almoco">Almo�oo</option>
                                  <option value="Janta">Janta</option>
                                  <option value="Cafe">Caf�</option>
                                  <option value="Sobremesa">Sobremesa</option>
                                </select>
                            </div>
                        </div>                    
                      <div class="form-group">
                        <label for="descricao" class="col-sm-2 control-label">* Descri��o:</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" rows="5" name="produto.descricao" placeholder="Descri��o do produto"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="valor_unitario" class="col-sm-2 control-label">* Valor unit�rio:</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" name="produto.valor" placeholder="Valor unit�rio">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-sm-2 control-label"></div>
                        <div class="col-sm-10">
                            <p>* Campos obrigat�rio</p>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-primary"><i class="fa fa-check" aria-hidden="true"></i> Cadastrar item</button>
                            <button type="submit" class="btn btn-warning"><i class="fa fa-times" aria-hidden="true"></i> Cancelar</button>
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script src="estilo/js/jquery.js"></script>
        <script src="estilo/js/bootstrap.min.js"></script>
        <script src="estilo/js/scripts.js"></script>
    </body>
</html>
    