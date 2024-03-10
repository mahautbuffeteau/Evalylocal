package service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import model.Championnat;
import repository.ChampionnatRepository;
import service.ChampionnatService;

@Service
@Transactional
public class ChampionnatServiceImpl implements ChampionnatService {

	@Resource
	ChampionnatRepository championnatRepository;

	@Override
	public List<Championnat> championnats() {

		return (List<Championnat>) championnatRepository.findAll();
	}

	public Championnat createFormateurFinal(Championnat championnat) {
		return championnatRepository.save(championnat);
	}

	@Override
	public Optional<Championnat> findById(Integer id) {
		return championnatRepository.findById(id);

	}

	@Override
	public boolean delete(Integer id) {

		boolean isDelete = false;

		championnatRepository.deleteById(id);

		if (championnatRepository.findById(id) != null) {
			isDelete = true;
		}

		return isDelete;
	}

}
