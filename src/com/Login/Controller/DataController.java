package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Plans;

public class DataController extends HttpServlet {
	
	
public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException	
{
	
PrintWriter out = res.getWriter();	

String plan = req.getParameter("tutor_info");
String amount = req.getParameter("amount");
String period = req.getParameter("period");
String expiry_date = req.getParameter("exp_date");
String contact_views = req.getParameter("contact_views");

SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkatta"));


java.util.Date date = sdf.parse(expiry_date);
long expirytimestamp = date.getTime();


Plans pl = new Plans(tutor, plan, amount, period, expiry_date, contact_views, expirytimestamp);
	

	
	
	
	
	
}

}
