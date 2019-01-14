package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.LinkedHashSet;

import static com.Login.database.OfyService.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.Login.Entity.CRM_Panels;
import com.Login.Entity.EmployeeAccount;
import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;

public class CrmDataController extends HttpServlet{
	
public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException,NullPointerException
{
	PrintWriter out= res.getWriter();
	String action=req.getParameter("action");
 	System.out.println(action);
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
	
	else if(action.equals("EditPanel"))
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
	else if(action.equals("UpdateEditPanel"))
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

	else if(action.equals("DeletePanel"))
{
String i= req.getParameter("id");
long id=Long.parseLong(i);
System.out.println(id);


CRM_Panels crm=ofy().load().type(CRM_Panels.class).id(id).now();

ofy().delete().entity(crm).now();

}

	else if(action.equals("Panel_Entry"))
	{
	String empname=req.getParameter("employeename");
//	String contact= req.getParameter("contact");
	String department=req.getParameter("department");
	
	String[] panel_id=req.getParameterValues("panel_id");
	EmployeeAccount employeedetail=ofy().load().type(EmployeeAccount.class).filter("name",empname).first().now();
	//EmployeeAccount employeedetail=ofy().load().type(EmployeeAccount.class).id(phone).now();
	long phone=employeedetail.getPhone();
	employeedetail.setDepartment(department);
/*	if(employeedetail==null)
	{
	EmployeeAccount empacc=new EmployeeAccount(phone, empname, department);
	ofy().save().entity(empacc).now();	
	}
	
	else
	{
	*/
	EmployeeAccount acc=ofy().load().type(EmployeeAccount.class).id(phone).now();
	LinkedHashSet<Long> list=acc.getAccess_to_panels();

    Long[] data = new Long[panel_id.length];
	for (int i = 0; i < panel_id.length; i++) 
	{
	  data[i] = Long.valueOf(panel_id[i]);
	}

	for(int i =0;i<data.length;i++)
	{
		list.add(data[i]);
	}
	
	acc.setAccess_to_panels(list);
    ofy().save().entity(acc).now();
	
  
	}
	}
}




