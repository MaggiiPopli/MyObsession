package com.niit.myobsessionbackend;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.dao.CategoryDAOImpl;
import com.niit.model.Category;


public class CategoryTestCase {

	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static CategoryDAOImpl categoryDAOImpl;
	
	@Autowired
	static Category category;
	
	@BeforeClass
	public static void init()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		categoryDAOImpl=(CategoryDAOImpl)context.getBean("categoryDAOImpl");
		category=(Category)context.getBean("category");
		System.out.println("Objects created successfully");
	
	}
	
	@Test
	public void createCategoryTestCase()
	{
		category.setCategory_id("cat05");
		category.setCategory_name("Herbal");
		category.setCategory_description("These products contains no chemicals");
		System.out.println("Create Category");
		boolean status=categoryDAOImpl.saveCategory(category);
		Assert.assertEquals("create Category Test Case", true, status);
		
	}
	
	/*@Test
	public void updateCategorytestCase()
	{
		category.setCategory_id("Cat03");
		category.setCategory_name("Face");
		boolean status=categoryDAOImpl.updateCategory(category);
		Assert.assertEquals("Update Category Test Case", true, status);
	}

	@Test
	public void deleteCategoryTestCase()
	{
		category.setCategory_id("Cat04");
		Assert.assertEquals("Delete Category Test Case", true, categoryDAOImpl.deleteCategory(category.getCategory_id()));
	}
	
	@Test
	public void getCategoryTestCase()
	{
		Assert.assertEquals("get Category Test Case", null, categoryDAOImpl.getCategoryById(""));
	}*/
}
