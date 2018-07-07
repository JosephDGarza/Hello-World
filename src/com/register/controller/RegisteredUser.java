package com.register.controller;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.criteria.internal.expression.function.CurrentDateFunction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.RegisteredUserDto;

@Controller
public class RegisteredUser {

	@RequestMapping("registereduser")
	public String users(Model model, @RequestParam(value = "firstName") String firstName,
			@RequestParam(value = "lastName") String lastName, @RequestParam(value = "address1") String address1, @RequestParam(value = "address2") String address2, @RequestParam(value = "city") String city, @RequestParam(value = "state") String state, @RequestParam(value = "zip") int zip, @RequestParam(value = "country") String country) {
		
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		
		RegisteredUserDto newUser = new RegisteredUserDto();
		newUser.setFirstName(firstName);
		newUser.setLastName(lastName);
		newUser.setAddress1(address1);
		newUser.setAddress2(address2);
		newUser.setCity(city);
		newUser.setState(state);
		newUser.setZip(zip);
		newUser.setCountry(country);
		String date = "";
		date = dateClass.dateSetter(date);
		System.out.println(date);
		newUser.setDate(date);
		
		
		
			Session session = factory.openSession();
			Transaction t = (Transaction) session.beginTransaction();

			session.persist(newUser);
			t.commit();
			session.close();
			
			model.addAttribute("firstName", firstName);
			model.addAttribute("lastName", lastName);
			model.addAttribute("address1", address1);
			model.addAttribute("address2", address2);
			model.addAttribute("city", city);
			model.addAttribute("state", state);
			model.addAttribute("zip", zip);
			model.addAttribute("country", country);
		
		
		
		return "registereduser";
	}

}
