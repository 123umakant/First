package com.Login.Controller;

import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.ServiceFeedback;

public class ServiceFeedbackController extends HttpServlet {
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	
	PrintWriter out= res.getWriter();
	String demoClassesGive=req.getParameter("democlassesgiven");
	String classesFixe=req.getParameter("classesfixed");
	String serviceSatisfaction=req.getParameter("servicesatisfaction");
	String feebackType=req.getParameter("feedbacktype");
	String message=req.getParameter("text");
	String tutorContac=req.getParameter("tutorcontact");
	
	long tutorContact=Long.parseLong(tutorContac);
	
	int demoClassesGiven=Integer.parseInt(demoClassesGive);
	int classesFixed=Integer.parseInt(classesFixe);
	
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
	Calendar cal = Calendar.getInstance(); 	 		
	String date=sdf.format(cal.getTime());
   
	ServiceFeedback sf=new ServiceFeedback(date, serviceSatisfaction, demoClassesGiven, classesFixed, tutorContact, message);
	ofy().save().entity(sf).now();
}
}
