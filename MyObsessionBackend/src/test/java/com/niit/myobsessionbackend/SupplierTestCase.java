package com.niit.myobsessionbackend;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.SupplierDAOImpl;
import com.niit.model.Category;
import com.niit.model.Supplier;

public class SupplierTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static SupplierDAOImpl supplierDAOImpl;
	
	@Autowired
	static Supplier supplier;
	
	@BeforeClass
	public static void init()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		supplierDAOImpl=(SupplierDAOImpl)context.getBean("supplierDAOImpl");
		supplier=(Supplier)context.getBean("supplier");
		System.out.println("Objects created successfully");
	
	}
	
	@Test
	public void createSupplierTestCase()
	{
		supplier.setSupplier_id("S002");
		supplier.setSupplier_name("Hibiscus BeautyHut");
		supplier.setSupplier_address("Chennai");
		System.out.println("Create Supplier");
		boolean status=supplierDAOImpl.saveSupplier(supplier);
		Assert.assertEquals("create Supplier Test Case", true, status);
		
	}
	
	@Test
	public void updateSuppliertestCase()
	{
		supplier.setSupplier_id("S003");
		supplier.setSupplier_address("New Delhi");
		supplier.setSupplier_name("CloudTail India");
		boolean status=supplierDAOImpl.updateSupplier(supplier);
		Assert.assertEquals("Update Supplier Test Case", true, status);
	}
	
	@Test
	public void deleteSupplierTestCase()
	{
		supplier.setSupplier_id("S005");
		Assert.assertEquals("Delete Supplier Test Case", true, supplierDAOImpl.deleteSupplier(supplier.getSupplier_id()));
	}
	
	@Test
	public void getSupplierTestCase()
	{
		Assert.assertEquals("get Supplier Test Case", null, supplierDAOImpl.getSupplierById(""));
	}
}

