<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: Burguer Soft ::</title>
<link href="<%=request.getContextPath()%>/resources/estilo/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/css_sistema/estilo.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/estilo/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-offset-3 col-md-6">
                    <div class="form-login fundo_login">
                    <h4 class="center_h4"><i class="fa fa-user fa-5x" aria-hidden="true"></i></h4>
                    <form method="post" action="painel.php">
                        <input type="email" id="email" class="form-control input-lg chat-input" placeholder="Digite seu e-mail" />
                        <br/>
                        <input type="password" id="senha" class="form-control input-lg chat-input" placeholder="Digite sua senha" />
                        <br/>
                        <div class="wrapper">
                        <span class="group-btn">     
                            <button type="submit" class="btn btn-primary">Acessar sistema <i class="fa fa-sign-in"></i></button>
                        </span>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>	
</body>
</html>