package service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.ChampionnatEpreuve;
import model.Epreuve;
import repository.ChampionnatEpreuveRepository;
import service.ChampionnatEpreuveService;

@Service
@Transactional
public class ChampionnatEpreuveServiceImpl implements ChampionnatEpreuveService {

	@Resource
	ChampionnatEpreuveRepository championnatEpreuveRepository;

	public List<ChampionnatEpreuve> findByEpreuve(Epreuve epreuve) {
		return championnatEpreuveRepository.findByEpreuve(epreuve);
	}
}
