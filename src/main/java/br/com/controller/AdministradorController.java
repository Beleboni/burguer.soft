package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dao.FuncionarioDAO;
import br.com.dao.ProdutoDAO;
import br.com.exception.DAOException;
import br.com.model.Funcionario;
import br.com.model.Produto;

@Controller
public class AdministradorController {

	@Inject
	private FuncionarioDAO funcionarioDAO;
	
	@Inject
	private ProdutoDAO produtoDAO;

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
				result.redirectTo(this).painelAdministrativo();
			} catch (DAOException e) {
				// TODO: handle exception
			}
		}
	}
	
	@Get("/painel_administrativo")
	public List<Funcionario> painelAdministrativo () {	
		result.include("produtos", produtoDAO.listar(Produto.class));
		return funcionarioDAO.listar(Funcionario.class);
	}
	
	
	
	@Get("/funcionario/{funcionario.codigo}/modalAlterar")
	public Funcionario modalAlterar(Funcionario funcionario){
		return funcionarioDAO.buscar(Funcionario.class, funcionario.getCodigo());
	}
	
	
	@Put("/alterar/{funcionario.codigo}/funcionario")
	public void alterar(Funcionario funcionario){
		try {
			funcionarioDAO.salvar(funcionario);
			result.redirectTo(this).painelAdministrativo();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
	
	@Get("/todosPedidosAdministrador")
	public void todosPedidosAdministrador(){
		
	}
}
