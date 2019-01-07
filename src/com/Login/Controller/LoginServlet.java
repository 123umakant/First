package com.Login.Controller;
import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;
public class LoginServlet extends HttpServlet 
{
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException,ServletException 
			{
		PrintWriter out=res.getWriter();
		String user = req.getParameter("t1");
		String pass = req.getParameter("t2");
		if (user.equals("Neerav")&& pass.equals("delhi"))
		{
			HttpSession session = req.getSession();
			session.setAttribute("Username","Neerav");
			
			out.println("login successfull");
			res.sendRedirect("new.jsp");
		}
		else
		{
			out.println("login unsuccessfull");
		}
		
		}
	    }
