package com.consumerama.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.MensagemDAO;
import com.consumerama.dao.TopicoDAO;
import com.consumerama.dao.UsuarioDAO;
import com.consumerama.model.Categoria;
import com.consumerama.model.Topico;
import com.consumerama.repository.CategoriaRepository;
import com.consumerama.repository.TopicoRepository;
import com.consumerama.security.UserSession;

@Controller
@RequestMapping("/topico")
public class TopicoController {

	@Autowired
	private UserSession userS;
	
	@Autowired
	private TopicoRepository topicoR;
	
	@Autowired
	private UsuarioDAO usuarioD;
	
	@Autowired
	private CategoriaRepository categoriaR;
	
	@Autowired
	private MensagemDAO mensagemD;
	
	@Autowired
	private TopicoDAO topicoDAO;
	
	@GetMapping("todasAsCategorias")
	public ModelAndView todasAsCategorias(){
		
		ModelAndView mav = new ModelAndView("/topicos/categoriasDiversas");
		mav.addObject("categorias",categoriaR.findAll());
		
		return mav;
	}
	
	@GetMapping("minhasCategorias")
	public ModelAndView minhasCategorias(){
	
		List<Categoria> categorias = usuarioD.findMyCategorias(userS.getUsuario());

		ModelAndView mav = new ModelAndView("/topicos/minhasCategorias");
		mav.addObject("categorias", categorias);
		
		return mav;
	
	}
	
	@GetMapping("novo")
	public ModelAndView novoTopico(Topico topico){
		
		ModelAndView mav = new ModelAndView("/topicos/novoTopico");
		mav.addObject("topico",topico);
		mav.addObject("categorias", categoriaR.findAll());
		
		return mav;
	}
	
	@PostMapping("novo")
	public ModelAndView cadastrarTopico(Topico topico, RedirectAttributes redirectAttributes){
		
		topico.setUsuario(userS.getUsuario());
		topico = topicoR.save(topico);
		
		ModelAndView mav = new ModelAndView("redirect:/topico/topico/"+topico.getId());
		mav.addObject("inseriu", true);
		
		redirectAttributes.addFlashAttribute("inseriuAnuncio", true);
		return mav;
	}
	
	@GetMapping("topico/{topicoId}")
	public ModelAndView topico(@PathVariable Long topicoId){
		
		Topico topico = topicoR.findOne(topicoId);
		
		ModelAndView mav = new ModelAndView("/topicos/topico");
		mav.addObject("topico", topico);
		mav.addObject("mensagens", mensagemD.findMensagemByTopico(topico));
		
		return mav;
	}
	
	@GetMapping("topico/categoria/{categoriaId}")
	public ModelAndView topicoPorCategoria(@PathVariable Long categoriaId){
		
		Categoria categoria = new Categoria();
		categoria.setId(categoriaId);
		List<Topico> topicos = topicoDAO.getTopicosPorCategoria(categoria);
		
		ModelAndView mav = new ModelAndView("/topicos/topicosParcial");
		mav.addObject("topicos", topicos);
		
		return mav;
	}
	
}
