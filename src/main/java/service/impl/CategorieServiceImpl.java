package service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Categorie;
import repository.CategorieRepository;
import service.CategorieService;

@Service
@Transactional
public class CategorieServiceImpl implements CategorieService{

	@Resource
	private CategorieRepository examenRepository;
	
	@Override
	public List<Categorie> categories() {
		
		return (List<Categorie>) examenRepository.findAll();
	}

	@Override
	public void save(Categorie c) {
		examenRepository.save(c);
		
	}
}
