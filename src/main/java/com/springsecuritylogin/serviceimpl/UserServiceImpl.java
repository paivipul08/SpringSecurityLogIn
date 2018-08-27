package com.springsecuritylogin.serviceimpl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springsecuritylogin.main.Role;
import com.springsecuritylogin.main.User;
import com.springsecuritylogin.respository.RoleRepository;
import com.springsecuritylogin.respository.UserRespository;
import com.springsecuritylogin.service.UserService;

@Service(value="userService")
public class UserServiceImpl implements UserService{

	@Autowired 
	UserRespository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public void saveUser(User user){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}
		
	@Override
	public void save(User user) {
		//Set<Role> roleSet=(Set<Role>) roleRepository.findAll();
		List<Role> roleList=(List<Role>) roleRepository.findAll();
		Set<Role> roleSet=new HashSet<Role>(roleList);
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleSet);
		userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}
	
	@Override
	public List<User> findAllUsersNames(User user){
		List<User> userlist= userRepository.findByIdNotOrderByUsername(user.getId());
		//List<String> userNamesList=userlist.stream().map(User :: getUsername).collect(Collectors.toList());
		return userlist;
	}
	
	@Override
	public List<User> findByUsernameContainingIgnoreCase(String username){
		return 	userRepository.findByUsernameContainingIgnoreCase(username);
	}
	
}
