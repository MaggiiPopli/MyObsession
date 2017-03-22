package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;
import com.niit.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO{

	@Autowired
	SessionFactory sessionFactory; 
	
	public SupplierDAOImpl()
	{
		
	}
	
	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		
	} 
	
	/*public Session getSession()
	{
		return sessionFactory.openSession();
		
	}*/

	
	public List<Supplier> viewSupplier() {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Supplier";
		Query q=sess.createQuery(hql);
		
		List<Supplier> l=q.list();
		return l;

	}

	public void saveSupplier(Supplier s) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(s);
		tx.commit();
		sess.close();
	
	}

	public void editSupplier(String supplier_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Supplier s=(Supplier) sess.get(Supplier.class, supplier_id);
		sess.update(s);
		tx.commit();
		sess.close();
	}

	public void deleteSupplier(String supplier_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Supplier s=(Supplier) sess.get(Supplier.class, supplier_id);
		sess.delete(s);
		tx.commit();
		sess.close();
	}

	public Supplier getSupplierById(String supplier_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Supplier s=(Supplier) sess.get(Supplier.class, supplier_id);
		return s;
	}

	public void updateSupplier(Supplier s) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(s);
		tx.commit();
		sess.close();

	}

}
