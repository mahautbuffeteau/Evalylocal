package service;

import java.util.List;
import java.util.Optional;

import model.EpreuveSpeciale;

public interface EpreuveSpecialeService {
	

	public List<EpreuveSpeciale> EpreuveSpeciales();

	void save(EpreuveSpeciale t);

	public Optional<EpreuveSpeciale> findById(Integer id);

	public void deleteById(Integer idEpreuveSpeciale);
	
	public void delete(EpreuveSpeciale r);

}
