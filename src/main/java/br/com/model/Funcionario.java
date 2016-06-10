package br.com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@NamedQueries({
	@NamedQuery(name = Funcionario.TODOS, query = "select f from Funcionario a")
})
public class Funcionario implements UsoCodigo {
	
	public static final String TODOS = "TODOS";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	@Column(nullable = false, length = 100)
	private String nome;
	@Column(nullable = false, length = 30)
	private String cpf;
	@Column(nullable = false, length = 30)
	private String telefone;
	@Column(nullable = false, length = 30)
	private String setor;
	
	@Temporal(TemporalType.DATE)
	private Date admissao;
	@Column(nullable = false, length = 30)
	private String usuario;
	@Column(nullable = false, length = 30)
	private String senha;
	@Column(nullable = false, length = 30)
	private String status;
	
	
	@Override
	public Long getCodigo() {
		return this.codigo;
	}
	

}
