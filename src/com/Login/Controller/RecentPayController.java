package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Lead;
import com.Login.Entity.MemberSubjects;
import com.Login.Entity.Plans;
import com.Login.Entity.TutorDetail;
import com.Login.Entity.TutorServices;
import com.googlecode.objectify.Ref;

import static com.Login.database.OfyService.*;

public class RecentPayController extends HttpServlet {
	
public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		
	PrintWriter out = res.getWriter();
	String action = req.getParameter(" ");


	List<Plans> pl = ofy().load().type(Plans.class).filter("contact_views >", 0).list();

	/*.filter("expirytimestamp >",System.currentTimeMillis())*/


	Iterator<Plans> itr = pl.iterator();

	while(itr.hasNext())
	{

	Plans value = itr.next();
	long expirytimestamp = value.getExpirytimestamp();

	if(expirytimestamp > System.currentTimeMillis())
	{

	long id = value.getId();	
	long last_active_timestamp = value.getExpirytimestamp();
	long tutor_contact = value.getTutor().get().getContact();	

	System.out.println(tutor_contact);
	
	RecentPay(id);
	last_active_timestamp(last_active_timestamp);
	last_sms(tutor_contact);
		
	}
		
	}

	}// End of Post 

public void RecentPay(long id)
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
	ofy().save().entity(value1).now();

	}// End of Inner While 

	} // End of Outer While

	rating--;
	to_time = from_time;
	from_time = (from_time) - (18*86400000);
		
		
	}// End of for 
	}// End of function

public void last_active_timestamp(long last_active)
{

long from_time =System.currentTimeMillis();
long to_time = (from_time) - (3*86400000);
float rating = 10; 

for(int i = 1; i<=10; i++)
{
List<Plans> pl = ofy().load().type(Plans.class).filter("expirytimestamp >=",from_time).filter("expirytimestamp <" ,to_time).list();

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
ofy().save().entity(value1).now();	
}// End of Inner While

}// End of Outer While

rating-- ;
to_time = from_time;
from_time = (from_time - (3*86400000));


}// End of For 

}// End of Function

public void last_sms(long tutor_contact)
{
	
TutorServices tut = ofy().load().type(TutorServices.class).id(tutor_contact).now();
LinkedHashSet<Long> list = tut.getClasses_sent();

/*Object object=list.toArray();


 object.getClass();

System.out.println(list[i-1]);
list.get(list.size()-1);*/

Iterator<Long> itr = list.iterator();
Long value1 = null ;

/*Object [] value1 =  list.toArray();
 
long  a=  Long.parseLong(value1.toString());*/

/*System.out.println(a);*/

while(itr.hasNext())
{
	
value1 = itr.next();	

}

/*System.out.println(value1);

int size = list.size();
System.out.println(size);

Long new_size = (long) size;

Long new_size = new Long(size);
list.toArray();

(list.size()-1);
Long[] data = new Long[size];

//System.out.println(data[data.length-1]);

Long[] data = new Long[size];

long value = data[size-1].longValue();
System.out.println(value);*/

Lead ld1 = ofy().load().type(Lead.class).id(value1).now();

long last_enquiry_timestamp = ld1.getTimestamp();

long difference = (System.currentTimeMillis()-last_enquiry_timestamp);

float day =(difference/86400000) ;

MemberSubjects ms = ofy().load().type(MemberSubjects.class).id(last_enquiry_timestamp).now();

if(day<1)
{
ms.setRating(1);
}

else if (day<2)
{
ms.setRating(2);		
}

else if (day<3)
{
ms.setRating(3);	
}

else if (day<4)
{
ms.setRating(4);		
}

else if (day<5)
{
ms.setRating(5);		
}

else if (day<6)
{
ms.setRating(6);			
}

else if (day<7)
{
ms.setRating(7);		
}

else if (day<8)
{
ms.setRating(8);		
}

else if (day<9)
{
ms.setRating(9);			
}

else if (day<10)
{
ms.setRating(10);		
}

ofy().save().entity(ms).now();
}


}// End of class
