package com.consumerama.controllers;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.consumerama.dao.PagamentoDAO;
import com.consumerama.dao.UsuarioDAO;
import com.consumerama.model.Categoria;
import com.consumerama.model.Pagamento;
import com.consumerama.model.Usuario;
import com.consumerama.repository.CategoriaRepository;
import com.consumerama.repository.PagamentoRepository;


@Controller
@RequestMapping("/principal")
public class LojistaController {
	
	@Autowired
	CategoriaRepository categoriaS;
	
	@Autowired
	UsuarioDAO usuarioDAO;

	@Autowired
	PagamentoDAO pagamentoDAO;
	
	@Autowired
	PagamentoRepository pagamentoS;
	
	@RequestMapping(value = "/pagamento", method = RequestMethod.GET)
	public ModelAndView pagamento(Pagamento pagamento){
		ModelAndView model = new ModelAndView("/principal/pagamento");
		
		model.addObject("pagamento", pagamento);
		List<Categoria> categorias = categoriaS.findAll();
		model.addObject("categorias", categorias);
		return model;
	}
	
	@RequestMapping(value = "/cadastrarPagamento", method = RequestMethod.POST)
	public ModelAndView cadastrarPagamento(Pagamento pagamento, 
			RedirectAttributes redirectAttributes){
		ModelAndView model = new ModelAndView("redirect:/principal/pagamento");
		
		Usuario usuario = usuarioDAO.findOneByEmail(pagamento.getUsuario().getEmail());
		pagamento.setData(new Date());
		pagamento.setUsuario(usuario);
		pagamentoS.save(pagamento);
		redirectAttributes.addFlashAttribute("success", true);
		return model;
	}
	
//	@RequestMapping(value="/inserirPagamento")
//	public ModelAndView inserirPagamento (Pagamento pagamento, 
//			RedirectAttributes redirectAttributes) {
//		
//		redirectAttributes.addFlashAttribute("success", true);
//		ModelAndView model = new ModelAndView("/principal/pagamento");
//		return model;
//	}

}
