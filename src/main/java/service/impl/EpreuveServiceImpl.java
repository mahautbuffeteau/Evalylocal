package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.Epreuve;
import repository.EpreuveRepository;
import service.EpreuveService;



@Service
@Transactional
public class EpreuveServiceImpl implements EpreuveService{

	@Resource
	EpreuveRepository EpreuveRepository;
	
	
	@Override
	public List<Epreuve> Epreuves() {
		
		return (List<Epreuve>) EpreuveRepository.findAll();
	}
	
	@Override
	public Optional<Epreuve> findById(Integer id){
		
		return EpreuveRepository.findById(id);
	}

	@Override
	public void save(Epreuve t) {
		EpreuveRepository.save(t);
		
	}
	
	@Override
	public void deleteById(Integer id) {
		EpreuveRepository.deleteById(id);
		
	}

	@Override
	public void delete(Epreuve r) {
		EpreuveRepository.delete(r);
		
	}

}
