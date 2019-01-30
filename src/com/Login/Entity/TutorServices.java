package com.Login.Entity;

import java.util.LinkedHashSet;
import java.util.HashSet;
import java.util.LinkedHashSet;

import com.googlecode.objectify.annotation.*;
@Entity
public class TutorServices {
	
	@Index @Id long contact;
	@Index LinkedHashSet<Long> classes_sent;
	@Index LinkedHashSet<Long> submitted_request;
	@Index LinkedHashSet<Long> contacts_viewed;
	@Index LinkedHashSet<Long> fixed_enquiries;
	@Index LinkedHashSet<Long> classes_alloted;
	@Index String notifications;
	
	
	public LinkedHashSet<Long> getFixed_enquiries() {
		return fixed_enquiries;
	}

	public void setFixed_enquiries(LinkedHashSet<Long> fixed_enquiries) {
		this.fixed_enquiries = fixed_enquiries;
	}

	public LinkedHashSet<Long> getSubmitted_request() {
		return submitted_request;
	}

	public LinkedHashSet<Long> getContacts_viewed() {
		return contacts_viewed;
	}

	public void setContacts_viewed(LinkedHashSet<Long> contacts_viewed) {
		this.contacts_viewed = contacts_viewed;
	}

	public void setSubmitted_request(LinkedHashSet<Long> submitted_request) {
		this.submitted_request = submitted_request;
	}

	public String getNotifications() {
		return notifications;
	}

	public void setNotifications(String notifications) {
		this.notifications = notifications;
	}
	
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public LinkedHashSet<Long> getClasses_sent() {
		return classes_sent;
	}
	public void setClasses_sent(LinkedHashSet<Long> classes_sent) {
		this.classes_sent = classes_sent;
	}
	public LinkedHashSet<Long> getClasses_alloted() {
		return classes_alloted;
	}
	public void setClasses_alloted(LinkedHashSet<Long> classes_alloted) {
		this.classes_alloted = classes_alloted;
	}
	
	public TutorServices( long contact) {
		super();
		this.classes_alloted=new LinkedHashSet<Long>();
		this.classes_alloted.add(Long.valueOf(1));
		this.classes_sent=new LinkedHashSet<Long>();
		this.classes_sent.add(Long.valueOf(1));
		this.fixed_enquiries=new LinkedHashSet<Long>();
		this.fixed_enquiries.add(Long.valueOf(1));
		this.contact = contact;
	}

	public TutorServices()
	{
		
	}
	
	
	
}
