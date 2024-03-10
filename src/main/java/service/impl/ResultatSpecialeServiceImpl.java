package service.impl;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.ResultatChampionnat;
import repository.ResultatChampionnatRepository;
import service.ResultatChampionnatService;

@Service
@Transactional
public class ResultatSpecialeServiceImpl implements ResultatChampionnatService {

	@Autowired
	ResultatChampionnatRepository resultatChampionnatRepository;

	public ResultatChampionnat create(ResultatChampionnat resultatChampionnat) {
		return resultatChampionnatRepository.save(resultatChampionnat);
	}

	@Override
	public Optional<ResultatChampionnat> findById(Integer id) {
		return resultatChampionnatRepository.findById(id);
	}

	@Override
	public void save(ResultatChampionnat t) {
		resultatChampionnatRepository.save(t);
	}

}
