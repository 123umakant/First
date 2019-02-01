package com.Login.Controller;
import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Lead;

public class Data extends HttpServlet {
	
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		PrintWriter out = res.getWriter();
		String[] arr={};
  
Lead ld = new Lead("nn",11,"new",""," "," "," "," "," "," ", " ", " ", " ", " "," "," "," "," "," ",0.0,0.0," "," ",arr," ",1548979200000l);
		


ofy().save().entity(ld).now();
	
		

		
	}

}