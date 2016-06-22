package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import br.com.interfaces.UsoCodigo;

@Entity
public class ItemPedido implements UsoCodigo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigoItem;
	@ManyToOne(optional = false, targetEntity = Produto.class)
	private Produto produto;
	
	@ManyToOne
	private Pedido pedido;
	
	@Column(nullable = false, length = 30)
	private Double valor;
	@Column(nullable = false, length = 30)
	private Integer quantidade;
	@Column(nullable = true, length = 30)
	private String statusItemPedido;

	public ItemPedido() {
		super();
	}

	public Long getCodigoItem() {
		return codigoItem;
	}

	public void setCodigoItem(Long codigoItem) {
		this.codigoItem = codigoItem;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public String getStatusItemPedido() {
		return statusItemPedido;
	}

	public void setStatusItemPedido(String statusItemPedido) {
		this.statusItemPedido = statusItemPedido;
	}

	@Override
	public Long getCodigo() {
		return this.codigoItem;
	}

}
