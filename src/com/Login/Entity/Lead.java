package com.Login.Entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;

import com.googlecode.objectify.annotation.*;

@Entity
public class Lead {

	@Id @Index long enq_id;
	@Index String zone;
	@Index String name;
	@Index String date;
	@Index String pincode;
	@Index String email;
	@Index String enq_handled_by;
	@Index String cls;
	@Index String subject;
	@Index String address;
	@Index String sex_pref;
	@Index String contact;
	@Index String alt_contact;
	@Index String fees;
	@Index String demo_dayandtime;
	@Index String demowilltell;
	@Index String leadsource;
	 String parentsrequirements;
	@Index String[] notifytozones;
	@Index String[] mode;
	@Index double longitude;
	@Index double latitude;
	@Index ArrayList<String> requests_from;
	@Index ArrayList<Long> viewed_by;
	@Index ArrayList<Long> interestshown_by;
	@Index long timestamp;
	@Index long msgtopaid;
	@Index long msgtononpaid;
	@Index String start_time;
	@Index String message;   
	@Index String course;  //message by employee who takes enquiry review
    @Index String status;
	
	@Index String area;
	@Index String teaching_mode;
	
    
	public String getzone() {
		return message;
	}

	public void setzone(String zone) {
		this.zone = zone;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public long getMsgtopaid() {
		return msgtopaid;
	}

	public void setMsgtopaid(long msgtopaid) {
		this.msgtopaid = msgtopaid;
	}

	public long getMsgtononpaid() {
		return msgtononpaid;
	}

	public void setMsgtononpaid(long msgtononpaid) {
		this.msgtononpaid = msgtononpaid;
	}

	public String[] getMode() {
		return mode;
	}

	public void setMode(String[] mode) {
		this.mode = mode;
	}

	public ArrayList<Long> getInterestshown_by() {
		return interestshown_by;
	}

	public void setInterestshown_by(ArrayList<Long> interestshown_by) {
		this.interestshown_by = interestshown_by;
	}

	public ArrayList<Long> getViewed_by() {
		return viewed_by;
	}

	public void setViewed_by(ArrayList<Long> viewed_by) {
		this.viewed_by = viewed_by;
	}

	public long getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}

	public String getLeadsource() {
		return leadsource;
	}

	public void setLeadsource(String leadsource) {
		this.leadsource = leadsource;
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

	public ArrayList<String> getRequests_from() {
		return requests_from;
	}

	public void setRequests_from(ArrayList<String> requests_from) {
		this.requests_from = requests_from;
	}

	public String[] getNotifytozones() {
		return notifytozones;
	}

	public void setNotifytozones(String[] notifytozones) {
		this.notifytozones = notifytozones;
	}

	public String getDemowilltell() {
		return demowilltell;
	}

	public void setDemowilltell(String demowilltell) {
		this.demowilltell = demowilltell;
	}

	
	public String getDemo_dayandtime() {
		return demo_dayandtime;
	}

	public void setDemo_dayandtime(String demo_dayandtime) {
		this.demo_dayandtime = demo_dayandtime;
	}

	public String getTeaching_mode() {
		return teaching_mode;
	}

	public void setTeaching_mode(String teaching_mode) {
		this.teaching_mode = teaching_mode;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	
	
	
	public String getParentsrequirements() {
		return parentsrequirements;
	}

	public void setParentsrequirements(String parentsrequirements) {
		this.parentsrequirements = parentsrequirements;
	}

	public long getEnq_id() {
		return enq_id;
	}

	public void setEnq_id(long enq_id) {
		this.enq_id = enq_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEnq_handled_by() {
		return enq_handled_by;
	}

	public void setEnq_handled_by(String enq_handled_by) {
		this.enq_handled_by = enq_handled_by;
	}

	public String getCls() {
		return cls;
	}

	public void setCls(String cls) {
		this.cls = cls;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSex_pref() {
		return sex_pref;
	}

	public void setSex_pref(String sex_pref) {
		this.sex_pref = sex_pref;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAlt_contact() {
		return alt_contact;
	}

	public void setAlt_contact(String alt_contact) {
		this.alt_contact = alt_contact;
	}

	public String getFees() {
		return fees;
	}

	public void setFees(String fees) {
		this.fees = fees;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}


	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public Lead(long enq_id, String name,String date, String email, String cls,
			String subject, String address, String sex_pref, String contact,
			String alt_contact, String fees, String[] mode, double longitude,
			double latitude, String start_time, String message, String area) {
		super();
		this.enq_id = enq_id;
		this.name = name;
		this.date = date;
		this.email = email;
		this.cls = cls;
		this.subject = subject;
		this.address = address;
		this.sex_pref = sex_pref;
		this.contact = contact;
		this.alt_contact = alt_contact;
		this.fees = fees;
		this.mode = mode;
		this.longitude = longitude;
		this.latitude = latitude;
		this.start_time = start_time;
		this.message = message;
		this.area = area;
	}


	public Lead(String zone,long enq_id, String name, String date, String pincode,
			String area,String email, String enq_handled_by, String cls, String subject,
			String address, String sex_pref,String teachingmode, String contact,
			String alt_contact, String fees, String demo_time,String demowilltell, String status,double latitude,double longitude,String leadsource,String requirements,String[] mode,String start_time,long timestamp,String course) {
		super();
		this.zone = zone;
		this.enq_id = enq_id;
		this.name = name;
		this.date = date;
		this.pincode = pincode;
		this.area=area;
		this.email = email;
		this.enq_handled_by = enq_handled_by;
		this.cls = cls;
		this.subject = subject;
		this.address = address;
		this.sex_pref = sex_pref;
		this.contact = contact;
		this.alt_contact = alt_contact;
		this.fees = fees;
		this.demo_dayandtime = demo_time;
		this.demowilltell = demowilltell;
		this.status = status;
		this.teaching_mode=teachingmode;
		this.latitude=latitude;
	    this.longitude=longitude;
	    this.leadsource=leadsource;
	    this.parentsrequirements=requirements;
		this.mode=mode;
	    this.start_time=start_time;
	    this.timestamp=timestamp;
	    this.course = course;
	}

	public Lead()
	{
		
	}
	
	
	
}
