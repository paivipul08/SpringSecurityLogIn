package com.springsecuritylogin.respository;

import org.springframework.data.repository.CrudRepository;

import com.springsecuritylogin.main.User;

public interface UserRespository extends CrudRepository<User, Long> {

	User findByEmail(String email);

	User findByUsername(String username);

}
