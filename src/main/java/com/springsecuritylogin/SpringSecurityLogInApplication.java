package com.springsecuritylogin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.springsecuritylogin")
public class SpringSecurityLogInApplication {
	public static void main(String[] args) {
		SpringApplication.run(SpringSecurityLogInApplication.class, args);
	}
}
