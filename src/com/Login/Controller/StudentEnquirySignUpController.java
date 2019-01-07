package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashSet;
import java.util.List;

import static com.Login.database.OfyService.ofy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.Entity.Lead;
import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;

public class StudentEnquirySignUpController extends HttpServlet {

	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	PrintWriter out = res.getWriter();
	String name=req.getParameter("name");
	String enq_i=req.getParameter("enquiry id");
	String cls=req.getParameter("class");
	String subject=req.getParameter("subject");
	String address=req.getParameter("address");
	String contact=req.getParameter("contact");
	String email=req.getParameter("email");
	String date=req.getParameter("date");
	long enq_id=Long.parseLong(enq_i);
	String    
	Lead ld=new Lead(enq_id, name, date, email, cls, subject, address, contact);
	ofy().save().entity(ld).now();	
	
	StudentLoginDetails login=ofy().load().type(StudentLoginDetails.class).id(contact).now();
	if(login==null)
	{
	 StudentDetail sd = new StudentDetail(contact, email, name, address);
	 ofy().save().entity(sd).now();
	 StudentLoginDetails sld= new StudentLoginDetails(contact, contact);
	 ofy().save().entity(sld).now();
    }
	else
	{
    StudentDetail student1=ofy().load().type(StudentDetail.class).id(contact).now();
    LinkedHashSet<Long> list1=student1.getEnq_list();
    System.out.println(list1);
    list1.add(enq_id);
    student1.setEnq_list(list1);
	ofy().save().entity(student1).now();	
			
	}
	
	   StudentDetail student= ofy().load().type(StudentDetail.class).id(contact).now();
	   LinkedHashSet<Long> list=student.getEnq_list();
	   int count= list.size();
	   System.out.println(count);
		 
	   HttpSession session = req.getSession();
	   session.setAttribute("Phone",contact);   
	   session.setAttribute("Enquiry_Count",count);  
	   session.setAttribute("Latest Enquiry ID",enq_id);  
	   session.setAttribute("User_Name",name);  
	   res.sendRedirect("StudentAccount.jsp");
	   
	   
	   
	
}
	
}
