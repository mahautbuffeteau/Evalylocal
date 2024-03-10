package service;

import java.util.Optional;

import modelold.Role;

public interface RoleService {

	Optional<Role> findById(Integer id);

	Role create(Role role);

}
