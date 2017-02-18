package com.consumerama.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.consumerama.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

}
