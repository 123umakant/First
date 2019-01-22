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

   String from_date=req.getParameter("from_date");
   String to_date=req.getParameter("to_date");
   
   
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
   
   try {
	java.util.Date From_date;
	 From_date=sdf.parse(from_date);
	 long from_date_timestamp=From_date.getTime();
	 java.util.Date To_date;
	 To_date=sdf.parse(to_date);
	 long to_date_timestamp=To_date.getTime();
	
	 EmployeeAccount emp = ofy().load().type(EmployeeAccount.class).id().filter("id>=",from_date_timestamp).filter("id<",to_date_timestamp).first().now();
	 
	 
	 
	 
	 
   } 
   catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
   
	
   String emp_ext=req.getParameter("emp_ext");
   String calldate=req.getParameter("calldate");
   String src=req.getParameter("src");
   String dst=req.getParameter("destination");
   String durati=req.getParameter("duration");
   String disposition=req.getParameter("disposition");
	
   float duration = Float.parseFloat(durati);
   EmployeeAccount emp = ofy().load().type(EmployeeAccount.class).filter("calling_extension", emp_ext).first().now();
   CallLog cl = new CallLog(calldate, src, dst, duration, disposition,Ref.create(emp));
	
   ofy().save().entity(cl).now();
	
   if(disposition.equals("Answered"))
   {
   if(src.equals(emp_ext))
   {
	JSONObject js = new JSONObject();   
	js.put("duration",cl.getDuration());
	
   }
   
   if(dst.equals(emp_ext))
   {
	   
	   
	   
	   
	   
   }
	   
	   
   }
	
	
}

}
