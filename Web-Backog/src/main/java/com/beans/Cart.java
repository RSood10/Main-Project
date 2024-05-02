package com.beans;

public class Cart extends Product{
 
	int quantity;

	public Cart(int quantity) {
		super();
		this.quantity = quantity;
	}

	public Cart() {
		super();
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}