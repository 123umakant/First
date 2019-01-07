package com.Login.Controller;
import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Lead;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class EnquirySearchBy extends HttpServlet

{

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException,NullPointerException
{
	PrintWriter out = res.getWriter();
	String input=req.getParameter("Input");
	String searchby=req.getParameter("SearchBy");
	res.setContentType("application/json");
	res.setCharacterEncoding("utf-8");
	JSONObject json = new JSONObject();
	JSONArray arr = new JSONArray();
	
	if(searchby.equals("Contact Number"))
	{
	List<Lead>list=ofy().load().type(Lead.class).filter("contact",input).list();
	Iterator<Lead> itr=list.iterator();
	while(itr.hasNext())
	{
	Lead ld=itr.next();
		JSONObject js= new JSONObject();
		
		try {
			js.put("id",ld.getEnq_id());
			js.put("name",ld.getName());
			js.put("date",ld.getDate());
			js.put("cls",ld.getClass());
			js.put("subject",ld.getSubject());
			js.put("address",ld.getAddress());
			js.put("sexpref",ld.getSex_pref());
			js.put("fees",ld.getFees());
			js.put("phone",ld.getContact());
			arr.put(js);
			
		} 
		
		catch (JSONException e) {
			
			e.printStackTrace();
		}
		}
	json.put("enquiry", arr);
	out.print(json.toString());
	}
	
	else 
	{
	Lead ld=ofy().load().type(Lead.class).id(Long.parseLong(input)).now();
		
	JSONObject js= new JSONObject();
	
	try {
		js.put("id",ld.getEnq_id());
		js.put("name",ld.getName());
		js.put("date",ld.getDate());
		js.put("cls",ld.getCls());
		js.put("subject",ld.getSubject());
		js.put("address",ld.getAddress());
		js.put("sexpref",ld.getSex_pref());
		js.put("fees",ld.getFees());
		js.put("phone",ld.getContact());
		arr.put(js);
	    
	} 
	catch (JSONException e) {
		
		e.printStackTrace();
	}
	json.put("enquiry", arr);
	out.print(json.toString());
	
	
	
	}
}
}
/*
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.util.ArrayList;
	import java.util.Iterator;
	import java.util.List;

	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	import org.json.JSONArray;
	import org.json.JSONObject;

	import com.googlecode.objectify.*;

	import static com.gharpeshiksha.database.OfyService.*;

	import com.gharpeshiksha.entity.Areas;
	import com.gharpeshiksha.entity.LoginTutor;
	import com.gharpeshiksha.entity.Plans;
	import com.gharpeshiksha.entity.Subjects;
	import com.gharpeshiksha.entity.TeacherFollowUp;
	import com.gharpeshiksha.entity.TutorDetail;
	import com.gharpeshiksha.entity.RecentFollowUp;

	public class TutorInfo extends HttpServlet {
		
		public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException,NullPointerException
		{
			String input=req.getParameter("input").replace(" ", "");
			String searchfor=req.getParameter("searchfor");
			res.setContentType("application/json");
			res.setCharacterEncoding("utf-8");
			JSONObject json = new JSONObject();
			JSONArray arr = new JSONArray();
			String results="";
			if(searchfor.equals("Contact Number"))
			{
				TutorDetail tut=ofy().load().type(TutorDetail.class).id(Long.parseLong(input)).now();
					
				if(tut!=null)
				{ results+=tut.getTut_id()+",";	
				JSONObject jstut = new JSONObject();
				jstut.put("name", tut.getName());
				jstut.put("tut_id", tut.getTut_id());
				jstut.put("contact", tut.getContact());
				jstut.put("alternate", tut.getAlt_contact());
				jstut.put("email", tut.getEmail());
				jstut.put("client_of", client_of);
				arr.put(jstut);
				}
	}		
			json.put("tutors", arr);
			
			PrintWriter out=res.getWriter();
			out.print(json.toString());
			
		}
		}
*/
	
	
	
	
	

