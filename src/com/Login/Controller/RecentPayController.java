package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.stream.Stream;

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
		
	List<Plans> pl = ofy().load().type(Plans.class).filter("contact_views >", 0).list();

	Iterator<Plans> itr = pl.iterator();

	while(itr.hasNext())
	{

	Plans value = itr.next();
	long expirytimestamp = value.getExpirytimestamp();

	if(expirytimestamp > System.currentTimeMillis())
	{

	long id = value.getId();	
	
	long tutor_contact = value.getTutor().get().getContact();	

	long last_active_timestamp = value.getTutor().get().getLastactivetimestamp();
	
	System.out.println(tutor_contact);
	
	RecentPay(id);//calling recent pay
	
	last_active(last_active_timestamp);//calling last active
	
	last_sms(tutor_contact);//calling last sms
		
	}//End of if 
		
	}//End of while

	}//End of Post 

public void RecentPay(long id)
	{
	
	Plans pl = ofy().load().type(Plans.class).id(id).now();
	
	TutorDetail tut = pl.getTutor().get();
	
	MemberSubjects ms = ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(tut)).first().now();
	
    long current_time = System.currentTimeMillis();
    
    long difference = (current_time - id) ;

    float day =(difference / 86400000);
    
    if (day <= 18)
    {
    	ms.setRecentPay_rating(10);	
    }
    
    else if (day <= 36)
    {
    	ms.setRecentPay_rating(9);
    	
    }
    
    else if (day <= 54)
    {
    	ms.setRecentPay_rating(8);
    	
    }
    
    else if (day <= 72)
    {
    	ms.setRecentPay_rating(7);
    	
    }
    
    else if (day <= 90)
    {
    	ms.setRecentPay_rating(6);
    	
    }
    
    else if (day <= 108)
    {
    	ms.setRecentPay_rating(5);
    }

    else if (day <= 126)
    {
    	
    	ms.setRecentPay_rating(4);
    }

    else if (day <= 144)
    {
    	ms.setRecentPay_rating(3);
    	
    }
    
    else if (day <= 162)
    {
    	
    	ms.setRecentPay_rating(2);	
    }
    
    else if (day > 162)
    {
    	
    	ms.setRecentPay_rating(1);	
    }
    	
    	
  ofy().save().entity(ms).now();  	
    	
	}// End of for   

public void last_active(long last_active_timestamp)
{
	
TutorDetail td = ofy().load().type(TutorDetail.class).filter("lastactivetimestamp",last_active_timestamp).first().now();

MemberSubjects ms = ofy().load().type(MemberSubjects.class).filter("tutor",Ref.create(td)).first().now();

long current_time = System.currentTimeMillis();

long difference =(current_time - last_active_timestamp);

float day =(difference / 86400000) ;


if (day <= 3)
{
ms.setLast_active_rating(10);
}

else if(day <= 6)
{
ms.setLast_active_rating(9);	
}

else if(day <= 9)
{

ms.setLast_active_rating(8);	
	
}

else if(day <= 12)
{
	
ms.setLast_active_rating(7);	
}

else if(day <= 15)
{
	
ms.setLast_active_rating(6);	
	
}

else if (day <= 18)
{
	
ms.setLast_active_rating(5);

}

else if (day <= 21)
{
ms.setLast_active_rating(4);
	
}

else if (day <= 24)
{
ms.setLast_active_rating(3);
	
}

else if (day <= 27)
{
ms.setLast_active_rating(2);
}

else if (day > 27)
{
	
ms.setLast_active_rating(1);	
	
}
	
ofy().save().entity(ms).now();	

}// End of Function
	

public void last_sms(long tutor_contact)
{
	
TutorServices tut = ofy().load().type(TutorServices.class).id(tutor_contact).now();
LinkedHashSet<Long> list = tut.getClasses_sent();

Object [] arr = list.toArray();

Object value = (arr[arr.length-1]);

long value1 = (long)value;

/*System.out.println(value1);*/

Lead ld1 = ofy().load().type(Lead.class).id(value1).now();

long last_enquiry_timestamp = ld1.getTimestamp();

long difference = (System.currentTimeMillis()-last_enquiry_timestamp);

float day =(difference/86400000);

MemberSubjects ms = ofy().load().type(MemberSubjects.class).id(last_enquiry_timestamp).now();

if(day<=1)
{
ms.setLast_sms_rating(1);
}

else if (day<=2)
{
ms.setLast_sms_rating(2);		
}

else if (day<=3)
{
ms.setLast_sms_rating(3);	
}

else if (day<=4)
{
ms.setLast_sms_rating(4);		
}

else if (day<=5)
{
ms.setLast_sms_rating(5);		
}

else if (day<=6)
{
ms.setLast_sms_rating(6);			
}

else if (day<=7)
{
ms.setLast_sms_rating(7);		
}

else if (day<=8)
{
ms.setLast_sms_rating(8);		
}

else if (day<=9)
{
ms.setLast_sms_rating(9);			
}

else if (day>=10)
{
ms.setLast_sms_rating(10);		
}

ofy().save().entity(ms).now();
}

}// End of class


