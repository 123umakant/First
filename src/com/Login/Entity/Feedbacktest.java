package com.Login.Entity;


import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class Feedbacktest {
	@Id long id;
	@Index String EmpName;
	@Index String Benefit;
	@Index String Idea;
	@Index String  time;
	String Message;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEmpName() {
		return EmpName;
	}

	public void setEmpName(String empName) {
		EmpName = empName;
	}

	public String getBenefit() {
		return Benefit;
	}

	public void setBenefit(String benefit) {
		Benefit = benefit;
	}

	public String getIdea() {
		return Idea;
	}

	public void setIdea(String idea) {
		Idea = idea;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}
	public Feedbacktest(String empName, String benefit, String idea,
			String time, String message,long ID) {
		super();
		this.EmpName = empName;
		this.Benefit = benefit;
		this.Idea = idea;
		this.time = time;
		this.Message = message;
		this.id=ID;
	}
	public Feedbacktest()
	{
	
}
}
