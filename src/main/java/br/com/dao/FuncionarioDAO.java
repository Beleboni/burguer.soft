package br.com.dao;

import javax.enterprise.context.RequestScoped;

import br.com.model.Funcionario;

@RequestScoped
public class FuncionarioDAO extends HibernateDAO<Funcionario> {

}
