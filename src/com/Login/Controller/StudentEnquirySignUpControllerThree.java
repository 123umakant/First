package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import static com.Login.database.OfyService.ofy;

import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;

public class StudentEnquirySignUpControllerThree extends HttpServlet {
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	HttpSession session = req.getSession();
    String action=req.getParameter("action"); 
    PrintWriter out= res.getWriter();
	
	if(action.equals("update"))
	{ 	
	StudentDetail sd= ofy().load().type(StudentDetail.class).id((String)session.getAttribute("Phone")).now();
	if(sd!=null)
	{
		String name = req.getParameter("name"); 
		String address = req.getParameter("address");
		String email=req.getParameter("email");
		
		sd.setName(name);
		sd.setAddress(address);
		sd.setEmail(email);
		ofy().save().entity(sd).now();
		out.print("Your detail has been updated successfully");
	}
	
	}
	else if(action.equals("getinfo"))
	{
	
	StudentDetail sd = ofy().load().type(StudentDetail.class).id((String)session.getAttribute("Phone")).now();
	if(sd!=null)
	{
		
	
	JSONObject js = new JSONObject();	
	js.put("name",sd.getName());
	js.put("email",sd.getEmail());
	js.put("address",sd.getAddress());
    out.print(js.toString());
	
	}
	
	}

	else if(action.equals("password"))
	{
		StudentLoginDetails sld=ofy().load().type(StudentLoginDetails.class).id((String)session.getAttribute("Phone")).now();
		
		if(sld!=null)
		{
		String currentpassword=req.getParameter("currentpassword");
		System.out.println(currentpassword);
		String newpassword=req.getParameter("newpassword");
		System.out.println(newpassword);
		String confirmnewpassword=req.getParameter("confirmnewpassword");
		System.out.println(confirmnewpassword);
		String oldpassword=sld.getPassword();
		System.out.println(oldpassword);
		if(oldpassword.equals((currentpassword)))
		{
			if(newpassword.equals(confirmnewpassword))
			{
				sld.setPassword(confirmnewpassword);
				ofy().save().entity(sld).now();
				out.print("Your password has been updated successfully");
			}
			else
			{
			    out.print("Your new password is Not matched");
			}
		}
		else
		{
		        out.print("Your old password is Not matched");
			
		}
		
	}	
	}
	
}
}
