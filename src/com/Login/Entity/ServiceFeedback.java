package com.Login.Entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class ServiceFeedback {
	
@Id long timestamp;
@Index String date;
@Index String service_satisfaction;
@Index int demo_class_given;
@Index int classes_fixed;
@Index long tutor_contact;
String message;

public long getTimestamp() {
	return timestamp;
}
public void setTimestamp(long timestamp) {
	this.timestamp = timestamp;
}

public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getService_satisfaction() {
	return service_satisfaction;
}
public void setService_satisfaction(String service_satisfaction) {
	this.service_satisfaction = service_satisfaction;
}
public int getDemo_class_given() {
	return demo_class_given;
}
public void setDemo_class_given(int demo_class_given) {
	this.demo_class_given = demo_class_given;
}
public int getClasses_fixed() {
	return classes_fixed;
}
public void setClasses_fixed(int classes_fixed) {
	this.classes_fixed = classes_fixed;
}
public long getTutor_contact() {
	return tutor_contact;
}
public void setTutor_contact(long tutor_contact) {
	this.tutor_contact = tutor_contact;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}


public ServiceFeedback(String date, String service_satisfaction,
		int demo_class_given, int classes_fixed, long tutor_contact,
		String message) {
	super();

    this.timestamp=System.currentTimeMillis();
	this.date = date;
	this.service_satisfaction = service_satisfaction;
	this.demo_class_given = demo_class_given;
	this.classes_fixed = classes_fixed;
	this.tutor_contact = tutor_contact;
	this.message = message;
}
public ServiceFeedback()
{

}
}
