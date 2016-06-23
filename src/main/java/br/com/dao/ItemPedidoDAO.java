package br.com.dao;

import java.util.HashSet;
import java.util.Set;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.model.ItemPedido;
import br.com.model.Pedido;

@RequestScoped
public class ItemPedidoDAO extends HibernateDAO<ItemPedido> {
	
	public Set<ItemPedido> findByPedido(Pedido pedido) {
		this.conectar();
		try {
			TypedQuery<ItemPedido> query = em.createNamedQuery("ItemPedido.POR_PEDIDO", ItemPedido.class);
			query.setParameter(1, pedido);
			
			return new HashSet<ItemPedido>(query.getResultList());
		} finally {
			this.finalizar();
		}
	}

}
