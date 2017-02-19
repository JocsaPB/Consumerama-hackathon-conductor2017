package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.consumerama.dao.MensagemDAO;
import com.consumerama.model.Mensagem;
import com.consumerama.model.Topico;
import com.consumerama.repository.MensagemRepository;
import com.consumerama.repository.TopicoRepository;
import com.consumerama.security.UserSession;

@Controller
@RequestMapping("/mensagem")
public class MensagemController {

	@Autowired
	private UserSession userS;
	
	@Autowired
	private TopicoRepository topicoR;
	
	@Autowired
	private MensagemRepository mensagemR;
	
	@Autowired
	private MensagemDAO mensagemD;
	
	@PostMapping("nova/{topicoId}")
	public ModelAndView mensagem(Mensagem mensagem, @PathVariable Long topicoId){
		
		Topico topico = topicoR.findOne(topicoId);

		ModelAndView mav = new ModelAndView("redirect:/topico/topico/"+topicoId);
		mav.addObject("topico", topico);
		mav.addObject("mensagens", mensagemD.findMensagemByTopico(topico));
		
		mensagem.setTopico(topico);
		mensagem.setUsuario(userS.getUsuario());
		
		mensagemR.save(mensagem);
		
		return mav;
	}
	
}
