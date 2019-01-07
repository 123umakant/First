package com.Login.Controller;

import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Feedbacktest;
public class Feedback extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException,ServletException 
			{
	    PrintWriter out=res.getWriter();
		
		String EmpName = req.getParameter("EmpName");
		String Message = req.getParameter("Message");
		String Benefit=req.getParameter("Benefit");
		String Idea=req.getParameter("Idea");
		long ID =System.currentTimeMillis();
		
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Calendar cal = Calendar.getInstance(); 	 		
		String time=sdf2.format(cal.getTime());
		
		Feedbacktest f= new Feedbacktest( EmpName,Benefit,Idea,time,Message,ID);
		
		ofy().save().entity(f).now();
	    res.sendRedirect("Feedback.jsp");
		
		
		
			}
}
