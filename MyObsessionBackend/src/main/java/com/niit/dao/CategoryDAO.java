package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDAO {

	public List<Category> viewCategory();

	public void saveCategory(Category c);
	
	public void editCategory(String category_id);
	
	public void deleteCategory(String category_id);
}
