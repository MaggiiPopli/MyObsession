package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO {
	
	public List<Product> viewProduct();

	public void saveProduct(Product p);
	
	public void editProduct(String product_id);
	
	public void deleteProduct(String product_id);
	
	public Product getProductById(String product_id);
	
	public void updateProduct(Product p);
}
