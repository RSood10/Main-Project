package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.Cart;
import com.beans.Product;
import com.helper.Helper;

public class ProductDao {

	public ProductDao()
	{
		
	}
	public ArrayList<Product> getAllProducts() throws ClassNotFoundException, SQLException {
        ArrayList<Product> product = new ArrayList<>();
        try {

            java.lang.String sql = "select * from Products_04";
            
            PreparedStatement ps = Helper.getPreparedStatement(sql);
           
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
                row.setId(rs.getInt("ProductID"));
                row.setName(rs.getString("Product_Name"));
                row.setCategory(rs.getString("Product_Category"));
                row.setPrice(rs.getDouble("Product_Price"));
                row.setDesc(rs.getString("Product_Desc"));
                row.setImage(rs.getString("Product_Image"));

                product.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        Helper.close();
        return product;
    }
	
	 public List<Cart> getCartProducts(ArrayList<Cart> cartList) throws ClassNotFoundException {
	        List<Cart> product = new ArrayList<>();
	        try {
	            if (cartList.size() > 0) {
	                for (Cart item : cartList) {
	                	
	                	//product table not created
	                    java.lang.String sql = "select * from products where id=?";
	                    
	                    PreparedStatement ps = Helper.getPreparedStatement(sql);
	                    
	                    ps.setInt(1, item.getId());
	                   ResultSet rs = ps.executeQuery();
	                    while (rs.next()) {
	                        Cart cart = new Cart();
	                        
	                        //change column name
	                        cart.setId(rs.getInt("id"));
	                        cart.setName(rs.getString("name"));
	                        cart.setCategory(rs.getString("category"));
	                        cart.setPrice(rs.getDouble("price")*item.getQuantity());
	                        cart.setQuantity(item.getQuantity());
	                        product.add(cart);
	                    }

	                }
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return product;
	    }
	
}