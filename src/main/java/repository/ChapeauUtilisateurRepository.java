package repository;

import org.springframework.data.repository.CrudRepository;

import model.ChapeauUtilisateur;
import model.ChapeauUtilisateurId;

public interface ChapeauUtilisateurRepository extends CrudRepository<ChapeauUtilisateur, ChapeauUtilisateurId>{
	

}
