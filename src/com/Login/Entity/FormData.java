package com.Login.Entity;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class FormData {
@Id long timestamp;
@Index String date;
@Index String name;
@Index String email;
@Index long contact;
@Index String gender;
String permanent_address;
String current_address;
@Index String qualification;
@Index int experience;
@Index String computer_skills;
@Index int english_rating;
@Index boolean can_work_in_delhi;
@Index int current_salary;
@Index String profile;








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








public String getName() {
	return name;
}








public void setName(String name) {
	this.name = name;
}








public String getEmail() {
	return email;
}








public void setEmail(String email) {
	this.email = email;
}








public long getContact() {
	return contact;
}








public void setContact(long contact) {
	this.contact = contact;
}








public String getGender() {
	return gender;
}








public void setGender(String gender) {
	this.gender = gender;
}








public String getPermanent_address() {
	return permanent_address;
}








public void setPermanent_address(String permanent_address) {
	this.permanent_address = permanent_address;
}








public String getCurrent_address() {
	return current_address;
}








public void setCurrent_address(String current_address) {
	this.current_address = current_address;
}








public String getQualification() {
	return qualification;
}








public void setQualification(String qualification) {
	this.qualification = qualification;
}








public int getExperience() {
	return experience;
}








public void setExperience(int experience) {
	this.experience = experience;
}








public String getComputer_skills() {
	return computer_skills;
}








public void setComputer_skills(String computer_skills) {
	this.computer_skills = computer_skills;
}








public int getEnglish_rating() {
	return english_rating;
}








public void setEnglish_rating(int english_rating) {
	this.english_rating = english_rating;
}








public boolean isCan_work_in_delhi() {
	return can_work_in_delhi;
}








public void setCan_work_in_delhi(boolean can_work_in_delhi) {
	this.can_work_in_delhi = can_work_in_delhi;
}








public int getCurrent_salary() {
	return current_salary;
}








public void setCurrent_salary(int current_salary) {
	this.current_salary = current_salary;
}








public String getProfile() {
	return profile;
}








public void setProfile(String profile) {
	this.profile = profile;
}








public FormData(String date, String name, String email, long contact,
		String gender, String permanent_address, String current_address,
		String qualification, int experience, String computer_skills,
		int english_rating, boolean can_work_in_delhi, int current_salary,
		String profile) {
	super();
	this.timestamp =System.currentTimeMillis();
	this.date = date;
	this.name = name;
	this.email = email;
	this.contact = contact;
	this.gender = gender;
	this.permanent_address = permanent_address;
	this.current_address = current_address;
	this.qualification = qualification;
	this.experience = experience;
	this.computer_skills = computer_skills;
	this.english_rating = english_rating;
	this.can_work_in_delhi = can_work_in_delhi;
	this.current_salary = current_salary;
	this.profile = profile;
}








public FormData()
{
	
}
}
	
	
	
	
	
	
	
	
	
	/*Name "name"
	Email"email"
	Contact Number "contact_number"
	Gender  "gender"
	Permanent Address name="permanent_housenum" name="permanent_landmark" name="permanent_area" name="permanent_pincode"
	Current Address  name="current_housenum" name="current_landmark" name="current_area" name="current_pincode"
	Additional Information 
	Qualification name="qualification"
	Work Experience (in yrs) name="experience"
	Computer Skills name="computer_skills"
	English Comm. Rating name="english_rating"
	Will you relocate to delhi? name="location"
	Current Salary name="current_salary"
	Attach Resume
	*/
	
	
	
	
	
	
	
	
