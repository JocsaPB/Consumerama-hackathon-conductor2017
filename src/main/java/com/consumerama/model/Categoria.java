package com.consumerama.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name="gerador", sequenceName="CATEGORIA_SEQ")
public class Categoria {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="gerador")
	@Column(name="ID")
	private Long id;
	
	@Column(name="NOME")
	private String nome;
	
	@OneToMany(mappedBy="categoria")
	private List<Topico> topico;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
