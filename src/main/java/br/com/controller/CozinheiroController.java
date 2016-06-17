package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.ProdutoDAO;
import br.com.exception.DAOException;
import br.com.model.Produto;

@Controller
public class CozinheiroController {

	@Inject
	private ProdutoDAO produtoDAO;
	
	@Inject
	private Result result;
	
	private Produto produto = new Produto();
	
	
	@Get("/montar_cardapio_alimentos")
	public void montar_cardapio_alimentos(){
		
		if(produto != null){
			result.include("produto", produto);
		}
		
	}
	
	@Get("/painelCozinheiro")
	public List<Produto> painelCozinheiro(){
		return produtoDAO.findProdutosCozinha();		
	}
	
	
	@Post("/cadastrar_produto")
	public void cadastrar_produto(Produto produto){
		if(produto != null){
			try {
				produtoDAO.salvar(produto);
				result.redirectTo(CozinheiroController.class).painelCozinheiro();
			} catch (DAOException e) {
				// TODO: handle exception
			}
		}
	}
	
}
