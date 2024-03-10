package service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.Surface;
import model.Vehicule;
import repository.SurfaceRepository;
import repository.VehiculeRepository;
import service.SurfaceService;
import service.VehiculeService;

@Service
@Transactional
public class VehiculeServiceImpl implements VehiculeService{

	@Resource
	VehiculeRepository vehiculeRepository;

	@Override
	public void save(Vehicule s) {
		vehiculeRepository.save(s);
	}

	@Override
	public void delete(Vehicule sq) {
		vehiculeRepository.delete(sq);
	}
}
