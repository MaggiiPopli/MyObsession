package com.niit.dao;

import org.springframework.stereotype.Repository;

import com.niit.model.Orders;

public interface OrdersDAO {
	
	public void saveOrders(Orders o);

}
