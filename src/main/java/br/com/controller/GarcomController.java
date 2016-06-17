package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dao.ProdutoDAO;
import br.com.enums.TipoProduto;
import br.com.exception.DAOException;
import br.com.model.Produto;

@Controller
public class GarcomController {
	
	@Inject
	private ProdutoDAO produtoDAO;
	
	@Inject
	private Result result;
	
	private Produto produto = new Produto();
	
	@Get("/montar_cardapio_bebidas")
	public void montar_cardapio_bebidas(){
		if(produto != null){
			result.include("produto", produto);
		}
		
	}
	
	@Post("/cadastrar_bedida")
	public void cadastrar_bebida(Produto produto){
		if(produto != null){
			try {
				produtoDAO.salvar(produto);
				result.redirectTo(GarcomController.class).painelGarcom();
			} catch (DAOException e) {
				// TODO: handle exception
			}
		}
	}
	
	@Get("/painelGarcom")
	public List<Produto> painelGarcom(){
		return produtoDAO.findByTipoProduto(TipoProduto.BEBIDA);
	}
	
	@Get("/modalAlterar/{produto.codigo}")
	public Produto modalAlterar(Produto produto) {
		return produtoDAO.buscar(Produto.class, produto.getCodigo());
	}
	
	@Put("/alterar/{produto.codigo}")
	public void alterar(Produto produto) {
		try {
			produto.setTipoProduto(TipoProduto.BEBIDA);
			produtoDAO.salvar(produto);
			result.redirectTo(this).painelGarcom();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}

}
