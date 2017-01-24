package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDAOImpl;
import com.niit.model.Product;

@Controller
public class ProductController {


	//ProductDAOImpl  productDAOImpl=new ProductDAOImpl();
	
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	@RequestMapping("/addP")
	public ModelAndView addP()
	{
		ModelAndView mv= new ModelAndView("AddProduct","command",new Product());
		return mv;
	}
	 
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute Product p)
	{
		String filename=null; //image file name
		byte[] bytes;
		if(!p.getImage().isEmpty())
			try {
				bytes=p.getImage().getBytes();
				productDAOImpl.saveProduct(p);
				String path="D:/eclipse/MyObsession/src/main/webapp/resources/image"+p.getProduct_id()+".jpg";
				File f=new File(path);
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
			}
			catch(Exception ex)
				{
					System.out.println(ex);
				}
				ModelAndView mv= new ModelAndView("redirect:/viewP");
				return mv;
		}
	
	@RequestMapping("/viewP")
	public ModelAndView m1()
	{
		//this is jsp filename
		ModelAndView mv=new ModelAndView("ViewProduct");
		List<Product> l=productDAOImpl.viewProduct();
		mv.addObject("List", l);
		return mv;
	 	
	}	
	 
	@RequestMapping("/editP/{product_id}")
	public ModelAndView edit(@PathVariable String product_id)
	{
		/*productDAOImpl.editProduct(product_id);
		ModelAndView mv= new ModelAndView("redirect:/viewP");
		return mv;*/
		Product p= productDAOImpl.getProductById(product_id);
		System.out.println("EDIT PRODUCT "+p);
		return new ModelAndView("EditProduct","command",p);
	}
	
	@RequestMapping("/editproduct")
	public ModelAndView editSave(@ModelAttribute Product p)
	{
	 	productDAOImpl.updateProduct(p);
		System.out.println("EditSave");
		return new ModelAndView("redirect/:viewP");	
	}	
	
	@RequestMapping("/delete/{product_id}")
	public ModelAndView delete(@PathVariable String product_id)
	{
		productDAOImpl.deleteProduct(product_id);
		ModelAndView mv= new ModelAndView("redirect:/viewP");
		return mv;
	}
	
	
	
}
