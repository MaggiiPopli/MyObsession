package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDAO {
	
	public List<Cart> viewCart(String username);
	
	public void insertCart(Cart c);
	
	public void removeCart(String pId);

}
