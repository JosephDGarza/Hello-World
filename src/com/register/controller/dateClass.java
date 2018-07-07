package com.register.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


public class dateClass {
	public static String dateSetter() {
		//setting date format
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		Date date = new Date();
		String dateHolder = dateFormat.format(date);
		//passing date through
		return dateHolder;
	}
	
}
