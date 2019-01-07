package com.Login.Controller;
import javax.servlet.http.*;
import javax.servlet.*;

import com.Login.Entity.Login_Details;

import java.io.*;
import static com.Login.database.OfyService.*;

public class SignUp extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		PrintWriter out = res.getWriter();
		
		String user= req.getParameter("t3");
		String pass1= req.getParameter("t4");
		String pass2= req.getParameter("t5");
		
		if(pass1.equals(pass2))
		{
		Login_Details userdetail=ofy().load().type(Login_Details.class).id(user).now();
		if(userdetail==null)
		{
		Login_Details  ld=new Login_Details(user, pass1);
	ofy().save().entity(ld).now();
	out.println("User Registered");
			
		res.sendRedirect("details.jsp");
			
			}
		}
		else
		{
			out.println("Password Incorrect");
		}
		
		
	}
	}
