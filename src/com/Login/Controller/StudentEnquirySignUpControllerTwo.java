package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import static com.Login.database.OfyService.ofy;

import com.Login.Entity.Lead;
import com.Login.Entity.StudentDetail;
import com.googlecode.objectify.annotation.Index;

public class StudentEnquirySignUpControllerTwo extends HttpServlet {
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{

PrintWriter out=res.getWriter();
String action=req.getParameter("action");
HttpSession session = req.getSession();
if(action.equals("getdata"))
{
res.setContentType("application/json");
res.setCharacterEncoding("utf-8");
JSONObject json = new JSONObject();
JSONArray arr= new JSONArray();
int pagenum=Integer.parseInt(req.getParameter("pagenum"));

StudentDetail student=ofy().load().type(StudentDetail.class).id((String)session.getAttribute("Phone")).now();
LinkedHashSet<Long> list=student.getEnq_list();
Long[] arrenq = new Long[list.size()];
list.toArray(arrenq);
//System.out.println(list.toArray(arrenq));
int lastnum=(arrenq.length-(pagenum-1)*10)>10?10:(arrenq.length-(pagenum-1)*10);
boolean dataaccessed=false;
if(lastnum<10)
	dataaccessed=true;
for(int i=(pagenum-1)*10;i<((pagenum-1)*10+lastnum);i++)
{
	   Lead lead=ofy().load().type(Lead.class).id(arrenq[i]).now();
		JSONObject js = new JSONObject();
		js.put("id",lead.getEnq_id());
		js.put("cls",lead.getCls());
		js.put("date",lead.getDate());
		js.put("subject",lead.getSubject());
		arr.put(js);
		
		
	}
//System.out.println(arr.length());
json.put("requirements",arr);
json.put("dataaccessed",dataaccessed);
out.print(json.toString());
}

else if(action.equals("cancelled"))
{
String enq_i= req.getParameter("id");
String status= req.getParameter("status");
long enq_id=Long.parseLong(enq_i);
System.out.println(enq_id);
Lead lead= ofy().load().type(Lead.class).id(enq_id).now();
lead.setStatus(status);
ofy().save().entity(lead).now();
out.print(status);
}

else if(action.equals("repost"))
{

//code to repost enquiry
	
}
else if(action.equals("editPost"))
{
String i=req.getParameter("id");
long id=Long.parseLong(i);

Lead lead=ofy().load().type(Lead.class).id(id).now();

JSONObject js = new JSONObject();	
js.put("start_time",lead.getStart_time());
js.put("teaching_mode",lead.getTeaching_mode());
js.put("fees",lead.getFees());
js.put("alt_contact",lead.getAlt_contact());
js.put("message",lead.getMessage());

out.print(js.toString());

}
	
}
}






