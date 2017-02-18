package com.consumerama.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.UsuarioDAO;
import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;
import com.consumerama.security.UserSession;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

	@Autowired
	UsuarioRepository usuarioS;
	
	@Autowired
	UserSession userSession;
	
	@Autowired
	UsuarioDAO usuarioDAO;
	
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
	
	@GetMapping("/editar")
	public ModelAndView editar(){
		ModelAndView mav = new ModelAndView("/usuario/formCadastro");
		
		userSession.getUsuario().getId();
		Usuario usuario = usuarioS.findOne(userSession.getUsuario().getId());
		
		mav.addObject("usuario", usuario);
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(Usuario usuario){
		ModelAndView model = new ModelAndView("/index");
		model.addObject("usuario", usuario);
		
		return model;
	}
	
	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public ModelAndView logar(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView model;
		Usuario user = usuarioDAO.logar(usuario);
		if(user != null){
				userSession.setUsuario(user);
				model = new ModelAndView("redirect:/gerenciador/meusAnuncios");
		}else{
			model = new ModelAndView("redirect:/usuario/login");
			redirectAttributes.addFlashAttribute("loginInvalido", "Email ou Senha inválidos, por favor tente novamente");
		}
		
		return model;
	}
	
}
