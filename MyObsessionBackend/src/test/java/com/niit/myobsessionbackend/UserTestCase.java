package com.niit.myobsessionbackend;

import static org.junit.Assert.*;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.dao.UserDAOImpl;
import com.niit.model.User;



public class UserTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static User user;
	
	@Autowired
	static UserDAOImpl userDAOImpl;
	
	@BeforeClass
	public static void init()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		userDAOImpl=(UserDAOImpl)context.getBean("userDAOImpl");
		user=(User)context.getBean("user");
		System.out.println("Objects created successfully");
	
	}
	
	@Test
	public void createUserTestCase()
	{
		user.setUsername("Tushar09");
		user.setPassword("qwerty");
		user.setName("Tushar");
		user.setContact("9899232112");
		user.setEmail("tushar@abc.com");
		user.setGender("Male");
		user.setAddress("New Delhi");
		System.out.println("Create User");
		boolean status=userDAOImpl.save(user);
		Assert.assertEquals("create user Test Case", true, status);
		
	}

	@Test
	public void validateUsertestCase()
	{
		user.setUsername("hasit03");
		user.setPassword("qwerty");
		String username=user.getUsername();
		String password=user.getPassword();
		boolean status=userDAOImpl.validate(username, password);
		Assert.assertEquals("Update User Test Case", true, status);
	}
	
	
	
}
