package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Helper {
	
 private static Connection connection;
 private static PreparedStatement preparedStatement;

public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException
{
	Class.forName("com.mysql.jdbc.Driver");  
	Helper.connection =DriverManager.getConnection("jdbc:mysql://intvmunix1/DB_TVM56_2324_JA?useSSL=false","USER_TVM56_2324_JA","Tcs@12345"); 
	Helper.preparedStatement = Helper.connection.prepareStatement(sql);
	
	return Helper.preparedStatement;
	
	}

public static void close() throws SQLException
{
	Helper.connection.close();
	Helper.preparedStatement.close();
}
}
