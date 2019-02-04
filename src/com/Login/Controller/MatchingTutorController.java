package com.Login.Controller;

import static com.Login.database.OfyService.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Formula.Distance;

import com.Login.Entity.Lead;
import com.Login.Entity.LoginTutor;
import com.Login.Entity.TutorDetail;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

public class MatchingTutorController extends HttpServlet {

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*HttpSession session=req.getSession();

String tut_i=req.getParameter("tutorid");
String contac=req.getParameter("tutor_contact");
String tutor_name=req.getParameter("tutor_name");
String latitud=req.getParameter("tutor_latitude");
String longitud=req.getParameter("tutor_longitude");
String radiu=req.getParameter("tutor_radius");
String area=req.getParameter("tutor_area");
String active_paid_member=req.getParameter("paid_member");
String gender=req.getParameter("tutor_gender");
String last_logi=req.getParameter("tutor_last_login");

long tut_id=Long.parseLong(tut_i);
long contact=Long.parseLong(contac);
double latitude=Double.parseDouble(latitud);
double longitude=Double.parseDouble(longitud);
System.out.println(latitude);
System.out.println(longitude);
int radius=Integer.parseInt(radiu);
long last_login=Long.parseLong(last_logi);
TutorDetail tut=new TutorDetail(tut_id, contact, tutor_name, latitude,longitude,radius, area, active_paid_member, gender, last_login);
	
ofy().save().entity(tut).now();

long enquiry_id=1;

Lead ld=ofy().load().type(Lead.class).id(enquiry_id).now();

double latitude1=ld.getLatitude();
double longitude1=ld.getLongitude();


System.out.println(latitude1);
System.out.println(longitude1);
double d=Distance.distance(latitude,longitude,latitude1,longitude1);

double distance =(d/1000);
System.out.println(distance);
System.out.println(tut.getRadius());


if(distance<tut.getRadius())
{  
System.out.println(tut.getName());
}
*/




}
}
	
	
	
	
	

