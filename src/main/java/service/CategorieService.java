package service;

import java.util.List;
import java.util.Optional;

import model.Categorie;

public interface CategorieService  {
	
	public void save (Categorie e);
	
	List<Categorie> categories();
	
}
