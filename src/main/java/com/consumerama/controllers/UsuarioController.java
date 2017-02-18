package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;

@RestController
public class UsuarioController {

	@Autowired
	UsuarioRepository usuarioS;
	
	@RequestMapping(value = "/cadastrar", 
			method = RequestMethod.GET)
	public ModelAndView cadastrar(){
		ModelAndView mav = new ModelAndView("index");
		
		Usuario user = new Usuario();
		
		user.setNome("Jocsã Misrraine");
		user.setEmail("jocsadw@gmail.com");
		usuarioS.save(user);
		
		return mav;
	}
	
	
}
