package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

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
public class ItemPedido implements UsoCodigo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigoItem;
	@ManyToOne(optional =false, targetEntity = Produto.class)
	private Produto produto;
	@ManyToOne(optional = false, targetEntity = Pedido.class)
	private Pedido pedido;
	@Column(nullable = false, length = 30)
	private Double valor;
	@Column(nullable = false, length = 30)
	private Integer quantidade;
	@Column(nullable = false, length = 30)
	private String statusItemPedido;
	
	
	@Override
	public Long getCodigo() {
		return this.codigoItem;
	}

}
