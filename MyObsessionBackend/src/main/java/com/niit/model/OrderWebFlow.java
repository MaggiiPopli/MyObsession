package com.niit.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.dao.CartDAOImpl;
import com.niit.dao.OrdersDAOImpl;

@Component("orderWebFlow")
public class OrderWebFlow {
	
	@Autowired
	OrdersDAOImpl ordersDAOImpl;
	
	@Autowired
	CartDAOImpl cartDAOImpl;
	String usr;

		 public Orders initFlow()
		 {
			  return new Orders();
			  
		 }
		 
		 public String addShippingAddress(Orders orders, ShippingAddress shippingAddress)
		 {
			 orders.setSa(shippingAddress);
			 usr=shippingAddress.getName();
			 return "success";
		 }
		 
		 public String addPaymentMode(Orders orders, Payment paymentMode)
		 {
			 orders.setPm(paymentMode);
			 return "success";
		 }
		 
		 public String addOrders(Orders orders)
		 {
			 ordersDAOImpl.saveOrders(orders);
			 System.out.println("Orders"+orders);
			 cartDAOImpl.cartFinal(usr);
			 return "success";
		 }
		 
		 
		 
}

