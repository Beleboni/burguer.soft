<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>:: Burguer Soft ::</title>
		<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form class="form-horizontal">
                        <h2 class="page-header">Novo pedido</h2>
                        <div class="form-group">
                            <label for="tipo_produto" class="col-sm-2 control-label">* Numero da mesa:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numero_mesa" placeholder="Número da mesa">
                            </div>
                        </div>                    
                      <div class="form-group">
                        <label for="descricao" class="col-sm-2 control-label">* Selecione seus itens:</label>
                        <div class="col-sm-10">
                          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                              <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                  <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                      Bebidas
                                    </a>
                                  </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                  <div class="panel-body">
                                    <table class="table table-striped table-bordered table-hover">
                                      <thead>
                                        <tr>
                                          <th>Descrição</th>
                                          <th>Quantidade</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td> <label><input type="checkbox"> Brahma</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                          </tr>
                                          <tr>
                                          <td> <label><input type="checkbox"> Colonia</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                        </tr>
                                          <tr>
                                          <td> <label><input type="checkbox"> Proibida</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                              <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                  <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                      Janta
                                    </a>
                                  </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                  <div class="panel-body">
                                    <table class="table table-striped table-bordered table-hover">
                                      <thead>
                                        <tr>
                                          <th>Descrição</th>
                                          <th>Quantidade</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td> <label><input type="checkbox"> X-Salada</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                          </tr>
                                          <tr>
                                          <td> <label><input type="checkbox"> X-Salada</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                              <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                  <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                      Lanches
                                    </a>
                                  </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                  <div class="panel-body">
                                    <table class="table table-striped table-bordered table-hover">
                                      <thead>
                                        <tr>
                                          <th>Descrição</th>
                                          <th>Quantidade</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td> <label><input type="checkbox"> X-Salada</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                          </tr>
                                          <tr>
                                          <td> <label><input type="checkbox"> X-Salada</label></td>
                                          <td>
                                            <select class="form-control">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>  
                                          </td>  
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
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
                          <button type="submit" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Montar pedido</button>
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
    