package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.MemberSubjects;
import com.Login.Entity.Plans;
import com.Login.Entity.TutorDetail;
import com.googlecode.objectify.Ref;

import static com.Login.database.OfyService.*;

public class RecentPayController extends HttpServlet {
	
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	
PrintWriter out = res.getWriter();
String action = req.getParameter(" ");

if (action.equals("Recent_Pay"))
{
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkatta"));

long to_time = System.currentTimeMillis();
long from_time=(to_time)-(18*86400000);
float rating = 10 ;
for (int i=1 ; i<=10; i++)
{

List<Plans> pl = ofy().load().type(Plans.class).filter("id >=", from_time).filter("id <", to_time).list();

Iterator<Plans> itr = pl.iterator();

while (itr.hasNext())
{
Plans value = itr.next();

TutorDetail tutor = value.getTutor().get();

List<MemberSubjects> ms = ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(tutor)).list();

Iterator <MemberSubjects> itr1 = ms.iterator();

while(itr1.hasNext())
{
	
MemberSubjects value1 =itr1.next();
value1.setRating(rating);

}// End of Inner While 

} // End of Outer While

rating--;
to_time = from_time;
from_time = (from_time) - (18*86400000);
	
	
}// End of for 
}// End of If 


if(action.equals("last_active_timestamp"))
{

long from_time =System.currentTimeMillis();
long to_time = (from_time) - (3*86400000);
float rating = 10; 

for(int i = 1; i<=10; i++)
{
List<Plans> pl = ofy().load().type(Plans.class).filter("id >=",from_time).filter("id <" ,to_time).list();

Iterator<Plans> itr = pl.iterator();

while(itr.hasNext())
{
Plans value = itr.next();

TutorDetail tutor = value.getTutor().get();

List<MemberSubjects> ms = ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(tutor)).list();
Iterator<MemberSubjects> itr1 = ms.iterator();

while(itr1.hasNext())
{
MemberSubjects value1 = itr1.next();
value1.setRating(rating);
	
}// End of Inner While

}// End of Outer While

rating-- ;
to_time = from_time;
from_time = (from_time - (3*86400000 ));


}// End of For 

}// End of If









}// End of Post 
}// End of class
