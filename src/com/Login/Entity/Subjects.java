package com.Login.Entity;


import com.googlecode.objectify.*;
import com.googlecode.objectify.annotation.*;

@Entity
public class Subjects {
	@Id long id;
@Index @Load Ref<TutorDetail> tutor;
@Index String course;
@Index String[] subjects;
public Subjects(Ref<TutorDetail> tutor, String course,
		String[] subjects) {
	super();
	this.id = System.currentTimeMillis();
	this.tutor = tutor;
	this.course = course;
	this.subjects = subjects;
}

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public Ref<TutorDetail> getTutor() {
	return tutor;
}

public void setTutor(Ref<TutorDetail> tutor) {
	this.tutor = tutor;
}

public String getCourse() {
	return course;
}

public void setCourse(String course) {
	this.course = course;
}

public String[] getSubjects() {
	return subjects;
}

public void setSubjects(String[] subjects) {
	this.subjects = subjects;
}

public Subjects()
{
	}

}
