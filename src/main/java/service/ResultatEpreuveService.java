package service;

import java.util.List;
import java.util.Optional;

import model.ResultatEpreuve;
import modelold.Apprenant;
import modelold.Examen;

public interface ResultatEpreuveService {
	

	public List<ResultatEpreuve> resultatsExamens();
	
	public Optional<ResultatEpreuve> findById(Integer id);
	
	void save(ResultatEpreuve t);

}
