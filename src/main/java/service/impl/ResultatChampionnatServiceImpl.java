package service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.ResultatSpeciale;
import repository.ResultatSpecialeRepository;
import service.ResultatSpecialeService;

@Service
@Transactional
public class ResultatChampionnatServiceImpl implements ResultatSpecialeService {

	@Autowired
	ResultatSpecialeRepository resultatSpecialeRepository;

	@Override
	public ResultatSpeciale create(ResultatSpeciale organisation) {

		return resultatSpecialeRepository.save(organisation);
	}

}
