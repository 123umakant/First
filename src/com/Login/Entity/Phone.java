package com.Login.Entity;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class Phone {
	@Id long id;
	@Index String time;
	@Index String pe;
	@Index String select;
	@Index String Phone;
	
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

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public Phone(long id, String time, String pe, String select, String phone) {
		super();
		this.id = id;
		this.time = time;
		this.pe = pe;
		this.select = select;
		this.Phone = phone;
	}
	public Phone()
	{
}
}
