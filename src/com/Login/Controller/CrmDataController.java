package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import static com.Login.database.OfyService.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.Login.Entity.CRM_Panels;

public class CrmDataController extends HttpServlet{
	
public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException,NullPointerException
{
	PrintWriter out= res.getWriter();
	String action=req.getParameter("action");
	if(action.equals("AddPanel"))
	{
	String panel_i=req.getParameter("panel_id");
	String name = req.getParameter("panel_name");
	String department=req.getParameter("department");

	long panel_id=Long.parseLong(panel_i);
	CRM_Panels crm=new CRM_Panels(panel_id, name, department);

	ofy().save().entity(crm).now();
	String referer=req.getHeader("referer");
	res.sendRedirect(referer);
	}
	
if(action.equals("EditPanel"))
{
String i= req.getParameter("id");
long id=Long.parseLong(i);
//System.out.println(id);
CRM_Panels crm=ofy().load().type(CRM_Panels.class).id(id).now();

JSONObject js=new JSONObject();
js.put("id",crm.getId());
js.put("panel_id",crm.getPanel_id());
js.put("panel_name",crm.getName());
js.put("department",crm.getDepartment());


out.print(js.toString());

}
if(action.equals("UpdateEditPanel"))
{
String i= req.getParameter("id");
long id=Long.parseLong(i);
System.out.println(id);
String panel_i=req.getParameter("panel_id");
String panel_name=req.getParameter("panel_name");
String department=req.getParameter("department");
long panel_id=Long.parseLong(panel_i);

CRM_Panels crm=ofy().load().type(CRM_Panels.class).id(id).now();

crm.setPanel_id(panel_id);
crm.setName(panel_name);
crm.setDepartment(department);

ofy().save().entity(crm).now();
String referer=req.getHeader("referer");
res.sendRedirect(referer);	
}

if(action.equals("DeletePanel"))
{
String i= req.getParameter("id");
long id=Long.parseLong(i);
System.out.println(id);


CRM_Panels crm=ofy().load().type(CRM_Panels.class).id(id).now();

ofy().delete().entity(crm).now();

}

//String panel_i=req.getParameter("panel_id");	
//String action=req.getParameter("action");
//System.out.println(action);
/*
if(action.equals("NewData"))
{
String panel_ii=req.getParameter("panel_id");
String name = req.getParameter("panel_name");
String department=req.getParameter("department");

long panel_id=Long.parseLong(panel_i);
CRM_Panels crm=new CRM_Panels(panel_id, name, department);

ofy().save().entity(crm).now();

}

if(action.equals("AddPanel"))
{
String panel_i1=req.getParameter("panel_id");
String panel_name=req.getParameter("panel_name");
String department1=req.getParameter("department");

long panel_id1=Long.parseLong(panel_i1);

System.out.println(panel_id1);
System.out.println(panel_name);
System.out.println(department1);



CRM_Panels crm1=new CRM_Panels(panel_id1, panel_name, department1);


ofy().save().entity(crm1).now();
}	
	
*/	
}
}


