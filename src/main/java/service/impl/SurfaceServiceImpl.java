package service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.Surface;
import repository.SurfaceRepository;
import service.SurfaceService;

@Service
@Transactional
public class SurfaceServiceImpl implements SurfaceService{

	@Resource
	SurfaceRepository surfaceRepository;

	@Override
	public void save(Surface s) {
		surfaceRepository.save(s);
	}

	@Override
	public void delete(Surface sq) {
		surfaceRepository.delete(sq);
	}
}
