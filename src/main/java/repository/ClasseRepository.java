package repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import model.Classe;

@Repository
public interface ClasseRepository extends CrudRepository< Classe, Integer>{
	
	

}
