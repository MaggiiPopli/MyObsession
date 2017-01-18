package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.niit.dao.UserDAOImpl;
import com.niit.model.User;

@Controller
public class MyController { 
	
	
	//UserDAOImpl userDAOImpl=new UserDAOImpl();
	
	@Autowired
	UserDAOImpl userDAOImpl;
	
	
	@RequestMapping("/")
	public ModelAndView firstPage()
	{
		ModelAndView mv=new ModelAndView("FirstPage");
		return mv;
	}
	@RequestMapping("/sign-in")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("Login");
		return mv;
	}
	@RequestMapping("/sign-up")
	public ModelAndView register()
	{
		ModelAndView mv= new ModelAndView("Register");
		return mv;
	}
	@RequestMapping("/admin")
	public ModelAndView admin()
	{
		ModelAndView mv= new ModelAndView("Admin");
		return mv;
	}

	@RequestMapping("/login1")
	public ModelAndView homepage(HttpServletRequest request)
	{
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		boolean x=userDAOImpl.validate(username, password);
		if(x)
		{
			return new ModelAndView("home","msg","Welcome to the Home Page!");
		}
		else
		{
			return new ModelAndView("Login", "msg", "Invalid Credentials");
		}
	}
	@RequestMapping("/register")
	public ModelAndView ModelAndView (@ModelAttribute User u)
	{
		System.out.println("inside register controller "+u);
		u.setRole("role_user");
		u.setEnabled(true);
		
		userDAOImpl.save(u);
		return new ModelAndView("Login","msg","Registration Successful! Login to Continue.");
	}
	
}

