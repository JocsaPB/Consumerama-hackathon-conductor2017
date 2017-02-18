package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

	@Autowired
	UsuarioRepository usuarioS;
	
	@PostMapping("/cadastrar")
	public ModelAndView cadastrar(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView mav = new ModelAndView("index");
		
		usuarioS.save(usuario);
		
		return mav;
	}
	
	@GetMapping("/cadastrar")
	public ModelAndView cadastro(Usuario usuario){
		ModelAndView mav = new ModelAndView("/usuario/formCadastro");
		mav.addObject("usuario", usuario);
		return mav;
	}
	
}
