package com.consumerama.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/topico")
public class TopicoController {

	@GetMapping("todasAsCategorias")
	public ModelAndView todasAsCategorias(){
		ModelAndView mav = new ModelAndView("/topicos/categoriasDiversas");
		return mav;
	}
	
	@GetMapping("minhasCategorias")
	public ModelAndView minhasCategorias(){
		ModelAndView mav = new ModelAndView("/topicos/minhasCategorias");
		return mav;
	}
	
	@GetMapping("novo")
	public ModelAndView novoTopico(){
		ModelAndView mav = new ModelAndView("/topicos/novoTopico");
		return mav;
	}
	
}
