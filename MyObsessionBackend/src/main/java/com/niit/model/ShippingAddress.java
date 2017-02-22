package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ShippingAddress implements Serializable{

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ShippingID;
	
	private int pincode;
	 private String name;
	 private String address;
	 private String locality;
	 private String city;
	 private String state;
	 private int contact;
	
	 
	 
	public int getShippingID() {
		return ShippingID;
	}
	public void setShippingID(int shippingID) {
		ShippingID = shippingID;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "ShippingAddress [pincode=" + pincode + ", name=" + name + ", address=" + address + ", locality="
				+ locality + ", city=" + city + ", state=" + state + ", contact=" + contact + "]";
	}
	 
	
}
