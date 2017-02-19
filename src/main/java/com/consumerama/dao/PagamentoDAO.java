package com.consumerama.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.consumerama.model.Pagamento;
import com.consumerama.model.Ranking;
import com.consumerama.model.Usuario;

@Repository
public class PagamentoDAO {
	
	@PersistenceContext
	EntityManager manager;
	
	public List<Ranking> maisPontuadas (Usuario usuario) {
		
		HashMap<String, Integer> mapRanking = new HashMap<String, Integer> ();
		
		ArrayList<Pagamento> pagamentos = (ArrayList<Pagamento>) this.manager.
				createQuery("select p from Pagamento p where p.usuario = :usuario")
				.setParameter("usuario", usuario).getResultList();
	
		montarMapRanking(mapRanking, pagamentos); 
		
		return  montarRanking(mapRanking);
		
	}

	private void montarMapRanking(HashMap<String, Integer> mapRanking, ArrayList<Pagamento> pagamentos) {
		for(Pagamento pagamento : pagamentos){
			
			if(mapRanking.get(pagamento.getCategoria().getNome()) != null)
				mapRanking.put( pagamento.getCategoria().getNome(), 
					mapRanking.get(pagamento.getCategoria().getNome()) + pagamento.getPontuacao());
			else
				mapRanking.put( pagamento.getCategoria().getNome(), pagamento.getPontuacao());
		
		}
	}

	private List<Ranking> montarRanking(HashMap<String, Integer> mapRanking) {
		
		Ranking ranking = null;
		List<Ranking> listaRanking = new ArrayList<Ranking>();
		for (String nomeCategoria : mapRanking.keySet()) {
			
			ranking = new Ranking();
			ranking.setNomeCategoria(nomeCategoria);
			ranking.setPontuacaoTotal(mapRanking.get(nomeCategoria));
			
			listaRanking.add(ranking);
			
		}
		return listaRanking;
		
	}

}
