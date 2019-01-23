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
   String call_date=req.getParameter("calldate");
   String src=req.getParameter("src");
   String dst=req.getParameter("destination");
   String durati=req.getParameter("duration");
   String disposition=req.getParameter("disposition");
	
   System.out.println(call_date);
   
   String call_date_time=call_date;
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
//	 long to_date_timestamp=To_date.getTime();
   
//
// 
//   String from_date=req.getParameter("from_date");
//   String to_date=req.getParameter("to_date");
//   String emp_ext=req.getParameter("emp_ext");
//   
//   from_date= from_date+" "+"00:00:00"; 
//   to_date= to_date+" "+"00:00:00"; 
//   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//   sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
//   
//   EmployeeAccount emp=ofy().load().type(EmployeeAccount.class).filter("calling_extension",emp_ext).first().now();
//   
//   try {
//	 java.util.Date From_date;
//	 From_date=sdf.parse(from_date);
//	 long from_date_timestamp=From_date.getTime();
//	 System.out.println(from_date_timestamp);
//	 java.util.Date To_date;
//	 To_date=sdf.parse(to_date);
//	 long to_date_timestamp=To_date.getTime();
//	 System.out.println(to_date_timestamp);
//	 CallLog cl = ofy().load().type(CallLog.class).filter("id >=",from_date_timestamp).filter("id <",to_date_timestamp).filter("employee",emp).first().now();
//	 
//	 System.out.println(cl);
//	 if(cl!=null)
//	 {
//	 String disposition =cl.getDisposition();
//	 String src=cl.getSrc();
//	 String dst=cl.getDst();
//	 
//	 System.out.println(disposition);
//	 System.out.println(src);
//	 System.out.println(dst);
//	 if(disposition.equals("Answered"))
//	   {
//	   if(src.equals(emp_ext))
//	   {
//		JSONObject js = new JSONObject();   
//		js.put("no_of_incoming",cl.getSrc());
//		js.put("no_of_outgoing",cl.getDst());
//		js.put("duration",cl.getDuration());
//		
//		
//	   }
//	   
//	   if(dst.equals(emp_ext))
//	   {
//		   
//		   
//	   }
//		   
//	   }
//	 }
//	 } 
//   catch (ParseException e) 
//   {
//	// TODO Auto-generated catch block
//	e.printStackTrace();
//   }
   
	
	
}

}
