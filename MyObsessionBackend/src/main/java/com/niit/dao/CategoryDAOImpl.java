package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	SessionFactory sessionFactory; 
	
	public CategoryDAOImpl()
	{
		
	}
	
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	} 
	
	/*public Session getSession()
	{
		return sessionFactory.openSession();
		
	}*/

	public List<Category> viewCategory() {
		// TODO Auto-generated method stub 
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Category";
		Query q=sess.createQuery(hql);
		
		List<Category> l=q.list();
		return l;
	}

	public void saveCategory(Category c) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
		
	}

	public void editCategory(String category_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Category c=(Category) sess.get(Category.class, category_id);
		sess.update(c);
		tx.commit();
		sess.close();
	}

	public void deleteCategory(String category_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Category c=(Category) sess.get(Category.class, category_id);
		sess.delete(c);
		tx.commit();
		sess.close();
	}

	public Category getCategoryById(String category_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Category c=(Category) sess.get(Category.class,category_id);
		return c;
	}

	public void updateCategory(Category c) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(c);
		tx.commit();
		sess.close();
	}

}
