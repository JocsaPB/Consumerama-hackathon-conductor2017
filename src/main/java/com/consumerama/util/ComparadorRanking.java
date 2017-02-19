package com.consumerama.util;

import java.util.Comparator;

import com.consumerama.model.Ranking;

public class ComparadorRanking implements Comparator<Ranking>{

	@Override
	public int compare(Ranking ranking1, Ranking ranking2) {
		
		return ranking2.getPontuacaoTotal().compareTo(ranking1.getPontuacaoTotal());
	
	}

}
