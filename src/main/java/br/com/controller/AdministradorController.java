package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.FuncionarioDAO;
import br.com.exception.DAOException;
import br.com.model.Funcionario;

@Controller
public class AdministradorController {

	@Inject
	private FuncionarioDAO funcionarioDAO;

	@Inject
	private Result result;

	private Funcionario funcionario = new Funcionario();

	@Get("/cadastro")
	public void cadastro() {
		if (funcionario != null) {
			result.include("funcionario", funcionario);
		}
	}

	@Post("/cadastrar_colaborador")
	public void cadastrar(Funcionario funcionario) {
		if (funcionario != null) {
			try {
				funcionarioDAO.salvar(funcionario);
			} catch (DAOException e) {
				// TODO: handle exception
			}
		}
		result.forwardTo(AdministradorController.class).cadastro();
	}

}
