package service;

import java.util.List;
import java.util.Optional;

import model.EquipeChampionnat;

public interface EquipeChampionnatService {
	
	
	public List<EquipeChampionnat> equipeChampionnats();
	
	public Optional<EquipeChampionnat> findById(Integer id);
	
	void save(EquipeChampionnat t);

}
