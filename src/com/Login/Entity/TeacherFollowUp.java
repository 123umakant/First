package com.Login.Entity;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.*;

@Entity
public class TeacherFollowUp {
	@Id long id;   
	@Index long tut_id;
	@Index long contact;
	@Index String followupdate;    //reqd
	@Index String nextfollowup;    //reqd
	@Index String message;        //reqd
	@Index String employee_id;    //reqd
	@Index String employee_name;    //reqd
    @Index long conversion_chance;      //reqd
    @Index String status; //not touch,pending, in process, confirm, received  //reqd
  public String getEmployee_id() {
		return employee_id;
	}

  
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


public TeacherFollowUp(long tut_id, long contact,
			String followupdate, String nextfollowup, String message,
			String employee_id,String employee_name,long conversion_chance,String status) {
		this.id = System.currentTimeMillis();
		this.tut_id = tut_id;
		this.contact = contact;
		this.followupdate = followupdate;
		this.nextfollowup = nextfollowup;
		this.message = message;
		this.conversion_chance = conversion_chance;
		this.employee_id=employee_id;
	 this.employee_name=employee_name;
	 this.status=status;
}



public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public long getTut_id() {
		return tut_id;
	}

	public void setTut_id(long tut_id) {
		this.tut_id = tut_id;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getFollowupdate() {
		return followupdate;
	}

	public void setFollowupdate(String followupdate) {
		this.followupdate = followupdate;
	}

	public String getNextfollowup() {
		return nextfollowup;
	}

	public void setNextfollowup(String nextfollowup) {
		this.nextfollowup = nextfollowup;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public long getConversion_chance() {
		return conversion_chance;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public void setConversion_chance(long conversion_chance) {
		this.conversion_chance = conversion_chance;
	}

public TeacherFollowUp()
{
	}
}
