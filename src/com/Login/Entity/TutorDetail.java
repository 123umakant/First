package com.Login.Entity;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;
@Entity
public class TutorDetail {

	@Index long tut_id;    // tutor id
	@Index @Id long contact;  //contact is ID
	@Index @Load Ref<LoginTutor> tutor;   //reference to LoginTutor entity which gives its login credentials
	@Index long timestamp;             //timestamp at which teacher made profile
	@Index String name;
	@Index String english_fluency;    //english_fluency
	@Index double longitude;         //tutor longitude
	@Index double latitude;          //tutor latitute 
	@Index int radius;               //distance teacher can move from its place
	@Index String profile_pic_url;
	@Index String client_of;         //teacher assigned to employee name
	@Index String area;              
	@Index String pay_status;        //payment status
	@Index String activepaidmember;
	@Index String source;           //source which connected this teacher to us

	String about;  //teaching style
	@Index String gender; 
	@Index String dob;
	@Index String current_add;
	@Index String permanent_add;
	@Index String message;
	@Index String regn_date;   //registration date
	
	
	@Index ArrayList<String> courses_preferred;
	@Index ArrayList<String> zones_preffered;
	@Index String email;
	@Index String vehicle;   //do he/she own a vehicle?
	@Index int expected_fees;     
	
	@Index String alt_contact;
	@Index int experience;
	@Index String qualification;
	@Index ArrayList<String> experience_as; // he/she has experience of?
	@Index SimpleDateFormat reg_expiry; 
	@Index String[] teaching_mode;      
	@Index String shortpayurl; 
	@Index String lastactivedate; 
	@Index long lastactivetimestamp;
	
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
	public Ref<LoginTutor> getTutor() {
		return tutor;
	}
	public void setTutor(Ref<LoginTutor> tutor) {
		this.tutor = tutor;
	}
	public long getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEnglish_fluency() {
		return english_fluency;
	}
	public void setEnglish_fluency(String english_fluency) {
		this.english_fluency = english_fluency;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public int getRadius() {
		return radius;
	}
	public void setRadius(int radius) {
		this.radius = radius;
	}
	public String getProfile_pic_url() {
		return profile_pic_url;
	}
	public void setProfile_pic_url(String profile_pic_url) {
		this.profile_pic_url = profile_pic_url;
	}
	public String getClient_of() {
		return client_of;
	}
	public void setClient_of(String client_of) {
		this.client_of = client_of;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPay_status() {
		return pay_status;
	}
	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}
	public String getActivepaidmember() {
		return activepaidmember;
	}
	public void setActivepaidmember(String activepaidmember) {
		this.activepaidmember = activepaidmember;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCurrent_add() {
		return current_add;
	}
	public void setCurrent_add(String current_add) {
		this.current_add = current_add;
	}
	public String getPermanent_add() {
		return permanent_add;
	}
	public void setPermanent_add(String permanent_add) {
		this.permanent_add = permanent_add;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getRegn_date() {
		return regn_date;
	}
	public void setRegn_date(String regn_date) {
		this.regn_date = regn_date;
	}
	public ArrayList<String> getCourses_preferred() {
		return courses_preferred;
	}
	public void setCourses_preferred(ArrayList<String> courses_preferred) {
		this.courses_preferred = courses_preferred;
	}
	public ArrayList<String> getZones_preffered() {
		return zones_preffered;
	}
	public void setZones_preffered(ArrayList<String> zones_preffered) {
		this.zones_preffered = zones_preffered;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public int getExpected_fees() {
		return expected_fees;
	}
	public void setExpected_fees(int expected_fees) {
		this.expected_fees = expected_fees;
	}
	public String getAlt_contact() {
		return alt_contact;
	}
	public void setAlt_contact(String alt_contact) {
		this.alt_contact = alt_contact;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public ArrayList<String> getExperience_as() {
		return experience_as;
	}
	public void setExperience_as(ArrayList<String> experience_as) {
		this.experience_as = experience_as;
	}
	public SimpleDateFormat getReg_expiry() {
		return reg_expiry;
	}
	public void setReg_expiry(SimpleDateFormat reg_expiry) {
		this.reg_expiry = reg_expiry;
	}
	public String[] getTeaching_mode() {
		return teaching_mode;
	}
	public void setTeaching_mode(String[] teaching_mode) {
		this.teaching_mode = teaching_mode;
	}
	public String getShortpayurl() {
		return shortpayurl;
	}
	public void setShortpayurl(String shortpayurl) {
		this.shortpayurl = shortpayurl;
	}
	public String getLastactivedate() {
		return lastactivedate;
	}
	public void setLastactivedate(String lastactivedate) {
		this.lastactivedate = lastactivedate;
	}
	public long getLastactivetimestamp() {
		return lastactivetimestamp;
	}
	public void setLastactivetimestamp(long lastactivetimestamp) {
		this.lastactivetimestamp = lastactivetimestamp;
	}
	
	
	
	
	public TutorDetail(long tut_id, long contact, String name) {
		super();
		this.tut_id = tut_id;
		this.contact = contact;
		this.name = name;
	}
	public TutorDetail(long tut_id, long contact, Ref<LoginTutor> tutor,
			long timestamp, String name, String english_fluency,
			double longitude, double latitude, int radius,
			String profile_pic_url, String client_of, String area,
			String pay_status, String activepaidmember, String source,
			String about, String gender, String dob, String current_add,
			String permanent_add, String message, String regn_date,
			ArrayList<String> courses_preferred,
			ArrayList<String> zones_preffered, String email, String vehicle,
			int expected_fees, String alt_contact, int experience,
			String qualification, ArrayList<String> experience_as,
			SimpleDateFormat reg_expiry, String[] teaching_mode,
			String shortpayurl, String lastactivedate, long lastactivetimestamp) {
		super();
		this.tut_id = tut_id;
		this.contact = contact;
		this.tutor = tutor;
		this.timestamp = timestamp;
		this.name = name;
		this.english_fluency = english_fluency;
		this.longitude = longitude;
		this.latitude = latitude;
		this.radius = radius;
		this.profile_pic_url = profile_pic_url;
		this.client_of = client_of;
		this.area = area;
		this.pay_status = pay_status;
		this.activepaidmember = activepaidmember;
		this.source = source;
		this.about = about;
		this.gender = gender;
		this.dob = dob;
		this.current_add = current_add;
		this.permanent_add = permanent_add;
		this.message = message;
		this.regn_date = regn_date;
		this.courses_preferred = courses_preferred;
		this.zones_preffered = zones_preffered;
		this.email = email;
		this.vehicle = vehicle;
		this.expected_fees = expected_fees;
		this.alt_contact = alt_contact;
		this.experience = experience;
		this.qualification = qualification;
		this.experience_as = experience_as;
		this.reg_expiry = reg_expiry;
		this.teaching_mode = teaching_mode;
		this.shortpayurl = shortpayurl;
		this.lastactivedate = lastactivedate;
		this.lastactivetimestamp = lastactivetimestamp;
	} 
	
	public TutorDetail()
	{
		
	}
	
	
	
	
	
	
	
	
	
	
}
