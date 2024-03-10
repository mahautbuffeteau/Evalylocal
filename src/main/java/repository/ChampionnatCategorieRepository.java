package repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import model.Categorie;
import model.ChampionnatCategorie;
import model.ChampionnatCategorieId;

public interface ChampionnatCategorieRepository extends CrudRepository<ChampionnatCategorie, ChampionnatCategorieId> {

	List<ChampionnatCategorie> findByCategorie(Categorie categorie);

}
