package com.niit.myobsessionbackend;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static SupplierDAO supplierDAO;
	
	@Autowired
	static Supplier supplier;
	
	@Test
	public void createSupplierTestCase()
	{
		supplier.setSupplier_id("S005");
		supplier.setSupplier_name("TestSupplier");
		supplier.setSupplier_address("Chennai");
		System.out.println("Create Supplier");
		boolean status=supplierDAO.saveSupplier(supplier);
		Assert.assertEquals("create Supplier Test Case", true, status);
		
	}
	
	@Test
	public void updateSuppliertestCase()
	{
		supplier.setSupplier_id("S003");
		supplier.setSupplier_address("Chennai");
		boolean status=supplierDAO.updateSupplier(supplier);
		Assert.assertEquals("Update Supplier Test Case", true, status);
	}
	
	@Test
	public void deleteSupplierTestCase()
	{
		supplier.setSupplier_id("S002");
		Assert.assertEquals("Delete Supplier Test Case", true, supplierDAO.deleteSupplier(supplier.getSupplier_id()));
	}
	
	@Test
	public void getSupplierTestCase()
	{
		Assert.assertEquals("get Supplier Test Case", null, supplierDAO.getSupplierById(""));
	}
}

