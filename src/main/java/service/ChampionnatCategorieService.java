package service;

import java.util.List;
import model.Categorie;
import model.ChampionnatCategorie;

public interface ChampionnatCategorieService {
	
	List<ChampionnatCategorie> findByCategorie(Categorie categorie);

}
