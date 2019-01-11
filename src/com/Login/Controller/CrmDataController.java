package com.Login.Controller;

import java.io.IOException;
import static com.Login.database.OfyService.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.CRM_Panels;

public class CrmDataController extends HttpServlet{
	
public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	
long id = System.currentTimeMillis();
String panel_i=req.getParameter("panel_id");
String name = req.getParameter("panel_name");
String department=req.getParameter("department");

long panel_id=Long.parseLong(panel_i);
CRM_Panels crm=new CRM_Panels(id, panel_id, name, department);

ofy().save().entity(crm).now();
	
	
}

}
