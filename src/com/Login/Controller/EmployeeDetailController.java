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
import com.Login.Entity.EmployeeAccount;

public class EmployeeDetailController extends HttpServlet{

	
public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	String action = req.getParameter("action");
	
	PrintWriter out = res.getWriter();
	if(action.equals("AddEmployee"))
	{
	String emp_id=req.getParameter("emp_id");
	String contact= req.getParameter("emp_contact");
	String emp_name=req.getParameter("emp_name");
	String department=req.getParameter("department");
	String emp_email=req.getParameter("emp_email");
	long phone=Long.parseLong(contact);
		
    EmployeeAccount empacc=new EmployeeAccount(phone, emp_id, emp_email, emp_name,department);
    ofy().save().entity(empacc).now();
    String referer=req.getHeader("referer");
	res.sendRedirect(referer);
	}
	else if(action.equals("EditEmployee"))
	{
		String i= req.getParameter("id");
		long phone=Long.parseLong(i);
		//System.out.println(id);
		EmployeeAccount emp=ofy().load().type(EmployeeAccount.class).id(phone).now();

		JSONObject js=new JSONObject();
		js.put("id",emp.getEmp_id());
		js.put("emp_name",emp.getName());
		js.put("department",emp.getDepartment());
		js.put("emp_email",emp.getWorkemail());
		js.put("Phone",emp.getPhone());
		out.print(js.toString());
			
	}
	else if(action.equals("DeleteEmployee"))
	{
		
	String contact= req.getParameter("emp_contact");
	long phone=Long.parseLong(contact);
	System.out.println(phone);


	EmployeeAccount emp=ofy().load().type(EmployeeAccount.class).id(phone).now();

	ofy().delete().entity(emp).now();
		
		
	}
	else if(action.equals("UpdateEditEmployee"))
	{
		
	String contact= req.getParameter("id");
	long phone=Long.parseLong(contact);
	System.out.println(phone);
	String emp_id=req.getParameter("employee_id");
	String emp_name=req.getParameter("employee_name");
	String department=req.getParameter("employee_department");
	String emp_email=req.getParameter("employee_email");
	
	EmployeeAccount emp=ofy().load().type(EmployeeAccount.class).id(phone).now();
  
	emp.setWorkemail(emp_email);
	emp.setName(emp_name);
	emp.setEmp_id(emp_id);
	emp.setDepartment(department);
	ofy().save().entity(emp).now();
	String referer=req.getHeader("referer");
	res.sendRedirect(referer);	

		
		
	}

	
}
}
