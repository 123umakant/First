package com.Login.Controller;
import static com.Login.database.OfyService.ofy;
import java.io.IOException;
import java.security.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Phone;

import java.text.ParseException;
import java.util.List;
public class Scheduler extends HttpServlet 
{
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
String date1=req.getParameter("datefrom");
String date2=req.getParameter("todate");
String medium=req.getParameter("pe");
String source=req.getParameter("Source");
String message=req.getParameter("text");
String timefrom=req.getParameter("Schedulerfrom");
String timeto=req.getParameter("Schedulerto");
String interval=req.getParameter("Interval");


try {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
	java.util.Date newdate;
	newdate = sdf.parse(timefrom);
	long schedulertimefrom=newdate.getTime();

    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
    java.util.Date newdate1;
	newdate1 = sdf1.parse(timeto);
	long schedulertimeto=newdate1.getTime();
	System.out.println(schedulertimeto);
	
	
	long difference = ((schedulertimeto - schedulertimefrom)/1000);
	long differenceminutes=difference/60;
	System.out.println(difference);
	System.out.println(differenceminutes);
	
	Long interval1=Long.parseLong(interval);
	
	long NoofSlots=(differenceminutes)/(interval1);
	System.out.println(NoofSlots);
	
	
	SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String s =date1+" "+"00:00:00";
    java.util.Date date;
	date = sdf3.parse(s);
	long fromtimestamp = date.getTime();

    SimpleDateFormat sdf4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String s2=date2+" "+"23:59:59";
    java.util.Date date3;
    date3 = sdf4.parse(s2);
	long totimestamp = date3.getTime();
	List<Phone> list=null;
	if(source.equals("Source1")||source.equals("Source2")||source.equals("Source3"))
	{
	int count=ofy().load().type(Phone.class).filter("id >=",fromtimestamp).filter("id <",totimestamp).filter("select",source).count();
	
	long noofentries=count/NoofSlots;
	long[] arr={};
	
	for(int i=0;i<count;i++)
	{
			arr[i]=noofentries;
			System.out.println(arr[i]);
		}
		
	}
	else
	{
	int count1=ofy().load().type(Phone.class).filter("id >=",fromtimestamp).filter("id <",totimestamp).count();
	long noofentries=count1/NoofSlots;
	long[] arr1={};

	for(int i=0;i<count1;i++)
	{
		arr1[i]=noofentries;
		System.out.println(arr1[i]);
		}
		
	}
	
	}	
catch (ParseException e) 
{
	
	e.printStackTrace();
}



}
}