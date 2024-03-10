package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.ResultatEpreuve;
import modelold.Apprenant;
import modelold.Examen;
import repository.ResultatEpreuveRepository;
import service.ResultatEpreuveService;



@Service
@Transactional
public class ResultatEpreuveImpl implements ResultatEpreuveService{

	@Resource
	ResultatEpreuveRepository resultatEpreuveRepository;
	
	
	@Override
	public List<ResultatEpreuve> resultatsExamens() {
		
		
		
		return (List<ResultatEpreuve>) resultatEpreuveRepository.findAll();
	}


	@Override
	public Optional<ResultatEpreuve> findById(Integer id) {
		return resultatEpreuveRepository.findById(id);
	}
	
	@Override
	public void save(ResultatEpreuve s) {
		resultatEpreuveRepository.save(s);

	}


}
