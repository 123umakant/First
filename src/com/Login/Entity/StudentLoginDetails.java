package com.Login.Entity;
import java.util.LinkedHashSet;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class StudentLoginDetails {
	
	@Id String contact;
	@Index String password;
	
	

	public String getContact() {
		return contact;
	}



	public void setContact(String contact) {
		this.contact = contact;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public StudentLoginDetails(String contact, String password) {
		super();
		this.contact = contact;
		this.password = password;
	}



	public StudentLoginDetails()
	{
		
	}
	
	
}
