package service;

import java.util.List;
import java.util.Optional;

import model.Championnat;

public interface ChampionnatService {
	

	public List<Championnat>championnats();
	
	public Optional<Championnat> findById(Integer id);
	
	public boolean delete(Integer isDelete);

}
