package com.springsecuritylogin.respository;

import org.springframework.data.repository.CrudRepository;

import com.springsecuritylogin.main.UserGroup;

public interface UserGroupRepository extends CrudRepository<UserGroup,Long> {

}
