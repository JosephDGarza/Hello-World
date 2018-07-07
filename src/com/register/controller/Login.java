package com.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login {
	
	@RequestMapping({"/", "index"}) 
	public String index(Model model) {
	
	String hw = "Hello World";
	model.addAttribute("hw", hw);
	return "index";
}
}

