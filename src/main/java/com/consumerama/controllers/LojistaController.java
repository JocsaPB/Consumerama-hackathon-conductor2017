package com.consumerama.controllers;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.UsuarioDAO;
import com.consumerama.model.Categoria;
import com.consumerama.model.Pagamento;
import com.consumerama.model.Usuario;
import com.consumerama.repository.CategoriaRepository;
import com.consumerama.repository.PagamentoRepository;


@Controller
public class LojistaController {
	
	@Autowired
	CategoriaRepository categoriaS;
	
	@Autowired
	UsuarioDAO usuarioDAO;
	
	@Autowired
	PagamentoRepository pagamentoS;
	
	@GetMapping("pagamento")
	public ModelAndView pagamento(Pagamento pagamento){
		ModelAndView model = new ModelAndView("/pagamento/pagamento");

		List<Categoria> categorias = categoriaS.findAll();
		model.addObject("categorias", categorias);
		model.addObject("pagamento", pagamento);
		return model;
	}
	
	@PostMapping("pagamento")
	public ModelAndView cadastrarPagamento(Pagamento pagamento, 
			RedirectAttributes redirectAttributes){
		
		ModelAndView model = new ModelAndView("redirect:/pagamento");
		
		Usuario usuario = usuarioDAO.findOneByEmail(pagamento.getUsuario().getEmail());
		pagamento.setPontuacao(pagamento.calcularPontuacao());
		pagamento.setData(new Date());
		pagamento.setUsuario(usuario);
		
		pagamentoS.save(pagamento);
		
		redirectAttributes.addFlashAttribute("success", true);
		return model;
	}
	
}
