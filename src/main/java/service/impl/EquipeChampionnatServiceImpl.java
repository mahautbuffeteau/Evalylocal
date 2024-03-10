package service.impl;

import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.EquipeChampionnat;
import repository.EquipeChampionnatRepository;
import service.EquipeChampionnatService;


@Service
@Transactional
public class EquipeChampionnatServiceImpl implements EquipeChampionnatService{

	@Autowired
	EquipeChampionnatRepository equipeChampionnatRepository;
	
	
	@Override
	public List<EquipeChampionnat> equipeChampionnats() {
		return (List<EquipeChampionnat>) equipeChampionnatRepository.findAll();
	}
	
	@Override
	public Optional<EquipeChampionnat> findById(Integer id) {
		return equipeChampionnatRepository.findById(id);
	}
	
	@Override
	public void save(EquipeChampionnat s) {
		equipeChampionnatRepository.save(s);

	}

}
