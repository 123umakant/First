package com.Login.Controller;

import static com.Login.database.OfyService.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Phone;
import com.Login.Entity.Email;

public class Sms extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	PrintWriter out = res.getWriter();	
	String date1=req.getParameter("datefrom");
	String date2=req.getParameter("todate");
	String source=req.getParameter("Source");
	String content=req.getParameter("text");

	
	
	
		try {
			
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			String s =date1+" "+"00:00:00";
			java.util.Date date;
			date = sdf.parse(s);
			long fromtimestamp = date.getTime();
			out.println(fromtimestamp);
		
		    SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		    String s2=date2+" "+"23:59:59";
		    out.println(s2);
		    java.util.Date date3;
		
			date3 = sdf1.parse(s2);
			long totimestamp = date3.getTime();
			out.println(totimestamp);
			List<Phone> list=ofy().load().type(Phone.class).filter("id >=",fromtimestamp).filter("id<",totimestamp).filter("select","Source1").list();
			
			res.sendRedirect("Sms.jsp");
		}
		
		catch (ParseException e) {
			
			e.printStackTrace();
		}
		

	
	
	
	
	}
}

	/*SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	Calendar cal = Calendar.getInstance(); 	 		
	String s3=sdf2.format(cal.getTime());

	String k =s.substring(0, 2);
	int num1 =Integer.parseInt(k);
	String l = s3.substring(0,2);
	int num2 = Integer.parseInt(l);
	for (int i=num1;i<=num2;i++)
	{
		long newtime2=0;
		long newtime=0;
				
		if (i<10)
		{
			String num3="0";
			num3=Integer.toString(0)+i;
			String sub = num3+s.substring(2, 19);
			
			SimpleDateFormat sdf4 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			java.util.Date newdate = sdf4.parse(sub);
			newtime=newdate.getTime();
			System.out.println(newtime);
			String sub1=num3+s2.substring(2,19);
			SimpleDateFormat sdf5 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			java.util.Date newdate1 = sdf5.parse(sub1);
			newtime2=newdate1.getTime();
			System.out.println(newtime2);
		}
		
		else
		{
	String sub = i+s.substring(2, 19);
	SimpleDateFormat sdf6 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	java.util.Date newdate2 = sdf6.parse(sub);
	newtime=newdate2.getTime();

	String sub1=i+s2.substring(2,19);
	SimpleDateFormat sdf7 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	java.util.Date newdate3 = sdf7.parse(sub1);
	newtime2=newdate3.getTime();
	String num4=i+s.substring(2,10);

	}

	String num4=i+s.substring(2,10);
	int itemcount=list.size();

		
	}
}*/
