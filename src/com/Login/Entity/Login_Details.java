package com.Login.Entity;


import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Login_Details {
@Id String username;
 String password;
 
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Login_Details(String username, String password) {
	super();
	this.username = username;
	this.password = password;
}

public Login_Details() {
	super();
	// TODO Auto-generated constructor stub
}
 
 
 
}
