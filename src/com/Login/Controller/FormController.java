package com.Login.Controller;

import static com.Login.database.OfyService.ofy;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.FormData;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

public class FormController extends HttpServlet {
	
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	String contac=req.getParameter("contact_number");
	String gender=req.getParameter("gender");
	String permanentHouseNum=req.getParameter("permanent_housenum");
	String permanentLandmark=req.getParameter("permanent_landmark");
	String permanentArea=req.getParameter("permanent_area");
	String permanentPincode=req.getParameter("permanent_pincode");
	String currentHousenum=req.getParameter("current_housenum");
	String currentLandmark=req.getParameter("current_landmark");
	String currentArea=req.getParameter("current_area");
	String currentPincode=req.getParameter("current_pincode");
	String qualification=req.getParameter("qualification");
	String experienc=req.getParameter("experience");//int
	String computerSkills=req.getParameter("computer_skills");
	String englishRatin=req.getParameter("english_rating");//int
	String can_work_in_delh=req.getParameter("location");
	String currentSalar=req.getParameter("current_salary");//int
	String profile=req.getParameter("profile");
	              
	
	String permanentAddress=permanentHouseNum+" "+permanentLandmark+" "+permanentArea+" "+permanentPincode;
	String currentAddress=currentHousenum+" "+currentLandmark+" "+currentArea+" "+currentPincode;
	int experience=Integer.parseInt(experienc);
	int currentSalary=Integer.parseInt(currentSalar);
	int englishRating=Integer.parseInt(englishRatin);
	boolean can_work_in_delhi=Boolean.parseBoolean(can_work_in_delh);
	
	
	
	
    long contact=Long.parseLong(contac);
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
	Calendar cal = Calendar.getInstance(); 	 		
	String date=sdf.format(cal.getTime());
	
	FormData fd=new FormData(date, name, email, contact, gender, permanentAddress, currentAddress, qualification, experience, computerSkills, englishRating, can_work_in_delhi, currentSalary, profile);
	
	ofy().save().entity(fd).now();
	
		
}

}
