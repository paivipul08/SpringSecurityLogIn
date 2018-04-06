package com.springsecuritylogin.respository;

import org.springframework.data.repository.CrudRepository;

import com.springsecuritylogin.main.Role;

public interface RoleRepository extends CrudRepository<Role, Long> {

}
