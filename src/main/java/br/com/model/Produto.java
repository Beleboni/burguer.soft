package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import br.com.enums.Status;
import br.com.interfaces.UsoCodigo;

@Entity
@NamedQueries({
	@NamedQuery(name = "Produto.TODAS_BEBIDAS", query = "select p from Produto p where p.tipoProduto = 'Bebida'"),
	@NamedQuery(name = "Produto.TODOS_LANCHES", query = "select p from Produto p where p.tipoProduto = 'Lanche'")
})
public class Produto implements UsoCodigo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	@Column(nullable = false, length = 30)
	private String tipoProduto;
	@Column(nullable = false, length = 30)
	private Double valor;
	@Column(nullable = false, length = 200)
	private String descricao;

	@Enumerated(EnumType.STRING)
	@Column(nullable = false, length = 30)
	private Status status = Status.ATIVO;

	public Produto() {

	}

	public Produto(Long codigo, String tipoProduto, Double valor,
			String descricao, Status status) {
		super();
		this.codigo = codigo;
		this.tipoProduto = tipoProduto;
		this.valor = valor;
		this.descricao = descricao;
		this.status = status;
	}

	@Override
	public Long getCodigo() {
		return this.codigo;
	}

	public String getTipoProduto() {
		return tipoProduto;
	}

	public void setTipoProduto(String tipoProduto) {
		this.tipoProduto = tipoProduto;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

}
