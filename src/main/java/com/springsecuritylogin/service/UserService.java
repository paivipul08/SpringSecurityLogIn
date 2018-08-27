package com.springsecuritylogin.service;

import java.util.List;

import com.springsecuritylogin.main.User;

public interface UserService {

	User findByEmail(String email);

	void saveUser(User user);

	void save(User user);

	User findByUsername(String username);

	List<User> findAllUsersNames(User user);

	List<User> findByUsernameContainingIgnoreCase(String username);
}
