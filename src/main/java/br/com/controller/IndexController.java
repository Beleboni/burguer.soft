package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.dao.FuncionarioDAO;
import br.com.model.Funcionario;
import br.com.session.UsuarioSessao;

@Controller
public class IndexController {

	private final Result result;

	private Validator validator;

	Funcionario funcionario = new Funcionario();

	FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

	private UsuarioSessao usuarioSessao;

	protected IndexController() {
		this(null, null, null, null);
	}

	@Inject
	public IndexController(Result result, Validator validator,
			UsuarioSessao usuarioSessao, FuncionarioDAO funcionarioDAO) {
		this.result = result;
		this.validator = validator;
		this.usuarioSessao = usuarioSessao;
		this.funcionarioDAO = funcionarioDAO;
	}

	@Path("/")
	public void index() {

	}

	@Post("/confereUsuario")
	public void confereUsuario(String usuario, String senha) {
		Funcionario funcionario = funcionarioDAO.findByUsuario(usuario);
		validator.check(funcionario != null, new SimpleMessage("usuario",
				"Usuário inválido"));
		validator.check(
				funcionario != null && funcionario.verificaUsuario(senha),
				new SimpleMessage("senha", "Senha inválida"));
		validator.onErrorRedirectTo(this).index();

		usuarioSessao.login(funcionario);

		funcionario.getSetor().redirecionarParaPainel(result);
	}

	@Get("/logout")
	public void logout() {
		usuarioSessao.setFuncionario(null);
		result.redirectTo(IndexController.class).index();
	}

}