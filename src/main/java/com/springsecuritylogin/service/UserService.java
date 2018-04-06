package com.springsecuritylogin.service;

import com.springsecuritylogin.main.User;

public interface UserService {

	User findByEmail(String email);

	void saveUser(User user);

	void save(User user);

	User findByUsername(String username);
}
