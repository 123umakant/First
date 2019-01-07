package com.Login.Controller;
import Formula.Distance;
import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Lead;
import com.Login.Entity.ZoneData2;


public class ZoneInfo extends HttpServlet{

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	String latitud=req.getParameter("latitude");
	String longitud=req.getParameter("longitude");
	
	double latitude=Double.parseDouble(latitud);
	double longitude=Double.parseDouble(longitud);
	
	PrintWriter out =res.getWriter();
	
	List<ZoneData2>list=ofy().load().type(ZoneData2.class).list();
	Iterator<ZoneData2> itr=list.iterator();
	double latitude1=0;
	double longitude1=0;
	String zonestr="";
	while(itr.hasNext())
	{
		ZoneData2 zone=itr.next();
		latitude1=zone.getLat();
		longitude1=zone.getLon();
		double d=Distance.distance(latitude,longitude,latitude1,longitude1);
		
		double distance =(d/1000);
		
		if(distance<zone.getRadius_area())
		{   zonestr=zone.getZone();
			out.println(zone.getZone());
			
		}
		
	}
	if(zonestr.equals(""))
	{
		out.println("Zone Not Found");
	}
	
	ZoneData2 z1= new ZoneData2("North Zone",28.792446156642182,77.03636460180667,8);
	ZoneData2 z2= new ZoneData2("East Zone",28.654402494261173,77.30261139746096, 6);
	ZoneData2 z3= new ZoneData2("West Zone",28.662988490152085,77.06863694067385,8);
	ZoneData2 z4= new ZoneData2("South Zone",28.510444931019354,77.20390610571292,10);
	ZoneData2 z5= new ZoneData2("NorthEast Zone",28.73210270651283,77.2378950583809,6);
	ZoneData2 z6= new ZoneData2("NorthWest Zone",28.719457765629087,77.1445112693184,5);
	ZoneData2 z7= new ZoneData2("SouthWest Zone",28.58734731136994,76.94126419897464,8);
	ZoneData2 z8= new ZoneData2("East Gurugram",28.46830770380564,77.07015168261717,7);
	ZoneData2 z9= new ZoneData2("Central Gurugram",28.45155600570536,76.97024476123045,7);
	ZoneData2 z10= new ZoneData2("West Gurugram",28.381653190517476,76.89437043261717,6);
	ZoneData2 z11= new ZoneData2("North Faridabad",28.46378047963777,77.30498444628893,6);
	ZoneData2 z12= new ZoneData2("Central Faridabad",28.392224611028784,77.31150757861315,5);
	ZoneData2 z13= new ZoneData2("North Noida",28.570872721749627,77.38137375903307,8);
	ZoneData2 z14= new ZoneData2("South Noida",28.484302342321264,77.49123704028307,8);
	ZoneData2 z15= new ZoneData2("West Ghaziabad",28.690506041122323,77.39304673266588,8);
	ZoneData2 z16= new ZoneData2("Central Zone",28.64174816609197,77.19652466650393,6);
	ZoneData2 z17= new ZoneData2("East Ghaziabad",28.72934996054043,77.54101883959947,8);
	ZoneData2 z18= new ZoneData2("South Faridabad",28.316993592346158,77.31579911303697,5);
	
	ofy().save().entity(z1).now();
	ofy().save().entity(z2).now();
	ofy().save().entity(z3).now();
	ofy().save().entity(z4).now();
	ofy().save().entity(z5).now();
	ofy().save().entity(z6).now();
	ofy().save().entity(z7).now();
	ofy().save().entity(z8).now();
	ofy().save().entity(z9).now();
	ofy().save().entity(z10).now();
	ofy().save().entity(z11).now();
	ofy().save().entity(z12).now();
	ofy().save().entity(z13).now();
	ofy().save().entity(z14).now();
	ofy().save().entity(z15).now();
	ofy().save().entity(z16).now();
	ofy().save().entity(z17).now();
	ofy().save().entity(z18).now();
	
}
}

