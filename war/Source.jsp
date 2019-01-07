<%@ page import="com.Login.Entity.Phone" %>
<%@ page import="com.Login.Entity.Email" %>
<%@ page import="static com.Login.database.OfyService.*"%>
<%@page import= "java.sql.Date"%>
<%@page import= "java.text.ParseException"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Phone and Email</title>
</head>
<body>
<h1>Displaying User Information</h1>
<h2>Source1/Source2/Source3</h2>
<table border="1" width="100%">
<thead>
<tr>
<th>Date</th>
<th>Number</th>
<th>Email</th>
</tr>
</thead>
<tbody>
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
	
	long toTimestamp=0;
	long fromTimestamp=0;
			
	if (i<10)
	{
		String num3="0";
		num3=Integer.toString(0)+i;
		String sub = num3+s.substring(2, 19);
		
		SimpleDateFormat sdf4 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date newdate = sdf4.parse(sub);
		toTimestamp=newdate.getTime();
		System.out.println(toTimestamp);
		String sub1=num3+s2.substring(2,19);
		SimpleDateFormat sdf5 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date newdate1 = sdf5.parse(sub1);
		fromTimestamp=newdate1.getTime();
		System.out.println(fromTimestamp);
	}
	
	else
	{
String sub = i+s.substring(2, 19);
SimpleDateFormat sdf6 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
java.util.Date newdate2 = sdf6.parse(sub);
toTimestamp=newdate2.getTime();
System.out.println(toTimestamp);
String sub1=i+s2.substring(2,19);
SimpleDateFormat sdf7 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
java.util.Date newdate3 = sdf7.parse(sub1);
fromTimestamp=newdate3.getTime();
System.out.println(fromTimestamp);
String num4=i+s.substring(2,10);
}
String num4=i+s.substring(2,10);


%>
 <%

 int phone1= ofy().load().type(Phone.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source1").count(); 
 int phone2= ofy().load().type(Phone.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source2").count(); 
 int phone3= ofy().load().type(Phone.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source3").count(); 
 int email1= ofy().load().type(Email.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source1").count(); 
 int email2= ofy().load().type(Email.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source2").count();
 int email3= ofy().load().type(Email.class).filter("id >=",toTimestamp).filter("id <",fromTimestamp).filter("select","Source3").count();
 List<Phone> list= ofy().load().type(Phone.class).list();
 Iterator<Phone> itr = list.iterator();
 List<Email> list1= ofy().load().type(Email.class).list();
 Iterator<Email> itr1 = list1.iterator();
  
%>
<tr>
<td><%=num4 %></td>
<td><%=phone1+","+phone2+","+phone3 %></td>
<td><%=email1+","+email2+","+email3 %></td>

</tr>
<%}%>

</tbody>

</table>
</body>
</html>
