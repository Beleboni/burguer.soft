package br.com.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.model.Funcionario;

@RequestScoped
public class FuncionarioDAO extends HibernateDAO<Funcionario> {

	/**
	 * Este metódo busca um funcionario pelo seu usuario.
	 * 
	 * @param usuario
	 * @return {@link Funcionario}
	 */
	public Funcionario findByUsuario(String usuario) {
		this.conectar();
		try {
			TypedQuery<Funcionario> query = em.createNamedQuery(
					"Funcionario.POR_USUARIO", Funcionario.class);
			query.setParameter(1, usuario);
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}

}
