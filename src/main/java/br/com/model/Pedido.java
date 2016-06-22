package br.com.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.enums.StatusPedido;
import br.com.interfaces.UsoCodigo;

@Entity
public class Pedido implements UsoCodigo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	@Column(nullable = false, length = 10)
	private Integer mesa;
	@Temporal(TemporalType.DATE)
	private Date dataPedido = new Date();
	
	@Enumerated(EnumType.STRING)
	@Column(nullable = false, length = 30)
	private StatusPedido statusPedido = StatusPedido.EM_PROCESSO;
	
	@ManyToOne(optional = false, targetEntity = Funcionario.class)
	private Funcionario funcionario;
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<ItemPedido> itens;
	
	
	public Pedido() {
		
	}

	@Override
	public Long getCodigo() {
		return this.codigo;
	}

	public Integer getMesa() {
		return mesa;
	}

	public void setMesa(Integer mesa) {
		this.mesa = mesa;
	}

	public Date getDataPedido() {
		return dataPedido;
	}

	public void setDataPedido(Date dataPedido) {
		this.dataPedido = dataPedido;
	}

	public StatusPedido getStatusPedido() {
		return statusPedido;
	}

	public void setStatusPedido(StatusPedido statusPedido) {
		this.statusPedido = statusPedido;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public List<ItemPedido> getItens() {
		return itens;
	}

	public void setItens(List<ItemPedido> itens) {
		this.itens = itens;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	
}
