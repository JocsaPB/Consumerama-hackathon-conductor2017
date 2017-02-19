package com.consumerama.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.consumerama.model.Categoria;
import com.consumerama.model.Usuario;

@Repository
public class UsuarioDAO {

	@PersistenceContext
	private EntityManager manager;

	public Usuario logar(Usuario usuario) {
		try {
			return (Usuario) this.manager
					.createQuery("select u from Usuario u where u.email = :email and u.senha = :senha")
					.setParameter("email", usuario.getEmail())
					.setParameter("senha", usuario.getSenha()).getSingleResult();
			
		} catch (NoResultException exception) {
			return null;
		}
	}
	
	public Usuario findOneByEmail (String email) {
		try {
			return (Usuario) this.manager.createQuery("select u from Usuario u where u.email = :email")
					.setParameter("email", email)
					.getSingleResult();
		} catch (NoResultException exception) {
			return null;
		}
	}
	
	public List<Categoria> findMyCategorias(Usuario usuario){
		return (List<Categoria>) this.manager.createQuery("select distinct p.categoria from Pagamento p join p.categoria join p.usuario where p.usuario = :usuario")
			 .setParameter("usuario", usuario).getResultList();
	}

}
