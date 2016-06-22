package br.com.dao;

import javax.enterprise.context.RequestScoped;

import br.com.model.Pedido;

@RequestScoped
public class PedidoDAO extends HibernateDAO<Pedido> {

}
