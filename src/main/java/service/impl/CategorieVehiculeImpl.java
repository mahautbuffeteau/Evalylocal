package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.CategorieVehicule;
import model.CategorieVehiculeId;
import repository.CategorieVehiculeRepository;
import service.CategorieVehiculeService;

@Service
@Transactional
public class CategorieVehiculeImpl implements CategorieVehiculeService{

	@Resource
	CategorieVehiculeRepository categorieVehiculeRepository;
	
	@Override
	public Optional<CategorieVehicule> findById(CategorieVehiculeId id){
		
		return categorieVehiculeRepository.findById(id);
	}

	@Override
	public List<CategorieVehicule> categorieVehicules() {
		return (List<CategorieVehicule>) categorieVehiculeRepository.findAll();
	}
	
	@Override
	public void save(CategorieVehicule cv) {
		categorieVehiculeRepository.save(cv);
		
	}


}
