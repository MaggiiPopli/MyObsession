package com.niit.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
@Entity
public class Product {
	
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	private String product_id;
	private String name;
	private String brand;
	private int price;
	private String description;
	private String category_name;
	private String supplier_name;
	@Transient
	private MultipartFile image;
	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String id) {
		this.product_id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", name=" + name + ", brand=" + brand + ", price=" + price
				+ ", description=" + description + ", category_name=" + category_name + ", supplier_name="
				+ supplier_name + ", image=" + image + "]";
	}
	
	

}
