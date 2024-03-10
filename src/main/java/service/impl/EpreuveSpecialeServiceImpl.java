package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.EpreuveSpeciale;
import repository.EpreuveSpecialeRepository;
import service.EpreuveSpecialeService;



@Service
@Transactional
public class EpreuveSpecialeServiceImpl implements EpreuveSpecialeService{

	@Resource
	EpreuveSpecialeRepository EpreuveSpecialeRepository;
	
	
	@Override
	public List<EpreuveSpeciale> EpreuveSpeciales() {
		
		return (List<EpreuveSpeciale>) EpreuveSpecialeRepository.findAll();
	}
	
	@Override
	public Optional<EpreuveSpeciale> findById(Integer id){
		
		return EpreuveSpecialeRepository.findById(id);
	}

	@Override
	public void save(EpreuveSpeciale t) {
		EpreuveSpecialeRepository.save(t);
		
	}
	
	@Override
	public void deleteById(Integer id) {
		EpreuveSpecialeRepository.deleteById(id);
		
	}

	@Override
	public void delete(EpreuveSpeciale r) {
		EpreuveSpecialeRepository.delete(r);
		
	}

}
