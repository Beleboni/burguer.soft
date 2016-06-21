package br.com.session;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.model.Funcionario;

@SessionScoped
@Named("usuario")
public class UsuarioSessao implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Funcionario funcionario;
	
	public void login(Funcionario funcionario){
		this.funcionario = funcionario;
	}
	
	public boolean isLogado(){
		return funcionario != null;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}
	
	
	
}
