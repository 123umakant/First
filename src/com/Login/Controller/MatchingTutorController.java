package com.Login.Controller;

import static com.Login.database.OfyService.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Formula.Distance;

import com.Login.Entity.Lead;
import com.Login.Entity.LoginTutor;
import com.Login.Entity.MemberSubjects;
import com.Login.Entity.TutorDetail;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

public class MatchingTutorController extends HttpServlet {

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{

String latitud = req.getParameter("latitude");
String longitud = req.getParameter("longitude");
String course = req.getParameter("course");
String subject = req.getParameter("subject");
String sex_pref = req.getParameter("sex_pref");

double latitude = Double.parseDouble(latitud);
double longitude = Double.parseDouble(longitud);

int km =2;

double to_latitude = latitude+km*0.008993182000001099 ;
double to_longitude = longitude+km*0.010258364990164637 ;

double from_latitude = latitude-km*0.008993182000001099 ;
double from_longitude = longitude-km*0.010258364990164637 ;

System.out.println(course);
System.out.println(subject);
System.out.println(from_latitude);
System.out.println(to_latitude);

System.out.println(from_longitude);
System.out.println(from_longitude);

HashMap<Long,Float> hmap = new HashMap<Long,Float>();

List<MemberSubjects> ms=null;
if(!sex_pref.equals("any"))
{
	ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).filter("sex_pref",sex_pref).list();
}else
	 ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).filter("sex_pref",sex_pref).list();
	
System.out.println("hello");

Iterator<MemberSubjects> itr = ms.iterator();

while (itr.hasNext())
{
System.out.println("hello again");
MemberSubjects value = itr.next();

float Recent_Pay_Rating = value.getRecentPay_rating();
float Last_Active_Rating = value.getLast_active_rating();
float Last_Sms_Rating = value.getLast_sms_rating();


float total_Rating = Recent_Pay_Rating+Last_Active_Rating+Last_Sms_Rating ;
long tutor_contact = value.getTutor().get().getContact();

System.out.println(total_Rating);
System.out.println(tutor_contact);

hmap.put(tutor_contact,total_Rating);

System.out.println(hmap);

}// End of While 







}





}








/*String to_latitude = latitude+2*

String 
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*
else 
{
	
List<MemberSubjects> ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).list();	
	
Iterator<MemberSubjects> itr = ms.iterator();

while (itr.hasNext())
{
System.out.println("hello again");
MemberSubjects value = itr.next();

float Recent_Pay_Rating = value.getRecentPay_rating();
float Last_Active_Rating = value.getLast_active_rating();
float Last_Sms_Rating = value.getLast_sms_rating();


float total_Rating = Recent_Pay_Rating+Last_Active_Rating+Last_Sms_Rating ;
long tutor_contact = value.getTutor().get().getContact();

System.out.println(total_Rating);
System.out.println(tutor_contact);

hmap.put(tutor_contact,total_Rating);

System.out.println(hmap);

}// End of While 

}// End of Else
*/



/*else if(sex_pref.equals("Female"))
{
	
List<MemberSubjects> ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).filter("sex_pref",sex_pref).list();	
	
}*/
/*System.out.println(sex_pref);
*/
/*}*/
/*}*/

/*Lead ld = ofy().load().type(Lead.class).id(1l).now();

double latitude = ld.getLatitude();
double longitude = ld.getLongitude();
String course = ld.getCourse();
String subject = ld.getSubject();
String sex_pref = ld.getSex_pref();*/
	
	
















	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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





	
	
	
	
	

