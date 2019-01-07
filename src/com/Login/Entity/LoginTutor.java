package com.Login.Entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class LoginTutor {

	@Id @Index long Phone;   //teacher phone number is ID
	String password;
	@Index String email;
	@Index long timestamp;
	public long getPhone() {
		return Phone;
	}
	public void setPhone(long phone) {
		Phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
	
	public LoginTutor(long phone, String password, String email, long timestamp) {
		super();
		Phone = phone;
		this.password = password;
		this.email = email;
		this.timestamp = timestamp;
	}
	
	public LoginTutor()
	{
		
	}
	
	
}
