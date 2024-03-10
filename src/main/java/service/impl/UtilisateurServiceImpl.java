package service.impl;

import java.sql.Date;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import dto.UtilisateurDto;
import dto.VerifyCodeDto;
import model.Utilisateur;
import model.VerifyUtilisateur;
import modelold.Role;
import repository.UtilisateurRepository;
import repository.VerifyUtilisateurRepository;
import service.RoleService;
import service.UtilisateurService;

@Service
@Transactional
public class UtilisateurServiceImpl implements UtilisateurService {

	private final static Log log = LogFactory.getLog(UtilisateurServiceImpl.class);

	@Autowired
	private RoleService roleService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	UtilisateurRepository utilisateurRepository;

	@Autowired
	VerifyUtilisateurRepository verifyUtilisateurRepository;

	
	@Override
	public Utilisateur createAdmin(UtilisateurDto admin) throws Exception {

		Date dateInscription = new Date(System.currentTimeMillis());
		System.err.println("admin createAdmin" + admin);
		Role role = roleService.findById(1).get();
		Utilisateur utilisateur;
		Set<Role> listeRoles = new HashSet<>();

		System.err.println("if id admin == null");
		utilisateur = new Utilisateur(admin.getLogin(), admin.getEmail(), passwordEncoder.encode(admin.getPassword()), admin.getRacenet(), 
				dateInscription, null, Boolean.TRUE);
		utilisateur.getRoles().add(role);

		log.info(utilisateur);

		return utilisateurRepository.save(utilisateur);
	}

	@Override
	public Optional<Utilisateur> findByUsernameOrEmail(String username, String email) {
		Optional<Utilisateur> utilisateur = utilisateurRepository.findByNomOrMail(username, email);
		return utilisateur;
	}


	@Override
	public Boolean verifyCode(VerifyCodeDto verifyCodeDto) {
		String token = verifyCodeDto.getToken();

		VerifyUtilisateur verifyUtilisateur = verifyUtilisateurRepository.findByToken(token).get();
		Utilisateur utilisateur = verifyUtilisateur.getUtilisateur();
		utilisateur.setActif(true);
		System.err.println(utilisateur.getActif());
		if (utilisateurRepository.save(utilisateur) != null) {
			return true;
		}
		return false;
	}

	@Override
	public Optional<Utilisateur> findById(Integer id) {
		return utilisateurRepository.findById(id);
	}
}
