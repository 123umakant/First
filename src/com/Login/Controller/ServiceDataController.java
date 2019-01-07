package com.Login.Controller;
import static com.Login.database.OfyService.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Plans;
import com.Login.Entity.ServiceData;
import com.Login.Entity.TutorDetail;
import com.Login.Entity.LoginTutor;
import com.googlecode.objectify.Ref;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

public class ServiceDataController extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		String id=req.getParameter("id");
		String status=req.getParameter("status");
		long id1=Long.parseLong(id);
		
		ServiceData service=ofy().load().type(ServiceData.class).id(id1).now();
		
		if(service!=null){
			service.setStatus(status);
         ofy().save().entity(service).now();
		}
	

	
		
		
		
		
		
		
}
}

	
	
	
	
	
	
	

