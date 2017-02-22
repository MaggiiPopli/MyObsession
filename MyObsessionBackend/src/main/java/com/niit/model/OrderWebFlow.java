package com.niit.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.dao.OrdersDAOImpl;

@Component("orderWebFlow")
public class OrderWebFlow {
	
	@Autowired
	OrdersDAOImpl ordersDAOImpl;

		 public Orders initFlow()
		 {
			  return new Orders();
			  
		 }
		 
		 public String addShippingAddress(Orders orders, ShippingAddress shippingAddress)
		 {
			 orders.setSa(shippingAddress);
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
			 return "success";
		 }
		 
		 
}

