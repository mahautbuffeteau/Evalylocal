package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import model.Classe;
import repository.ClasseRepository;
import service.ClasseService;

@Service
@Transactional
public class ClasseServiceImpl implements ClasseService {

	private final static Log LOGGER = LogFactory.getLog(ClasseServiceImpl.class);

	@Resource
	ClasseRepository classeRepository;

	@Override
	public List<Classe> classes() {
		return (List<Classe>) classeRepository.findAll();
	}

	@Override
	public Optional<Classe> findById(Integer id) {
		return classeRepository.findById(id);
	}

}
