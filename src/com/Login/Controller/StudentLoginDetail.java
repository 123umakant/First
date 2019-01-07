package com.Login.Controller;
import static com.Login.database.OfyService.*;

import java.io.*;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;


public class StudentLoginDetail extends HttpServlet {

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	PrintWriter out = res.getWriter();
	String phone=req.getParameter("contact");
	Long contact=Long.parseLong(phone);
	String enqui=req.getParameter("enquiry");
	long enquiry=Long.parseLong(enqui);
	String password="abc";
	String email="abc@gmail.com";
	
	StudentLoginDetails student=ofy().load().type(StudentLoginDetails.class).id(contact).now();
	
	if(student==null)
	{
		//StudentLoginDetails sld=new StudentLoginDetails(contact,password,email);
		//ofy().save().entity(sld).now();
	    //StudentDetail sd = new StudentDetail(contact);
	  //  ofy().save().entity(sd).now();
	}
	else
	{
	    StudentDetail student1=ofy().load().type(StudentDetail.class).id(contact).now();
	    LinkedHashSet<Long> list=student1.getEnq_list();
	    list.add(enquiry);
	    student1.setEnq_list(list);
		ofy().save().entity(student1).now();
	   
}
}
}
