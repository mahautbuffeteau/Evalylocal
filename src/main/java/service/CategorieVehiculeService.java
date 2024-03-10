package service;

import java.util.List;
import java.util.Optional;

import model.CategorieVehicule;
import model.CategorieVehiculeId;
import modelold.Matiere;

public interface CategorieVehiculeService {
	
	public List<CategorieVehicule> categorieVehicules();
	
	public Optional<CategorieVehicule> findById(CategorieVehiculeId id);
	
	public void save(CategorieVehicule cv);

}
