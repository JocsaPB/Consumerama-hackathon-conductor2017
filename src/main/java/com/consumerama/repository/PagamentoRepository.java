package com.consumerama.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.consumerama.model.Pagamento;

public interface PagamentoRepository extends JpaRepository<Pagamento, Long>{
	
	

}
