package com.niit.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Orders implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int OrderID;
	
	
	@OneToOne
	private ShippingAddress sa;
	
	@OneToOne
	private Payment pm;
	
	
	
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}

	public ShippingAddress getSa() {
		return sa;
	}
	public void setSa(ShippingAddress sa) {
		this.sa = sa;
	}
	public Payment getPm() {
		return pm;
	}
	public void setPm(Payment pm) {
		this.pm = pm;
	}
	@Override
	public String toString() {
		return sa.getPincode()+"\n"+sa.getName()+"\n"+sa.getAddress()+"\n"+sa.getLocality()+"\n"+sa.getCity()+"\n"+sa.getState()+"\n"+sa.getContact();
	}
	
	
}
