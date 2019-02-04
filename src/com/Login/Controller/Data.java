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
  
Lead ld = new Lead("North",1,"Neerav","04/02/2019","122001 ","West Patel Nagar","tripathi.neerav@gmail.com ","Ram ","X ","Maths", "West Patel Nagar ","Male ", "Home ","7836870129 ","1234567890","6000 "," "," "," ",28.649200,77.162849," "," ",arr," ",1548979200000l);
		
ofy().save().entity(ld).now();
	
		

		
}

}