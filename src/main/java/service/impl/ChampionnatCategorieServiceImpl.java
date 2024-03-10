package service.impl;

import java.util.List;
import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.Categorie;
import model.ChampionnatCategorie;
import repository.ChampionnatCategorieRepository;
import service.ChampionnatCategorieService;

@Service
@Transactional
public class ChampionnatCategorieServiceImpl implements ChampionnatCategorieService {

	@Resource
	ChampionnatCategorieRepository championnatCategorieRepository;

	public List<ChampionnatCategorie> findByCategorie(Categorie categorie) {
		return championnatCategorieRepository.findByCategorie(categorie);
	}
}
