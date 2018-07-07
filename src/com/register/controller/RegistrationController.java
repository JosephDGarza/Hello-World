package com.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistrationController {
	
	@RequestMapping({"/", "Registration"}) 
	public String index(Model model) {
	
	String hw = "Hello World1";
	model.addAttribute("hw", hw);
	return "Registration";
}
}

