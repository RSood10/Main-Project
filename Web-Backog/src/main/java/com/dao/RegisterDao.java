package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.beans.Customer;
import com.helper.Helper;

public class RegisterDao {

	public int register(Customer customer) throws ClassNotFoundException, SQLException {
		int output = 0;
		String sql = "insert into Customer_04(CustomerID, Customer_Name, Customer_Email, Password, Address)"
				+ "value(?, ? ,? ,?, ?)";

		PreparedStatement ps = Helper.getPreparedStatement(sql);

		ps.setLong(1, customer.getId());
		ps.setString(2, customer.getName());
		ps.setString(3, customer.getEmail());
		ps.setString(4, customer.getPassword());
		ps.setString(5, customer.getAddress());

		output = ps.executeUpdate();
		Helper.close();
		return output;

	}

	public Customer login(Customer customer)throws ClassNotFoundException, SQLException 
   {
	    
		  String sql = "select CustomerID ,Customer_Name,Customer_Email,address from Customer_04 where CustomerID = ? and Password = ? ";
		  		
		  PreparedStatement ps = Helper.getPreparedStatement(sql);
		  
		  ps.setLong(1, customer.getId());
		  ps.setString(2, customer.getPassword());
		 
		  
		  ResultSet rs = ps.executeQuery();
		  Customer c1=null;
		  
		  while(rs.next())
		  {
			  long id = rs.getLong("CustomerID");
			  String name = rs.getString("Customer_Name");
			  String email = rs.getString("Customer_Email");
			  String address = rs.getString("address");
			  
			  c1 = new Customer(id,name,email,address);
			  System.out.println(id);
		  }
           
		  Helper.close();
		  if(c1!=null)
			  return c1;
		  else
			  return null;
		  
   
	
	  
			  
}
}
