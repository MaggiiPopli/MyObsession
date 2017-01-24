package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
  
	@Autowired
	SessionFactory sessionFactory; 
	
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	} 
	
	/*public Session getSession()
	{
		return sessionFactory.openSession();
		
	}*/

	public List<Product> viewProduct() {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Product";
		System.out.println("After from product");
	  Query q=sess.createQuery(hql);
		
		List<Product> l=q.list();
		System.out.println("LIST PRODUCT"+l);
		
		return l;
	
	}

	public void saveProduct(Product p) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		//sess.close();
		
	}

	public void editProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Product p=(Product) sess.get(Product.class, product_id);
		sess.update(p);
		tx.commit();
		sess.close();
	}

	public void deleteProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Product p=(Product) sess.get(Product.class, product_id);
		sess.delete(p);
		tx.commit();
		sess.close();

	}

	public Product getProductById(String product_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Product p=(Product)sess.get(Product.class, product_id);
		System.out.println("get id by product"+p);
		return p;
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(p);
		tx.commit();
		sess.close();
	}

 }
