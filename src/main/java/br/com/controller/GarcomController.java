package br.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dao.ItemPedidoDAO;
import br.com.dao.PedidoDAO;
import br.com.dao.ProdutoDAO;
import br.com.enums.StatusPedido;
import br.com.enums.TipoProduto;
import br.com.exception.DAOException;
import br.com.model.ItemPedido;
import br.com.model.Pedido;
import br.com.model.Produto;
import br.com.session.UsuarioSessao;

@Controller
public class GarcomController {

	@Inject
	private ProdutoDAO produtoDAO;

	@Inject
	private Result result;

	@Inject
	private PedidoDAO pedidoDAO;

	@Inject
	private UsuarioSessao usuarioSessao;
	
	@Inject
	private ItemPedidoDAO itemPedidoDAO;

	private Produto produto = new Produto();

	@Get("/montar_cardapio_bebidas")
	public void montar_cardapio_bebidas() {
		if (produto != null) {
			result.include("produto", produto);
		}

	}

	@Get("/novoPedido")
	public void novoPedido() {
		Map<TipoProduto, List<Produto>> produtos = new HashMap<TipoProduto, List<Produto>>();
		for (TipoProduto tipo : TipoProduto.values()) {
			produtos.put(tipo, produtoDAO.findByTipoProduto(tipo));
		}
		result.include("produtos", produtos);
	}

	@Post("/cadastrar_bedida")
	public void cadastrar_bebida(Produto produto) {
		if (produto != null) {
			try {
				produtoDAO.salvar(produto);
				result.redirectTo(GarcomController.class).painelGarcom();
			} catch (DAOException e) {
				e.printStackTrace();
			}
		}
	}

	@Get("/painelGarcom")
	public List<Produto> painelGarcom() {
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

	@Get("/todosPedidosGarcom")
	public List<Pedido> todosPedidosGarcom() {
		List<Pedido> pedidos = pedidoDAO.findPedidoPorStatus(StatusPedido.EM_PROCESSO);
		
		for (Pedido pedido : pedidos)
			pedido.setItens(itemPedidoDAO.findByPedido(pedido));
		
		return pedidos;
	}

	@Post("/salvarPedido")
	public void salvarPedido(Pedido pedido, List<ItemPedido> itens) {
		try {
			pedido.setFuncionario(usuarioSessao.getFuncionario());	
			pedidoDAO.salvar(pedido);
			this.salvarItens(itens, pedido);
			
			result.redirectTo(this).painelGarcom();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
	
	private void salvarItens(List<ItemPedido> itens, Pedido pedido) {
		for (ItemPedido ip : itens) {
			if (ip.getProduto() != null && ip.getProduto().getCodigo() != null) {
				try {
					ip.setProduto(produtoDAO.buscar(Produto.class, ip.getProduto().getCodigo()));
					ip.setPedido(pedido);
					itemPedidoDAO.salvar(ip);
				} catch (DAOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
