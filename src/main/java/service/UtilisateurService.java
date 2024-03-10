package service;

import java.util.Optional;

import dto.UtilisateurDto;
import dto.VerifyCodeDto;
import model.Utilisateur;

public interface UtilisateurService {

	public Utilisateur createAdmin(UtilisateurDto admin) throws Exception;

	Optional<Utilisateur> findByUsernameOrEmail(String username, String email);

	Optional<Utilisateur> findById(Integer id);

	public Boolean verifyCode(VerifyCodeDto verifyCodeDto);



}
