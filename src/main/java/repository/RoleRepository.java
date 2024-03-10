package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import modelold.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}