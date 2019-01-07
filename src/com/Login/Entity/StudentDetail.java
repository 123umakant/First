package com.Login.Entity;
import java.util.LinkedHashSet;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class StudentDetail {
	@Id String contact;
	@Index LinkedHashSet<Long>enq_list;
	@Index String name;
	@Index String email;
	@Index String address;
	

	
	public String getContact() {
		return contact;
	}



	public void setContact(String contact) {
		this.contact = contact;
	}



	public LinkedHashSet<Long> getEnq_list() {
		return enq_list;
	}



	public void setEnq_list(LinkedHashSet<Long> enq_list) {
		this.enq_list = enq_list;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public StudentDetail(String contact, String name, String email,
			String address) {
		super();
		this.contact = contact;
		this.name = name;
		this.email = email;
		this.address = address;
		this.enq_list = new LinkedHashSet<Long>();
		this.enq_list.add(Long.valueOf("1"));
	}



	public StudentDetail()
	{
		
	}
	
}
