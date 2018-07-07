package com.register.controller;

import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.RegisteredUserDto;

@Controller
public class AdminController {

	@RequestMapping("admin")

	public String admin(Model model) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		Object[] obj = new Object[9];

		// Query for sql in order to grab what I want, and order it by most recent date.
		String sqlQuery = "select firstName,lastName,address1,address2,city,state,zip,country,date from RegisteredUserDto ORDER BY date DESC";
		Query query = s.createQuery(sqlQuery);

		String firstName = "";
		String lastName = "";
		String address1 = "";
		String address2 = "";
		String city = "";
		String state = "";
		int zip;
		String country = "";
		String date = "";
		query.setFirstResult(0);
		query.setMaxResults(999);
		List results = query.list();
		Iterator i = results.iterator();
		List<RegisteredUserDto> list = new ArrayList<RegisteredUserDto>();
		while (i.hasNext()) {

			obj = (Object[]) i.next();
			firstName = (String) obj[0];
			lastName = (String) obj[1];
			address1 = (String) obj[2];
			address2 = (String) obj[3];
			city = (String) obj[4];
			state = (String) obj[5];
			zip = (int) obj[6];
			country = (String) obj[7];
			date = (String) obj[8];

			// adding to my array list
			list.add(new RegisteredUserDto(firstName, lastName, address1, address2, city, state, zip, country, date));

		}
		s.flush();
		s.close();

		// passing array list through to display all users information on the admin page

		model.addAttribute("list", list);
		return "admin";
	}

}
