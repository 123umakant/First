package com.Login.Entity;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class Email {
	@Id long id;
	@Index String time;
	@Index String pe;
	@Index String select;
	@Index String Email;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPe() {
		return pe;
	}

	public void setPe(String pe) {
		this.pe = pe;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Email(long id, String time, String pe, String select, String email) {
		super();
		this.id = id;
		this.time = time;
		this.pe = pe;
		this.select = select;
		this.Email = email;
	}
	
	public Email()
	{
		
	}
}
