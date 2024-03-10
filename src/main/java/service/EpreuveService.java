package service;

import java.util.List;
import java.util.Optional;

import model.Epreuve;

public interface EpreuveService {

	public List<Epreuve> Epreuves();

	void save(Epreuve t);

	public Optional<Epreuve> findById(Integer id);

	public void deleteById(Integer id);
	
	public void delete(Epreuve r);

}
