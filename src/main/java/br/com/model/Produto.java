package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
	@Column(nullable = false, length = 30)
	private String status;
	
	
	@Override
	public Long getCodigo() {
		return this.codigo;
	}
}
