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
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.ProductDAOImpl;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {


	//ProductDAOImpl  productDAOImpl=new ProductDAOImpl();
	
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	@RequestMapping("/addP")
	public ModelAndView addP()
	{
		ModelAndView mv= new ModelAndView("AddProduct","command",new Product());
		List<Category> listC=productDAOImpl.getCategoryname();
		mv.addObject("ListC", listC);
		List<Supplier> listS=productDAOImpl.getSuppliername();
		mv.addObject("ListS", listS);
		return mv;
	}
	
	@RequestMapping("/product")
	public ModelAndView displayProducts()
	{
		ModelAndView mv= new ModelAndView("product");
		List<Product> list=productDAOImpl.viewProduct();
		Gson g=new Gson();
		String str=g.toJson(list);
		System.out.println("JSON DATA IS "+str);
		mv.addObject("pr",str);
		return mv;
	}
	
	@RequestMapping("ProductDetails/{product_id}")
	public ModelAndView productDetails(@PathVariable String product_id)
	{
		Product p= productDAOImpl.getProductById(product_id);
		ModelAndView mv=new ModelAndView("ProductDetails");
		mv.addObject("product", p);
		return mv;
	}
	 
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute Product p)
	{
		String filename=null; //image file name
		byte[] bytes;
		System.out.println("Get Image"+p);
		if(!p.getImage().isEmpty())
			try {
				bytes=p.getImage().getBytes();
				productDAOImpl.saveProduct(p);
				String path="D:/eclipse/MyObsession/src/main/webapp/resources/image/"+p.getProduct_id()+".jpg";
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
		System.out.println("INSIDE EDIT SAVE");
	 	productDAOImpl.updateProduct(p);
		System.out.println("EditSave"+p);
		return new ModelAndView("redirect:/viewP");	
	}	
	
	@RequestMapping("/deleteP/{product_id}")
	public ModelAndView delete(@PathVariable String product_id)
	{
		productDAOImpl.deleteProduct(product_id);
		ModelAndView mv= new ModelAndView("redirect:/viewP");
		return mv;
	}
	
	
	
}
