package br.com.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.enums.StatusPedido;
import br.com.model.Pedido;

@RequestScoped
public class PedidoDAO extends HibernateDAO<Pedido> {
	
	public List<Pedido> findPedidoPorStatus(StatusPedido statusPedido){
		this.conectar();
		try{
			TypedQuery<Pedido> query = em.createNamedQuery("Pedido.TODOS_PEDIDOS", Pedido.class);
			query.setParameter(1, statusPedido);
			return query.getResultList();
		}finally{
			this.finalizar();
		}
	}
	

}
