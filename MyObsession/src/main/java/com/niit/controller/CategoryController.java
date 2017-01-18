package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAOImpl;
import com.niit.model.Category;



@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAOImpl categoryDAOImpl;
	
	@RequestMapping("/addC")
	public ModelAndView addC()
	{
		ModelAndView mv=new ModelAndView("AddCategory");
		return mv;
	}
	
	@RequestMapping("/addcategory")
	public ModelAndView addCategory(@ModelAttribute Category c)
	{
		categoryDAOImpl.saveCategory(c);
		ModelAndView mv= new ModelAndView("redirect:/viewC");
		return mv;
	}
	@RequestMapping("/viewC")
	public ModelAndView m1()
	{
		//this is jsp filename
		ModelAndView mv=new ModelAndView("ViewCategory");
		List<Category> l=categoryDAOImpl.viewCategory();
		mv.addObject("List", l);
		return mv;
		
	}
	@RequestMapping("/edit/{category_id}")
	public ModelAndView edit(@PathVariable String category_id)
	{
		categoryDAOImpl.editCategory(category_id);
		ModelAndView mv= new ModelAndView("redirect:/viewC");
		return mv;
	}
	 
	@RequestMapping("/delete/{category_id}")
	public ModelAndView delete(@PathVariable String category_id)
	{
		categoryDAOImpl.deleteCategory(category_id);
		ModelAndView mv= new ModelAndView("redirect:/viewC");
		return mv;
	}
	
	

}
