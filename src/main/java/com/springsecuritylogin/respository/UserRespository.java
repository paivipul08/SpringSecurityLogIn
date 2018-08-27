package com.springsecuritylogin.respository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.springsecuritylogin.main.User;

public interface UserRespository extends CrudRepository<User, Long> {

	User findByEmail(String email);

	User findByUsername(String username);
	
	//List<User> findAll();
	
	List<User> findByIdNotOrderByUsername(Long id);

	List<User> findByUsernameContainingIgnoreCase(String username);
}
