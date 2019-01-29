package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.MemberSubjects;
import com.Login.Entity.Plans;
import com.Login.Entity.TutorDetail;
import com.googlecode.objectify.Ref;

import static com.Login.database.OfyService.*;

public class StatusUpdateController extends HttpServlet {

	
public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
{

PrintWriter out = res.getWriter();

List <Plans> pl = ofy().load().type(Plans.class).filter("contact_views",0).list();

Iterator <Plans> itr = pl.iterator();

while (itr.hasNext())
{
	
Plans value = itr.next();

TutorDetail tutor = value.getTutor().get();

List <MemberSubjects> ms =  ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(tutor)).list();

Iterator <MemberSubjects> itr1 = ms.iterator();

while (itr1.hasNext())
{

MemberSubjects value1 = itr1.next();
/*ms.remove(value1);*/

ofy().delete().entity(value1).now();
		
}// End of Inner While
	
	
}//End of Outer While

long to_time = System.currentTimeMillis();
long from_time = (to_time) - (86400000);

List <Plans> plans = ofy().load().type(Plans.class).filter("id >=", from_time).filter("id <", to_time).list();

Iterator <Plans> itr2 =plans.iterator();

while (itr2.hasNext())
{

Plans value2 = itr2.next();

TutorDetail tutor = value2.getTutor().get();

List <MemberSubjects> ms1 = ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(tutor)).list();

Iterator<MemberSubjects> itr3= ms1.iterator();

while (itr3.hasNext())
{
MemberSubjects value3 = itr3.next();

ofy().delete().entity(value3).now();
	
}//End of Inner While
	
}//End of Outer While
	
	
	
		
}//End of Post
}//End of Class
