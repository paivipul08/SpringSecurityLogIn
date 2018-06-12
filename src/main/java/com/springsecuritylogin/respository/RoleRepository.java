package com.springsecuritylogin.respository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.springsecuritylogin.main.Role;

public interface RoleRepository extends CrudRepository<Role, Long> {
	@Query(value="SELECT r.name FROM role r JOIN user_role ur ON r.id=ur.role_id JOIN USER u ON ur.user_id=u.id WHERE u.username=?1",nativeQuery=true)
	public List<String> findRoleByUserName(String username);
}
