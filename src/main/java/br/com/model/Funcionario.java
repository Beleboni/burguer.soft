package br.com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.enums.Status;
import br.com.interfaces.UsoCodigo;

@Entity
public class Funcionario implements UsoCodigo {

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
	private Date admissao = new Date();
	@Column(nullable = false, length = 30)
	private String usuario;
	@Column(nullable = false, length = 30)
	private String senha;

	@Enumerated(EnumType.STRING)
	@Column(nullable = false, length = 30)
	private Status status = Status.ATIVO;

	public Funcionario() {

	}

	public Funcionario(Long codigo, String nome, String cpf, String telefone,
			String setor, Date admissao, String usuario, String senha,
			Status status) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.cpf = cpf;
		this.telefone = telefone;
		this.setor = setor;
		this.admissao = admissao;
		this.usuario = usuario;
		this.senha = senha;
		this.status = status;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getSetor() {
		return setor;
	}

	public void setSetor(String setor) {
		this.setor = setor;
	}

	public Date getAdmissao() {
		return admissao;
	}

	public void setAdmissao(Date admissao) {
		this.admissao = admissao;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
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

	@Override
	public Long getCodigo() {
		return this.codigo;
	}

}
