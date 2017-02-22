package com.niit.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Orders;
import com.niit.model.Payment;
import com.niit.model.ShippingAddress;

@Repository
public class OrdersDAOImpl implements OrdersDAO {
	
	@Autowired
	SessionFactory sessionFactory; 
	
	
	public OrdersDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	}

	public void saveOrders(Orders o) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Payment p=o.getPm();
		ShippingAddress s=o.getSa();
		sess.save(p);
		sess.save(s);
		tx.commit();
		sess.close();
	}

}
