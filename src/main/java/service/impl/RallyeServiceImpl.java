package service.impl;

import java.util.List;
import java.util.Optional;
import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import model.Rallye;
import repository.RallyeRepository;
import service.RallyeService;

@Service
@Transactional
public class RallyeServiceImpl implements RallyeService {

	private final static Log LOGGER = LogFactory.getLog(RallyeServiceImpl.class);

	@Resource
	RallyeRepository rallyeRepository;

	@Override
	public List<Rallye> rallyes() {

		return (List<Rallye>) rallyeRepository.findAll();
	}

	@Override
	public Optional<Rallye> findById(Integer id) {
		return rallyeRepository.findById(id);
	}

	@Override
	public void save(Rallye r) {
		LOGGER.warn("Save ".concat(r.toString()));
		rallyeRepository.save(r);
	}
	
	public boolean delete(Integer id) {

		boolean isDelete = false;
		rallyeRepository.deleteById(id);
		if (rallyeRepository.findById(id) != null) {
			isDelete = true;
		}
		return isDelete;
	}


//	@Override
//	public Apprenant createApprenantParFormateur(ApprenantDto apprenantDto) {
//
//		Promotion promotion = promotionRepository.findById(apprenantDto.getIdPromotion()).get();
//
//		Role role = roleService.findById(3).get();
//
//		Set<Role> listeRoles = new HashSet<>();
//		Apprenant apprenant = new Apprenant();
//
//		System.err.println("id " + apprenantDto.getIdApprenantDto());
//
//		if (apprenantDto.getIdApprenantDto() != null) {
//			Apprenant apprenantRecup = rallyeRepository.findById(apprenantDto.getIdApprenantDto()).get();
//			System.out.println("ici id pas null");
//			apprenant.setId(apprenantDto.getIdApprenantDto());
//			apprenant.setDateInscription(apprenantDto.getDateInscriptionDate());
//			apprenant.setIsAdmin(false);
//			apprenant.setNom(apprenantDto.getNom());
//			apprenant.setPrenom(apprenantDto.getPrenom());
//			apprenant.setMail(apprenantDto.getMail());
//			apprenant.setPromotion(promotion);
//			apprenant.setActive(true);
//			apprenant.setDateNaissance(apprenantRecup.getDateNaissance());
//			apprenant.setPassword(apprenantRecup.getPassword());
//			apprenant.setPhoto(apprenantRecup.getPhoto());
//			apprenant.setQuestionSecrete(apprenantRecup.getQuestionSecrete());
//			apprenant.setReponseSecrete(apprenantRecup.getReponseSecrete());
//			apprenant.setRoles(listeRoles);
//			apprenant.getRoles().add(role);
//
//		} else {
//
//			System.out.println("ici id null");
//			apprenant.setDateInscription(apprenantDto.getDateInscriptionDate());
//			apprenant.setIsAdmin(false);
//			apprenant.setNom(apprenantDto.getNom());
//			apprenant.setPrenom(apprenantDto.getPrenom());
//			apprenant.setMail(apprenantDto.getMail());
//			apprenant.setPromotion(promotion);
//
//			apprenant.setRoles(listeRoles);
//			apprenant.getRoles().add(role);
//
//			String token = RandomUtil.generateRandomStringNumber(6).toUpperCase();
//
//			VerifyUtilisateur verifyUtilisateur = new VerifyUtilisateur();
//
//			verifyUtilisateur.setUtilisateur(apprenant);
//
//			verifyUtilisateur.setCreatedDate(LocalDateTime.now());
//
//			verifyUtilisateur.setExpiredDataToken(LocalDateTime.now().plusDays(1));
//			verifyUtilisateur.setToken(token);
//			verifyUtilisateurRepository.save(verifyUtilisateur);
//
//			Map<String, Object> maps = new HashMap<>();
//			maps.put("utilisateur", apprenant);
//			maps.put("token", token);
//
//			Mail mail = new Mail();
//			mail.setFrom("postmaster@mg.iteacode.com");
//			mail.setSubject("Validation inscription Résultats WRC App");
//			mail.setTo(apprenant.getMail());
//			mail.setModel(maps);
//			try {
//				mailService.sendEmail(mail);
//			} catch (MessagingException e) {
//
//				e.printStackTrace();
//			}
//
//		}
//		Apprenant apprenant2 = rallyeRepository.save(apprenant);
//
//		System.err.println("apprenant validee " + apprenant2.getPromotion().getIdPromotion());
//
//		return apprenant2;
//	}

}
