package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cart_id;
	
	private String username;
	private String pName;
	private String pId;
	private int pPrice;
	private String pBrand; 
	private int quantity;
	
	public int getCart_id() {
		return cart_id;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getpName() {
	 	return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public String getpBrand() {
		return pBrand;
	}
	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", pName=" + pName + ", pId=" + pId + ", pPrice=" + pPrice + ", pBrand="
				+ pBrand + ", quantity=" + quantity + "]";
	}
	
	
}
