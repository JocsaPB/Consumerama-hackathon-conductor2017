package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.UsuarioDAO;
import com.consumerama.model.Usuario;
import com.consumerama.security.UserSession;

@Controller
@RequestMapping("/")
public class LoginController {


	@Autowired
	UserSession userSession;
	
	@Autowired
	UsuarioDAO usuarioDAO;
	
	
	@GetMapping
	public ModelAndView login(Usuario usuario){
		ModelAndView model = new ModelAndView("/index");
		model.addObject("usuario", usuario);
		
		return model;
	}
	
	@PostMapping("/logar")
	public ModelAndView logar(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView model;
		Usuario user = usuarioDAO.logar(usuario);
		
		if(user != null){
			userSession.setUsuario(user);
			model = new ModelAndView("redirect:/usuario/home");
		}else{
			model = new ModelAndView("redirect:/index");
		}
		
		return model;
	}
	
}
