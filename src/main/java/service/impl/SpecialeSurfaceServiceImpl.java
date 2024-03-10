package service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.SpecialeSurface;
import repository.SpecialeSurfaceRepository;
import service.SpecialeSurfaceService;

@Service
@Transactional
public class SpecialeSurfaceServiceImpl implements SpecialeSurfaceService{

	@Resource
	SpecialeSurfaceRepository specialeSurfaceRepository;

	@Override
	public void save(SpecialeSurface s) {
		specialeSurfaceRepository.save(s);
	}

	@Override
	public void delete(SpecialeSurface sq) {
		specialeSurfaceRepository.delete(sq);
	}
}
