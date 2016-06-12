package br.com.dao;

import javax.enterprise.context.RequestScoped;

import br.com.model.Produto;

@RequestScoped
public class ProdutoDAO extends HibernateDAO<Produto> {

}
