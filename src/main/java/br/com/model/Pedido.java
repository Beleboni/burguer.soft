package br.com.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.interfaces.UsoCodigo;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Pedido implements UsoCodigo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	@Column(nullable = false, length = 10)
	private Integer mesa;
	@Temporal(TemporalType.DATE)
	private Date dataPedido;
	@Column(nullable = false, length = 30)
	private String status;
	
	@ManyToOne(optional = false, targetEntity = Funcionario.class)
	private Funcionario funcionario;
	
	@OneToMany(cascade = CascadeType.PERSIST)
	private ItemPedido itemPedido;
	
	@Override
	public Long getCodigo() {
		return this.codigo;
	}

	

	
}
