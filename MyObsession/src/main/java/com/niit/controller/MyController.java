package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAOImpl;
import com.niit.dao.ProductDAOImpl;
import com.niit.dao.UserDAOImpl;
import com.niit.model.Category;
import com.niit.model.Supplier;
import com.niit.model.User;
import com.sun.javafx.css.CalculatedValue;

@Controller
public class MyController { 
	
	
	//UserDAOImpl userDAOImpl=new UserDAOImpl();
	
	@Autowired
	UserDAOImpl userDAOImpl;
	
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	@Autowired
	CategoryDAOImpl categoryDAOImpl;
	
	
	@RequestMapping("/")
	public ModelAndView firstPage()
	{
		ModelAndView mv=new ModelAndView("FirstPage");
		List<Category> listC=categoryDAOImpl.viewCategory();
		System.out.println("category values are"+listC);
		mv.addObject("ListC", listC);
		/*List<Supplier> listS=productDAOImpl.getSuppliername();
		mv.addObject("ListS", listS);*/
		return mv;
	}
	@RequestMapping("/sign-in")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("Login");
		return mv;
	}
	
	@RequestMapping("/demo1")
	public ModelAndView testMethod()
	{
		ModelAndView mv = new ModelAndView("demo1");
		return mv;
	}
	
	@RequestMapping("/logout1")
	public ModelAndView logout(HttpSession session)
	{
		session.setAttribute("username", "");
		session.invalidate();
		ModelAndView mv = new ModelAndView("FirstPage");
		return mv;
	}
	@RequestMapping("/sign-up")
	public ModelAndView register()
	{
		ModelAndView mv= new ModelAndView("Register");
		return mv;
	}
	
	@RequestMapping("/AdminLogin")
	public ModelAndView AdminLogin()
	{
		ModelAndView mv= new ModelAndView("AdminLogin");
		return mv;
	}
	@RequestMapping("/AdminLoginError")
	public ModelAndView AdminError()
	{
		ModelAndView mv= new ModelAndView("AdminLoginError");
		return mv;
	}
	@RequestMapping("/Admin")
	public ModelAndView admin()
	{
		ModelAndView mv= new ModelAndView("Admin");
		return mv;
	}

	@RequestMapping("/login1")
	public ModelAndView homepage(HttpServletRequest request,HttpSession session)
	{
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		boolean x=userDAOImpl.validate(username, password);
		if(x)
		{
			session.setAttribute("username", username);
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

