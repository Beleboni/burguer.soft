package br.com.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.model.Produto;

@RequestScoped
public class ProdutoDAO extends HibernateDAO<Produto> {
	
	//BUSCAS ESPECIFICAS - LISTAR TODAS AS BEBIDAS
	public List<Produto> findTodasBebidas() {
		this.conectar();
		try {
			TypedQuery<Produto> query = em.createNamedQuery("Produto.TODAS_BEBIDAS", Produto.class);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	//LISTAR TODOS OS LANCHES
	public List<Produto> findTodosLanches(){
		this.conectar();
		
		try{
			TypedQuery<Produto> query = em.createNamedQuery("Produto.TODOS_LANCHES", Produto.class);
			return query.getResultList();
		}finally{
			this.finalizar();
		}
	}
	
	
	
}
