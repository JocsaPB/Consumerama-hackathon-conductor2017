package com.consumerama.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name="gerador", sequenceName="MENSAGEM_SEQ")
public class Mensagem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="gerador")
	
	@Column(name="ID")
	private Long id;
	
	@Column(name="TEXTO")
	private String texto;
	
	@Column(name="CURTIDAS")
	private Integer curtidas;
	
	@ManyToOne
	@JoinColumn(name = "TOPICO_ID")
	private Topico topico;
	
	@ManyToOne
	@JoinColumn(name="ID_USUARIO")
	private Usuario usuario;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Integer getCurtidas() {
		return curtidas;
	}

	public void setCurtidas(Integer curtidas) {
		this.curtidas = curtidas;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Topico getTopico() {
		return topico;
	}

	public void setTopico(Topico topico) {
		this.topico = topico;
	}
	
	
	

}
