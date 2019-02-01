package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedHashSet;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.Login.database.OfyService.*;

import com.Login.Entity.MemberSubjects;
import com.Login.Entity.Plans;
import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;
import com.Login.Entity.TutorDetail;
import com.Login.Entity.TutorServices;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

public class DataController extends HttpServlet {
	
	
public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException	
{

long contact =7836870129l;
TutorDetail tut = ofy().load().type(TutorDetail.class).id(contact).now();
	


	
MemberSubjects ms = new MemberSubjects(Ref.create(tut),"B.Tech","Maths",(double)0.0,"male",(double)0.0,(double)0.0,5,3000,5,5);
	

ofy().save().entity(ms).now();

/*
	public MemberSubjects(Ref<TutorDetail> tutor, String course,
			String subject, double qual_score, String gender, double lat,
			double lng, int radius, int price, int experience, float rating) {	*/
/*String contac = req.getParameter("tutor_contact");
String subject = req.getParameter("subjects");
String gender = req.getParameter("gender");
String latitud = req.getParameter("latitude");
String longitud = req.getParameter("longitude");
String radius = req.getParameter(" ");
String pric = req.getParameter(" ");
String experience = req.getParameter(" ");
String ratin = req.getParameter(" ");

int rating = Integer.parseInt(ratin);
long contact = Long.parseLong("contac");





Subject: <input type ="text" name="subjects"><br><br>
Qualification Score: <input type ="text" name="qualification_score"><br><br>
Gender :<input type ="text" name="gender"><br><br>
Latitude :<input type ="text" name="latitude"><br><br>
Longitude:<input type="text" name="longitude"><br><br>
Radius:<input type="text" name="radius"><br><br>
Price:<input type="text" name="price"><br><br>
Experience:<input type ="text" name="experience"><br><br>
Rating:<input type="text" name="rating"><br><br>













TutorServices tut_services=ofy().load().type(TutorServices.class).id(contact).now();
	
	
	
	
	
	
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
	
	
	*/
	
	
	
	
	
	
/*PrintWriter out = res.getWriter();	

String classes_sen = req.getParameter("classes_sent");

String contac = req.getParameter("tutor_contact");

long classes_sent = Long.parseLong(classes_sen);
long contact = Long.parseLong(contac);

TutorServices tut_services=ofy().load().type(TutorServices.class).id(contact).now();



if(tut_services==null)
{
	TutorServices tuts=new TutorServices(contact);
	ofy().save().entity(tuts).now();
   
}
else
{
	TutorServices tuts=ofy().load().type(TutorServices.class).id(contact).now();
    LinkedHashSet<Long> list=tuts.getClasses_sent();
    list.add(classes_sent);
    tuts.setClasses_sent(list);
	ofy().save().entity(tuts).now();

}
*/



























/*String plan = req.getParameter("tutor_info");
String amoun = req.getParameter("amount");
String perio = req.getParameter("period");
String expiry_dat = req.getParameter("exp_date");
String contact_view = req.getParameter("contact_views");
String contact= req.getParameter("tutor_contact");

int amount = Integer.parseInt(amoun);
int period = Integer.parseInt(perio);
int contact_views = Integer.parseInt(contact_view);
long tut_contact = Long.parseLong(contact);

String expiry_date = expiry_dat+" 00:00:00";
SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkatta"));




java.util.Date date;

try {
	date = sdf.parse(expiry_date);
	long expirytimestamp = date.getTime();
	
	TutorDetail tut = ofy().load().type(TutorDetail.class).id(tut_contact).now();


	Plans pl = new Plans(Ref.create(tut),plan, amount, period, expiry_dat, contact_views, expirytimestamp);
	
	ofy().save().entity(pl).now();
		
    } 
catch (ParseException e) 
{
	// TODO Auto-generated catch block
	e.printStackTrace();
}

*/


	
}

}
