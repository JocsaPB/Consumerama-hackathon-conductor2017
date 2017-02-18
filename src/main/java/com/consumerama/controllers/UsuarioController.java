package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
=======
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
>>>>>>> 3931495b49e6a875f51e5976ca517dfe147bc3bf

import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;

@RestController
public class UsuarioController {

<<<<<<< HEAD
	
=======
	@Autowired
	UsuarioRepository usuarioS;
	
	@RequestMapping(value = "/cadastrar", 
			method = RequestMethod.GET)
	@ResponseBody
	public Usuario cadastrar(){
		Usuario user = new Usuario();
		
		user.setNome("Jocsã Misrraine");
		user.setEmail("jocsadw@gmail.com");
		usuarioS.save(user);
		
		return user;
	}
>>>>>>> 3931495b49e6a875f51e5976ca517dfe147bc3bf
	
}
