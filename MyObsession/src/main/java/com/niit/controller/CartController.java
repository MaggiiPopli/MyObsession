package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.CartDAOImpl;
import com.niit.dao.ProductDAOImpl;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController {

	@Autowired
	CartDAOImpl cartDAOImpl;
	
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	@RequestMapping("/cart/{product_id}")
	public ModelAndView cartPage(@PathVariable String product_id, @RequestParam String q, HttpSession session, HttpServletRequest request, @ModelAttribute Cart c)
	{
		session=request.getSession(false);
		String username=(String) session.getAttribute("username");
		if(username == null)
		{
			return new ModelAndView("Login");
		}
		else
		{
		Product p=productDAOImpl.getProductById(product_id);
		
		c.setpName(p.getName());
		c.setpId(p.getProduct_id());
		c.setpPrice(p.getPrice());
		c.setpBrand(p.getBrand());
		c.setFlag(0);
		int qty=Integer.parseInt(q);
		c.setQuantity(qty);
		c.setUsername(username);
		cartDAOImpl.insertCart(c);
		return new ModelAndView("redirect:/viewCart");
		}
	}
	
	@RequestMapping("removeCart/{pId}")
	public ModelAndView removeProduct(@PathVariable String pId)
	{
		cartDAOImpl.removeCart(pId);
		return new ModelAndView("redirect:/viewCart");
	}
	
	@RequestMapping("/viewCart")
	public ModelAndView displayProducts(HttpSession session)
	{
		
			String username=(String)session.getAttribute("username");
			ModelAndView mv= new ModelAndView("Cart");
			List<Cart> list=cartDAOImpl.viewCart(username);
			System.out.println("CartList is"+list);
			Gson g=new Gson();
			String str=g.toJson(list);
			System.out.println("JSON DATA IS "+str);
			mv.addObject("pr",str);
			return mv;
		
	}	
}
