<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import= "java.sql.Date"%>
    <%@page import= "java.text.ParseException"%>
    <%@page import= "java.text.SimpleDateFormat"%>
    <%@page import= "java.util.Calendar"%>
    <%@ page import="com.Login.Entity.*" %>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Date and Zones</title>
</head>
<body>
<table>
<form method="post">

<table border="1">
 <th>Date</th>


<% 
List<ZoneData2> list= ofy().load().type(ZoneData2.class).list();  
    Iterator<ZoneData2> itr = list.iterator();
    
    while(itr.hasNext())
	{
		ZoneData2 value = itr.next();
%>
        <th><%=value.getZone()%></th>
 	 
 <%}%>

	<% 
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		String s ="01/11/2018 00:00:00";
		java.util.Date date;
		date = sdf.parse(s);
		long time = date.getTime();
		
		String s2="01/11/2018 23:59:59";
		java.util.Date date1 = sdf.parse(s2);
		long time2 = date1.getTime();
	
		Calendar cal = Calendar.getInstance(); 	 		
		String s3=sdf.format(cal.getTime());
		String k =s.substring(0, 2);
		int num1 =Integer.parseInt(k);
		String l = s3.substring(0,2);
		int num2 = Integer.parseInt(l);
		for (int i=num1;i<=num2;i++)
		{
			long fromtimestamp=0;
			long totimestamp=0;
					
			if (i<10)
			{
				
				String num3="0";
				num3=Integer.toString(0)+i;
				String sub = num3+s.substring(2, 19);
				
				
				 java.util.Date newdate;
					newdate = sdf.parse(sub);
					fromtimestamp=newdate.getTime();
					
				    String sub1=num3+s2.substring(2,19);
					
					java.util.Date newdate1 = sdf.parse(sub1);
					totimestamp=newdate1.getTime();
					
			}

			else
			{
			String sub = i+s.substring(2, 19);
			
			java.util.Date newdate2 = sdf.parse(sub);
			fromtimestamp=newdate2.getTime();

			String sub1=i+s2.substring(2,19);
			
			java.util.Date newdate3;
			newdate3 = sdf.parse(sub1);
			totimestamp=newdate3.getTime();
			

			}
			String num4=i+s.substring(2,10);
		
		%>
<tr>
<td> <%=num4 %></td>
<%itr = list.iterator();
while(itr.hasNext())
{
ZoneData2 value=itr.next();	
	
int count= ofy().load().type(Lead.class).filter("timestamp>=",fromtimestamp).filter("timestamp<",totimestamp).filter("zone",value.getZone()).count();

%>
<td> <%=count %></td>
<%}%>
</tr>
<%} %>





</body>
</html>