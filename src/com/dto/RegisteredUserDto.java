package com.dto;

import java.io.Serializable;

public class RegisteredUserDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	private String firstName;
	private String lastName;
	private String Address1;
	private String Address2;
	private String city;
	private String State;
	private int zip;
	private String country;

	public RegisteredUserDto(String firstName, String lastName, String address1, String address2, String city,
			String state, int zip, String country) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		Address1 = address1;
		Address2 = address2;
		this.city = city;
		State = state;
		this.zip = zip;
		this.country = country;
	}
	public RegisteredUserDto() {
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress1() {
		return Address1;
	}

	public void setAddress1(String address1) {
		Address1 = address1;
	}

	public String getAddress2() {
		return Address2;
	}

	public void setAddress2(String address2) {
		Address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
