package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.EmployeeAbsentRecord;
import com.Login.Entity.EmployeeAccount;
import com.googlecode.objectify.Ref;

import static com.Login.database.OfyService.*;

public class EmployeeAbsentController extends HttpServlet {

	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
String emp_name=req.getParameter("emp_name");
String date=req.getParameter("emp_absent_date");
String leave_type=req.getParameter("leavetype");
	

PrintWriter out = res.getWriter();
if(leave_type.equals("Casual Leave"))
{
	EmployeeAccount emp= ofy().load().type(EmployeeAccount.class).filter("name", emp_name).first().now();
	int casual_leave_count=emp.getcasual_leaves();
	
	
	String month_start=date.substring(0,8);

	String month_start_date=month_start+"01";
	System.out.println(month_start_date);
	
	String current_date=date+" "+"00:00:00"; 
			
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
	String s =month_start_date+" "+"00:00:00";
	java.util.Date date1;
	java.util.Date date2;
	try {
		date1 = sdf.parse(s);
		long month_start_timestamp = date1.getTime();
	    System.out.println(month_start_timestamp);
		
	    date2=sdf.parse(current_date);
	    long absent_day_timestamp=date2.getTime();
	    
	    long current_day_timestamp=System.currentTimeMillis();
	    System.out.println(current_day_timestamp);
	    
	    
	    
	
	    EmployeeAbsentRecord ea=ofy().load().type(EmployeeAbsentRecord.class).filter("datetimestamp >=",month_start_timestamp).filter("datetimestamp <", current_day_timestamp).filter("employee",Ref.create(emp)).filter("leavetype", leave_type).first().now();
	    
	    
	    if(ea==null)
	    {
	    EmployeeAbsentRecord emp_absent=new EmployeeAbsentRecord(Ref.create(emp), absent_day_timestamp, leave_type);
	  	    
	  	 ofy().save().entity(emp_absent).now();
	  	    
//	    ea.setDatetimestamp(absent_day_timestamp);
//	    ofy().save().entity(ea).now();
//	    
	    casual_leave_count=casual_leave_count-1;
	    emp.setcasual_leaves(casual_leave_count);
	    
	    ofy().save().entity(emp).now();
	    
	    out.print("You have been granted casual Leave for this Month");
	      
	    }
	    
	    else
	    {
	    	
	    out.print("No casual leave available"); 	
	    	
	    }
	}
	    
	
	catch (ParseException e) 
	{
	
		e.printStackTrace();
	}
	

	
}	
}
}
