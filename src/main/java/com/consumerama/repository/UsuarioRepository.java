package com.consumerama.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.consumerama.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

}
