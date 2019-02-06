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
	
	@Index float last_active_rating;
	@Index float recentPay_rating;
	@Index float last_sms_rating;
	@Index String Plan_type;
	
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
	
	public float getLast_active_rating() {
		return last_active_rating;
	}

	public void setLast_active_rating(float last_active_rating) {
		this.last_active_rating = last_active_rating;
	}

	public float getRecentPay_rating() {
		return recentPay_rating;
	}

	public void setRecentPay_rating(float recentPay_rating) {
		this.recentPay_rating = recentPay_rating;
	}

	public float getLast_sms_rating() {
		return last_sms_rating;
	}

	public void setLast_sms_rating(float last_sms_rating) {
		this.last_sms_rating = last_sms_rating;
	}

	public String getPlan_type() {
		return Plan_type;
	}

	public void setPlan_type(String plan_type) {
		Plan_type = plan_type;
	}

	public MemberSubjects(Ref<TutorDetail> tutor, String course,
			String subject, double qual_score, String gender, double lat,
			double lng, int radius, int price, int experience,
			float last_active_rating, float recentPay_rating,
			float last_sms_rating) {
		super();
		this.id = 1549411200000l;
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
		this.last_active_rating = last_active_rating;
		this.recentPay_rating = recentPay_rating;
		this.last_sms_rating = last_sms_rating;
	}

	public MemberSubjects()
	{
		
	}

	
}
