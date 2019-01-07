package com.Login.Entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class ServiceData {

	@Id long timestamp;
	@Index long tutor_contact;
	@Index 	String status;
	
	public long getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
	public long getTutor_contact() {
		return tutor_contact;
	}
	public void setTutor_contact(long tutor_contact) {
		this.tutor_contact = tutor_contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public ServiceData(long tutor_contact, String status) {
		super();
		this.timestamp = System.currentTimeMillis();
		this.tutor_contact = tutor_contact;
		this.status = status;
	}
	public ServiceData()
	{
		
	}
	
	
	
	
	
}
