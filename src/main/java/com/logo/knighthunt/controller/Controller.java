package com.logo.knighthunt.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
	@GetMapping("/page")
	public String index()
	{
		return "Welcome to Spring Boot Application";
	}

}
