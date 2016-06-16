package br.com.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.enums.TipoProduto;
import br.com.model.Produto;

@RequestScoped
public class ProdutoDAO extends HibernateDAO<Produto> {

	// BUSCAS ESPECIFICAS - LISTAR TODAS AS BEBIDAS
	public List<Produto> findByTipoProduto(TipoProduto tipoProduto) {
		this.conectar();
		try {
			TypedQuery<Produto> query = em.createNamedQuery(
					"Produto.PRODUTOS_POR_TIPO", Produto.class);
			query.setParameter(1, tipoProduto);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}

	// BUSCAS ESPECIFICAS - LISTAR TODAS AS BEBIDAS
		public List<Produto> findProdutosCozinha() {
			this.conectar();
			try {
				TypedQuery<Produto> query = em.createNamedQuery(
						"Produto.PRODUTOS_COZINHA", Produto.class);
				return query.getResultList();
			} finally {
				this.finalizar();
			}
		}
	
}
