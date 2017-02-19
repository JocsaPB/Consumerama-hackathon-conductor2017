package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;
import com.consumerama.security.UserSession;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

	@Autowired
	UserSession userSession;
	
	@Autowired
	UsuarioRepository usuarioS;
	

	@GetMapping("/novo")
	public ModelAndView cadastro(Usuario usuario){
		ModelAndView mav = new ModelAndView("/usuario/formCadastro");
		mav.addObject("usuario", usuario);
		return mav;
	}
	
	@PostMapping("/novo")
	public ModelAndView cadastrar(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView mav = new ModelAndView("index");
		usuarioS.save(usuario);
		return mav;
	}
	
	@GetMapping("/meuPerfil")
	public ModelAndView editar(){
		ModelAndView mav = new ModelAndView("/usuario/meuPerfil");
		
		userSession.getUsuario().getId();
		Usuario usuario = usuarioS.findOne(userSession.getUsuario().getId());
		
		mav.addObject("usuario", usuario);
		return mav;
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView model = new ModelAndView("/usuario/home");
		return model;
	}
	
}
