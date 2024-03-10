package service;

import java.util.Optional;

import model.ResultatChampionnat;

public interface ResultatChampionnatService {
	
	public Optional<ResultatChampionnat> findById(Integer id);
	
	void save(ResultatChampionnat t);

	public ResultatChampionnat create(ResultatChampionnat resultatChampionnat);

}
