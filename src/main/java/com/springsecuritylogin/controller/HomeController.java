package com.springsecuritylogin.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springsecuritylogin.main.User;
import com.springsecuritylogin.service.SecurityService;
import com.springsecuritylogin.service.UserService;
import com.springsecuritylogin.validator.UserValidator;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);

		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@RequestMapping(value = {"/welcome"}, method = RequestMethod.GET)
	public String welcome(Model model) {
		User user=null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof User){
			user =(User) principal;
			model.addAttribute("list", userService.findAllUsersNames(user));
			return "welcome";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String landing(Model model) {
		return "landing";
	}
	
	/*@RequestMapping(value = {"/testing"}, method = RequestMethod.GET)
	public String testing(Model model) {
		model.addAttribute("list", userService.findAllUsersNames());
		return "testing";
	}*/
	
	@RequestMapping(value = {"/process"}, method = RequestMethod.POST)
	public void process(@RequestParam("userNames") List<String> userNames,Model model) {
		System.out.println("Users to be Added" +userNames);
	}
}
