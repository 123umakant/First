package com.Login.Controller;

import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Lead;
import com.Login.Entity.LoginTutor;
import com.Login.Entity.ServiceData;
import com.Login.Entity.TutorDetail;
import com.Login.Entity.TeacherFollowUp;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FollowUp extends HttpServlet
{

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	PrintWriter out = res.getWriter();
	String contac= req.getParameter("number");
	long contact=Long.parseLong(contac);
	res.setContentType("application/json");
	res.setCharacterEncoding("utf-8");
	JSONObject js = new JSONObject();
	JSONArray arr = new JSONArray();
	
    TutorDetail td= new TutorDetail(1l,1234567890l,"neerav");
    ofy().save().entity(td).now();
	TutorDetail tutor= ofy().load().type(TutorDetail.class).id(contact).now();
	js.put("id",tutor.getTut_id());
	js.put("name",tutor.getName());
	js.put("contact",tutor.getContact());
	

	TeacherFollowUp tfu= new TeacherFollowUp(2l,1234567890l,"12/12/2018","24/12/2018","hello","12","Neerav",5l,"Pending");
	ofy().save().entity(tfu).now();
	
	
	List<TeacherFollowUp>list=ofy().load().type(TeacherFollowUp.class).filter("contact",contact).list();
	Iterator<TeacherFollowUp> itr=list.iterator();
	while(itr.hasNext())
	{
		TeacherFollowUp tf=itr.next();
		JSONObject json= new JSONObject();
		try {
			json.put("followupdate",tf.getFollowupdate());
			json.put("nextfollowup",tf.getNextfollowup());
			json.put("message",tf.getMessage());
			json.put("employee_id",tf.getEmployee_id());
			json.put("employee_name",tf.getEmployee_name());
			json.put("conversion_chance",tf.getConversion_chance());
			json.put("status",tf.getStatus());
			arr.put(json);
		}
        catch (JSONException e) 
        {
			
			e.printStackTrace();
		}
	    }
		js.put("followups", arr);
		out.print(js.toString());
	
	
}
}


