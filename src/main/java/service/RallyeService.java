package service;

import java.util.List;
import java.util.Optional;

import model.Rallye;

public interface RallyeService {

	public List<Rallye> rallyes();

	public Optional<Rallye> findById(Integer id);

	void save(Rallye t);




}
