package com.beans;

public class Customer {
	
	private long id;
	private String name;
	private String email;
	private String password;
	private String address;
	
	
	public Customer(long id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	
	
	
	public Customer(long id, String name, String email, String address) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.address = address;
	}



	public Customer(long id2, String name, String email, String password, String address) {
		super();
		this.id = id2;
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
	}
	
	
	public void setId(long id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getId() {
		return id;
	}
	
	
	

}
