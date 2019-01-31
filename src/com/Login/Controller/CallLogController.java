package com.Login.Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import static com.Login.database.OfyService.*;

import com.Login.Entity.CallLog;
import com.Login.Entity.EmployeeAccount;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

public class CallLogController extends HttpServlet {
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{

   String emp_ext=req.getParameter("emp_ext");
   String date=req.getParameter("calldate");
   String src=req.getParameter("src");
   String dst=req.getParameter("destination");
   String durati=req.getParameter("duration");
   String disposition=req.getParameter("disposition");
	
   System.out.println(date);
   
   String call_date_time=date;
   String year = call_date_time.substring(0,4);
   System.out.println(year);
   String month= call_date_time.substring(5,8);
   System.out.println(month);
   String day = call_date_time.substring(9,10);
   System.out.println(day);
   
   System.out.println(System.currentTimeMillis());
   String call_date=day+"-"+month+year;
   System.out.println(call_date);
   /*String month= call_date_time.substring(5,7);
   String date= call_date_time.substring(8,10);*/
   call_date_time= call_date_time+" "+"00:00:00"; 
   java.util.Date call_date_1;
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
   try 
   {
   call_date_1=sdf.parse(call_date_time);
   long call_date_timestamp = call_date_1.getTime();
   float duration = Float.parseFloat(durati);
//   EmployeeAccount emp = ofy().load().type(EmployeeAccount.class).filter("calling_extension", emp_ext).first().now();
   CallLog cl = new CallLog(call_date_timestamp,call_date, src, dst, duration, disposition);
		
   ofy().save().entity(cl).now();
	
    } 
   catch (ParseException e) 
   {
	// TODO Auto-generated catch block
	e.printStackTrace();
   }

	
	
}

}
