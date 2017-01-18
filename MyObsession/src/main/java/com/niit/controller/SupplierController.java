package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAOImpl;
import com.niit.model.Supplier;


@Controller
public class SupplierController {

	@Autowired
	SupplierDAOImpl supplierDAOImpl;
	
	@RequestMapping("/addS")
	public ModelAndView addS()
	{
		ModelAndView mv= new ModelAndView("AddSupplier");
		return mv;
	}
	 
	@RequestMapping("/addsupplier")
	public ModelAndView addSupplier(@ModelAttribute Supplier s)
	{
		supplierDAOImpl.saveSupplier(s);
		ModelAndView mv= new ModelAndView("redirect:/viewS");
		return mv;
	}
	
	@RequestMapping("/viewS")
	public ModelAndView m1()
	{
		//this is jsp filename
		ModelAndView mv=new ModelAndView("ViewSupplier");
		List<Supplier> l=supplierDAOImpl.viewSupplier();
		mv.addObject("List", l);
		return mv;
		
	}
	
	@RequestMapping("/edit/{supplier_id}")
	public ModelAndView edit(@PathVariable String supplier_id)
	{
		supplierDAOImpl.editSupplier(supplier_id);
		ModelAndView mv= new ModelAndView("redirect:/viewS");
		return mv;
	}
	
	@RequestMapping("/edit/{supplier_id}")
	public ModelAndView delete(@PathVariable String supplier_id)
	{
		supplierDAOImpl.deleteSupplier(supplier_id);
		ModelAndView mv= new ModelAndView("redirect:/viewS");
		return mv;
	}
	

}
