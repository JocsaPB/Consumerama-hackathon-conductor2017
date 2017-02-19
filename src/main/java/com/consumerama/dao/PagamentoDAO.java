package com.consumerama.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class PagamentoDAO {
	
	@PersistenceContext
	private EntityManager manager;

}
