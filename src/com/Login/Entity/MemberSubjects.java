package com.Login.Entity;

import com.googlecode.objectify.*;
import com.googlecode.objectify.annotation.*;

@Entity
public class MemberSubjects {

	@Id long id;
	@Index @Load Ref<TutorDetail> tutor;
	@Index String course;
	@Index String subject;
	@Index double qual_score;
	@Index String gender;
	@Index double lat;
	@Index double lng;
	@Index int radius;
	@Index int price;
	@Index int experience;
	@Index float rating;
	
	
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public double getQual_score() {
		return qual_score;
	}

	public void setQual_score(double qual_score) {
		this.qual_score = qual_score;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

	public int getRadius() {
		return radius;
	}

	public void setRadius(int radius) {
		this.radius = radius;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}
	
	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public MemberSubjects(Ref<TutorDetail> tutor, String course,
			String subject, double qual_score, String gender, double lat,
			double lng, int radius, int price, int experience, float rating) {
		super();
		this.id=System.currentTimeMillis();
		this.tutor = tutor;
		this.course = course;
		this.subject = subject;
		this.qual_score = qual_score;
		this.gender = gender;
		this.lat = lat;
		this.lng = lng;
		this.radius = radius;
		this.price = price;
		this.experience = experience;
		this.rating = rating;
	}

	public MemberSubjects()
	{
		
	}

	
}
