package service.impl;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.ChapeauUtilisateur;
import model.ChapeauUtilisateurId;
import repository.ChapeauUtilisateurRepository;
import service.ChapeauUtilisateurService;

@Service
@Transactional
public class ChapeauUtilisateurServiceImpl implements ChapeauUtilisateurService {

	@Autowired
	ChapeauUtilisateurRepository chapeauUtilisateurRepository;

	@Override
	public Optional<ChapeauUtilisateur> findByUtilisateur(ChapeauUtilisateurId id) {
		return chapeauUtilisateurRepository.findById(id);
	}
}
