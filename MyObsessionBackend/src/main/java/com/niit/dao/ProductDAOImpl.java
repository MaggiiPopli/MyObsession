package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.model.Product;

public class ProductDAOImpl implements ProductDAO{
  
	@Autowired
	SessionFactory sessionFactory; 
	
	public ProductDAOImpl()
	{
		
	}
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	}
	
	public Session getSession()
	{
		return sessionFactory.openSession();
		
	}

	public List<Product> viewProduct() {
		// TODO Auto-generated method stub
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Product";
		Query q=sess.createQuery(hql);
		
		List<Product> l=q.list();
		return l;
	
	}

	public void saveProduct(Product p) {
		// TODO Auto-generated method stub
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
		
	}

	public void editProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		Product p=sess.get(Product.class, product_id);
		sess.update(p);
		tx.commit();
		sess.close();
	}

	public void deleteProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		Product p=sess.get(Product.class, product_id);
		sess.delete(p);
		tx.commit();
		sess.close();

	}

 }
