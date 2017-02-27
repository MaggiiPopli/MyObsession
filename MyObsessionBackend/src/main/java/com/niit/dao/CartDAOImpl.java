package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository
public class CartDAOImpl implements CartDAO {
	
	
	@Autowired
	SessionFactory sessionFactory; 
	
	
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	}

	public List<Cart> viewCart(String username) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Cart where username=:username and Flag=0";
	  Query q=sess.createQuery(hql);
		q.setParameter("username", username);
		List<Cart> l=q.list();
		return l;

	}

	public void insertCart(Cart c) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}

	public void removeCart(String pId) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		System.out.println("Product ID is"+pId);
		String hql="delete from Cart where pId=:pId";
		  Query q=sess.createQuery(hql);
		  q.setParameter("pId", pId);
		  q.executeUpdate();
		//sess.delete(c);
		tx.commit();
		sess.close();
	}

	public void cartFinal(String username) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="update Cart set Flag=1 where username=:username";
		  Query q=sess.createQuery(hql);
		  q.setParameter("username", username);
		  q.executeUpdate();
		//sess.delete(c);
		tx.commit();
		sess.close();
	}
	
	

}
