package com.springsecuritylogin.validator;



import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.springsecuritylogin.main.User;
import com.springsecuritylogin.service.UserService;

@Component
public class UserValidator implements Validator{
	
	private  static final String EMAIL_REGEX="^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
	
	private  static final String PHONE_REGEX="^[0-9]{10}$";
	
	@Autowired
	private UserService userService;

	@Override
	public boolean supports(Class<?> aClass) {
		return User.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		User user = (User) o;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
			errors.rejectValue("username", "Size.userForm.username");
		}
		/*if (userService.findByUsername(user.getUsername()) != null) {
			errors.rejectValue("username", "Duplicate.userForm.username");
		}*/
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		if (userService.findByEmail(user.getEmail()) != null) {
			errors.rejectValue("email", "Duplicate.userForm.email");
		}
		if(!user.getEmail().isEmpty() && user.getEmail()!=null && !checkPattern(user.getEmail(),EMAIL_REGEX ))
			errors.rejectValue("email", "Invalid.userForm.email");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "NotEmpty");
		if(!user.getPhoneNumber().isEmpty() && user.getPhoneNumber()!=null && !checkPattern(user.getPhoneNumber(),PHONE_REGEX ))
			errors.rejectValue("phoneNumber", "Invalid.userForm.phoneNumber");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
			errors.rejectValue("password", "Size.userForm.password");
		}

		if (!user.getPasswordConfirm().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
		}
	}
	
	public boolean checkPattern(String value,String regex){
	    Pattern pattern = Pattern.compile(regex);
	    Matcher matcher = pattern.matcher((CharSequence) value);
	    if(!matcher.matches())
	    	return false;
	    return true;
		
	}

}
