package com.springsecuritylogin.serviceimpl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springsecuritylogin.main.CustomUser;
import com.springsecuritylogin.main.User;
import com.springsecuritylogin.respository.RoleRepository;
import com.springsecuritylogin.respository.UserRespository;

@Service(value="userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	private UserRespository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;

	private final Logger log=LoggerFactory.getLogger(this.getClass());
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		/*
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		for (Role role : user.getRoles()){
			grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
		}

		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), grantedAuthorities);
		*/
		List<String> userRoles=roleRepository.findRoleByUserName(username);
		log.info("UserRoles"+userRoles);
		return new CustomUser(user, userRoles);
	}
}
