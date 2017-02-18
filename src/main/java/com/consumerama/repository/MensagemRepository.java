package com.consumerama.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.consumerama.model.Mensagem;

public interface MensagemRepository extends JpaRepository<Mensagem, Long> {

}
