<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="com.Login.Entity.EmployeeAccount" %>
    <%@ page import="com.Login.Entity.CallLog" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
    <%@ page import="java.text.SimpleDateFormat"%>
    <%@ page import="java.util.TimeZone"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Call Log Information</title>
</head>
<body>
<h1>Employee Call Details</h1><br>


<form action="Call_Log_Display.jsp" method="get">
From Date:<input type="date" name="from_date">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To Date:<input type="date" name="to_date">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee Name:<select name=emp_name>
<option> </option>
<%
List<EmployeeAccount> list = ofy().load().type(EmployeeAccount.class).list();
Iterator<EmployeeAccount> itr = list.iterator();
while(itr.hasNext())
{
EmployeeAccount value = itr.next();
%>
<option value="<%=value.getName()%>"><%=value.getName()%></option>

<%} %>
<option value="All">All</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit">

</form>
<%
String from=request.getParameter("from_date");
String to=request.getParameter("to_date");
//String emp_name=request.getParameter("emp_name");


//System.out.println(from_date);
//System.out.println(to_date);
 
  String from_date=from+" "+"00:00:00"; 
  String to_date=to+" "+"00:00:00"; 

  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
  java.util.Date From_date;
  From_date = sdf.parse(from_date);
  long from_date_timestamp = From_date.getTime();
  System.out.println(from_date_timestamp);
  
  java.util.Date To_date;
  To_date = sdf.parse(to_date);
  long to_date_timestamp = To_date.getTime();
  System.out.println(to_date_timestamp); 
  
%>

<table border="1">
<thead><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<th>Employee Name</th>
<th>No of Incoming</th>
<th>No of Outgoing</th>
<th>Total Call</th>
<th>Incoming Talktime</th>
<th>Outgoing Talktime</th>
<th>Total Talktime</th>

</thead>

<%
String emp_name = request.getParameter("emp_name");
List<EmployeeAccount>list1 = null;
if(emp_name!=null)
{
list1 = ofy().load().type(EmployeeAccount.class).filter("name",emp_name).list();
}
if(emp_name==null||emp_name.equals("All"))
{
list1=ofy().load().type(EmployeeAccount.class).list();	
}
Iterator<EmployeeAccount> itr1=list1.iterator();
while(itr1.hasNext())
{
EmployeeAccount value1=itr1.next();
String calling_extension =value1.getCalling_extension();
int incoming_count=ofy().load().type(CallLog.class).filter("disposition","ANSWERED").filter("src",calling_extension).count();
int outgoing_count= ofy().load().type(CallLog.class).filter("disposition","ANSWERED").filter("dst",calling_extension).count(); 
System.out.println(outgoing_count);
System.out.println("incoming"+incoming_count);
%>
<tbody>
<td><%=value1.getName()%></td>





<%}%>
</tbody>














</table>
</body>
</html>