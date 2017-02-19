package com.consumerama.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.consumerama.model.Mensagem;
import com.consumerama.model.Topico;

@Repository
public class MensagemDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public List<Mensagem> findMensagemByTopico(Topico topico){
		return (List<Mensagem>) this.manager.createQuery("select m from Mensagem m where m.topico = :topico")
				.setParameter("topico", topico).getResultList();
	}
	
}
