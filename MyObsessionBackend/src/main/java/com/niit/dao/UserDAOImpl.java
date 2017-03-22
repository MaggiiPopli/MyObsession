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
	 
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	}
	
	/*public Session getSession()
	{
		return sessionFactory.getCurrentSession();	
		
	}*/
	
	
	public boolean validate(String username, String password) {
		// TODO Auto-generated method stub
		String hql="from User where username=:username and password=:password";
		System.out.println("test2");
		//Session sess=sessionFactory.getCurrentSession().
		Query q=sessionFactory.openSession().createQuery(hql);
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

	public boolean save(User u) {
		// TODO Auto-generated method stub
		try{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		System.out.println("user data"+u);
		sess.persist(u);
		tx.commit();
		sess.close();
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception occured "+e);
			return false;
		}
	}
 }



