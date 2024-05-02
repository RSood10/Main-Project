package com.controller;

import java.sql.SQLException;

import com.beans.Customer;
import com.dao.RegisterDao;

public class RegisterController {
	
	private RegisterDao registerDao;
	
	public RegisterController()
	{
		this.registerDao=new RegisterDao();
	}
	
	
   public int register(Customer customer)
   {
	   try {
		   return this.registerDao.register(customer);
	   }
	   catch(ClassNotFoundException | SQLException e)
	   {
		   e.printStackTrace();
		   return 0;
	   }
   }
   
   public Customer login(Customer customer)
   {
	   try {
		   return this.registerDao.login(customer);
	   }
	   catch(ClassNotFoundException | SQLException e)
	   {
		   e.printStackTrace();
		   return null;
	   }
   }
}
