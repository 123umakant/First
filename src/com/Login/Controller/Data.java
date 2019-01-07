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
        Lead ld = new Lead(2,"Pravin","01/01/2019","tripathi.neerav@gmail.com","X","Physics","Shadipur Delhi","7836870129");
		ofy().save().entity(ld).now();
	
		

		
	}

}