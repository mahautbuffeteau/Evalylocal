package service;

import java.util.List;
import java.util.Optional;

import model.Classe;

public interface ClasseService {

	List<Classe> classes();

	Optional<Classe> findById(Integer id);


}
