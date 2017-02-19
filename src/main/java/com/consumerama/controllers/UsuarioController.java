package com.consumerama.controllers;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.PagamentoDAO;
import com.consumerama.dao.TopicoDAO;
import com.consumerama.model.Ranking;
import com.consumerama.model.Usuario;
import com.consumerama.repository.UsuarioRepository;
import com.consumerama.security.UserSession;
import com.consumerama.util.ComparadorRanking;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

	@Autowired
	UserSession userS;
	
	@Autowired
	UsuarioRepository usuarioR;
	
	@Autowired
	private TopicoDAO topicoD;
	
	@Autowired
	private PagamentoDAO pagamentoDAO;
	

	@GetMapping("/novo")
	public ModelAndView cadastro(Usuario usuario){
		ModelAndView mav = new ModelAndView("/usuario/formCadastro");
		mav.addObject("usuario", usuario);
		return mav;
	}
	
	@PostMapping("/novo")
	public ModelAndView cadastrar(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView mav = new ModelAndView("redirect:/index");
		usuarioR.save(usuario);
		redirectAttributes.addFlashAttribute("inseriu", true);
		return mav;
	}
	
	@GetMapping("/meuPerfil")
	public ModelAndView editar(){
		
		ModelAndView mav = new ModelAndView("/usuario/meuPerfil");
		
		userS.getUsuario().getId();
		Usuario usuario = usuarioR.findOne(userS.getUsuario().getId());
		List<Ranking> listaRanking = pagamentoDAO.maisPontuadas(usuario);
		
		Collections.sort(listaRanking, new ComparadorRanking());
		
		mav.addObject("listaRanking", listaRanking);
		mav.addObject("usuario", usuario);
		
		return mav;
	
	}
 
	
	@GetMapping("/home")
	public ModelAndView home(Usuario usuario, RedirectAttributes redirectAttributes){
		ModelAndView model = new ModelAndView("/usuario/home");
		model.addObject("topicos", topicoD.getUltimosTopicos());
		return model;
	}
	
	@GetMapping("/deslogar")
	public String deslogar(){
		userS.setUsuario(null);
		return "/index";
	}
	
}
