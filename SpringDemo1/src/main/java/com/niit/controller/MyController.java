package com.niit.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.UserDAO;

@Controller
public class MyController {
	
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/maggi")
	public ModelAndView index1()
	{
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView home(HttpServletRequest request)
	{
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		UserDAO obj=new UserDAO();
		boolean x = obj.Validate(username, password);
		{
			if(x)
			{
				return new ModelAndView("welcome","msg", "Welcome to the Home Page!");
				
			}
			else
			{
				return new ModelAndView("home", "msg", "Invalid Credentials");
			}
		}
		
	}

	
		
}
