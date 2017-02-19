package com.consumerama.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.consumerama.model.Categoria;
import com.consumerama.model.Topico;

@Repository
public class TopicoDAO {

	@PersistenceContext
	private EntityManager manager;

	public List<Topico> getUltimosTopicos() {
		return (List<Topico>) manager.createQuery("select t from Topico t order by t.id desc").setMaxResults(3)
				.getResultList();
	}

	public List<Topico> getTopicosPorCategoria(Categoria categoria) {
		return (List<Topico>) manager.createQuery("select t from Topico t where t.categoria = :categoria").
				setParameter("categoria", categoria).getResultList();
	}
	
}
