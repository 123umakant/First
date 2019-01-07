
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.Login.Entity.Phone" %>
<%@ page import="com.Login.Entity.Email" %>
<%@ page import="static com.Login.database.OfyService.*"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>
<%@page import= "java.text.ParseException"%>
<%@page import= "com.Login.Controller.Sms"%>
<%@page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying User Information</title>
</head>
<body>
<tbody>
<%
String date1=request.getParameter("datefrom");
String date2=request.getParameter("todate");
String source=request.getParameter("Source");
String content=request.getParameter("text");
String pe=request.getParameter("pe");

if(pe.equals("Phone"))
{
%>
<h1>Phone Number And Source</h1>
<table border="1" width="100%">
<thead>
<tr>
<th>Phone Number</th>
<th>Source</th>
</tr>
</thead>
<% 
try {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String s =date1+" "+"00:00:00";
	
		java.util.Date date;
		date = sdf.parse(s);
		long fromtimestamp = date.getTime();
	
		
		

	    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String s2=date2+" "+"23:59:59";
	   
	    java.util.Date date3;
	
		date3 = sdf1.parse(s2);
		long totimestamp = date3.getTime();
	
		List<Phone> list=null;
		if(source.equals("Source1")||source.equals("Source2")||source.equals("Source3")||source.equals("All"))
		{
			list=ofy().load().type(Phone.class).filter("id >=",fromtimestamp).filter("id <",totimestamp).filter("select",source).list();
			Iterator<Phone> itr = list.iterator();
		    
		    while(itr.hasNext())
			{
				Phone value = itr.next();
		
				%>
		 <tr>
       <td><%=value.getPhone() %></td>
       <td><%=value.getSelect() %></td>

</tr>	
     <%}%>
     <%} %>
<%}catch(Exception e) {
		
	}%> 
<%}%>		
<%
if(pe.equals("Email"))
{
	%>
	<h1>Email And Source</h1>
	<table border="1" width="100%">
	<thead>
	<tr>
	<th>Email</th>
	<th>Source</th>
	</tr>
	</thead>
	
	<% 
	try {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	String s =date1+" "+"00:00:00";

	java.util.Date date;
	date = sdf.parse(s);
	long fromtimestamp = date.getTime();

	
	

    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String s2=date2+" "+"23:59:59";
   
    java.util.Date date3;

	date3 = sdf1.parse(s2);
	long totimestamp = date3.getTime();

	List<Email> list=null;
	if(source.equals("Source1")||source.equals("Source2")||source.equals("Source3")||source.equals("All"))
	{
		list=ofy().load().type(Email.class).filter("id >=",fromtimestamp).filter("id <",totimestamp).filter("select",source).list();
		Iterator<Email> itr = list.iterator();
	    
	    while(itr.hasNext())
		{
			Email value = itr.next();
	
			%>
	 <tr>
   <td><%=value.getEmail() %></td>
   <td><%=value.getSelect() %></td>

</tr>	
 <%}%>
 <%} %>
<%}catch(Exception e) {
	
}%> 
<%}%>		
</tbody>
</body>
</html>