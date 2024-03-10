package service;

import java.util.Optional;

import model.ChapeauUtilisateur;
import model.ChapeauUtilisateurId;

public interface ChapeauUtilisateurService {

	Optional<ChapeauUtilisateur> findByUtilisateur(ChapeauUtilisateurId id);


}
