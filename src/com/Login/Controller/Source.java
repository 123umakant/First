package com.Login.Controller;

import static com.Login.database.OfyService.*;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Phone;
import com.Login.Entity.Email;

public class Source extends HttpServlet {
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		PrintWriter out=res.getWriter();
		String text=req.getParameter("text");
		String pe=req.getParameter("Phone");
		String select=req.getParameter("Source");
		if(pe.equals("Phone"))
		{
			
			SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Calendar cal = Calendar.getInstance(); 	 		
			String time=sdf2.format(cal.getTime());
			String [] list1 =text.split("\\r?\\n");
			if (list1!=null)
			{
			for (String s:list1)
			{  
				Phone phnentry=ofy().load().type(Phone.class).filter("Phone", s).first().now();
				if(phnentry!=null)
				{
				phnentry.setTime(time);
				ofy().save().entity(phnentry).now();
				res.sendRedirect("Source.jsp");
				}
				else
				{
					long ID =System.currentTimeMillis();
					Phone p = new Phone(ID,time,pe,select,s);
					
					ofy().save().entity(p).now();
					res.sendRedirect("Source.jsp");
							
				}//end of else
			}//end of for
			}//end of if
		}//end of if
	    else
		{
		    SimpleDateFormat sdf3 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		    Calendar cal1 = Calendar.getInstance(); 	 		
		    String time1=sdf3.format(cal1.getTime());
		    String [] list2 =text.split("\\r?\\n");
		    if (list2!=null)
			{
		    for (String s:list2)
			{
		    Email emaentry=ofy().load().type(Email.class).filter("Email", s).first().now();
		    if (emaentry!=null)
		    {
		    	emaentry.setTime(time1);
				ofy().save().entity(emaentry).now();
				res.sendRedirect("Source.jsp");
			}		
		    else
		    {
		    	long ID =System.currentTimeMillis();	
				Email e = new Email(ID,time1,pe,select,s);
				ofy().save().entity(e).now();		
		    		res.sendRedirect("Source.jsp");
		    }//end of else
			}//end of for
			}//end of if 
		}//end of else
		}//end of method
	}//end of class
		 
			
		
		
	

