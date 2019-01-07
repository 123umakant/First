package com.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Zone;

import static com.Login.database.OfyService.*;


public class ZoneController extends HttpServlet 
{
	private static final String Time = null;

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException,ServletException 
			{
		PrintWriter out=res.getWriter();
			
		String timestamp = req.getParameter("time");
		String zone = req.getParameter("zone");
		String latitude=req.getParameter("lat");
		String longitude=req.getParameter("lon");
		
		long time=Long.parseLong(timestamp);
		double lat=Double.parseDouble(latitude);
		double lon=Double.parseDouble(longitude);
		
		Zone z = new Zone(time,zone,lat,lon); 
		
		ofy().save().entity(z).now();
		res.sendRedirect("view.jsp");
}
}
