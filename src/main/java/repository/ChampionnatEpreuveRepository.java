package repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import model.ChampionnatEpreuve;
import model.ChampionnatEpreuveId;
import model.Epreuve;

public interface ChampionnatEpreuveRepository extends CrudRepository<ChampionnatEpreuve, ChampionnatEpreuveId> {

	List<ChampionnatEpreuve> findByEpreuve(Epreuve epreuve);


}
