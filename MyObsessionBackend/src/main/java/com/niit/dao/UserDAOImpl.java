package com.niit.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	SessionFactory sessionFactory; 
	
	public UserDAOImpl()
	{
		
	}
	
	/*
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	}*/
	
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();	
		
	}
	
	
	public boolean validate(String username, String password) {
		// TODO Auto-generated method stub
		String hql="from User where username=:username and password=:password";
		System.out.println("test2");
		Session sess=getSession();
		Query q=sess.createQuery(hql);
		q.setParameter("username", username);
		q.setParameter("password", password);
	
		List<User> l=q.list();
		if(l.size()>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	
	}

	public void save(User u) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		System.out.println("user data"+u);
		sess.persist(u);
		tx.commit();
		sess.close();
	}
 }



