<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.sql.Date"%>
    <%@page import= "java.text.ParseException"%>
    <%@page import= "java.text.SimpleDateFormat"%>
    <%@page import= "java.util.Calendar"%>
    <%@ page import="com.Login.Entity.Zone" %>
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

<table border="2">
   <th>Date</th>
   <%
	List<Zone> list= ofy().load().type(Zone.class).list();  
    Iterator<Zone> itr = list.iterator();
    
    while(itr.hasNext())
	{
		Zone value = itr.next();
%>
        <th><%=value.getZone()%></th>
 	 
 <%}%>
<% 
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
String s ="01/11/2018 00:00:00";
java.util.Date date = sdf.parse(s);
long time = date.getTime();

SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
String s2="01/11/2018 23:59:59";
java.util.Date date1 = sdf.parse(s2);
long time2 = date1.getTime();

SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
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

%>
<tr>
<td> <%=num4 %></td>
<% 
for (int j=0;j<itemcount;j++)
 {
%>
<td><%=" " %></td>
<%}%>
</tr>

<%}%>


</table>
</body>
</html>