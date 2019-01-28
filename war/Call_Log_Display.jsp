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

<style>

td,th{
  padding:30px;
  font-size:15px;
  }
  
.button{
  background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 5px 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 12px;
  }
  .color{
  color:Navy  ;
  }

</style>

</head>

<body>

<h1 style="color:SteelBlue ;">Employee Call Details</h1><br><br>

<!--Form Declaration  -->

<form action="Call_Log_Display.jsp" method="post">

From Date:<input type="date" name="from_date" required>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To Date:<input type="date" name="to_date" required>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee Name:<select name=emp_name required>

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
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" value="Submit">

</form>

<!--End of Form Declaration  -->

<!--Table Heading  -->

<table border="1">
<thead class="color"><br><br><br><br><br><br><br><br>
<th>Extension Number</th>
<th>Employee Name</th>
<th>No of Incoming</th>
<th>No of Outgoing</th>
<th>Total Call</th>
<th>Incoming Talktime</th>
<th>Outgoing Talktime</th>
<th>Total Talktime</th>
</thead>

<!--End of Table Heading  -->

<!--Source Code -->
<%

float incoming_call_duration=0;
float outgoing_call_duration=0;
float incoming_hours=0;
float incoming_minutes=0;
float remaining_inc_minutes=0;
float incoming_seconds=0;
float outgoing_hours=0;
float outgoing_minutes=0;
float remaining_out_minutes=0;
float outgoing_seconds=0;
String from=request.getParameter("from_date");
String to=request.getParameter("to_date");

String from_date="";
String to_date="";

 if(from!=null)
 {
 from_date=from+" "+"00:00:00"; 
 to_date=to+" "+"23:59:59"; 
 
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
/* int count=1; */
while(itr1.hasNext())
{
EmployeeAccount value1=itr1.next();
String calling_extension =value1.getCalling_extension();
int incoming_count=ofy().load().type(CallLog.class).filter("disposition","ANSWERED").filter("src",calling_extension).filter("id >=",from_date_timestamp).filter("id <",to_date_timestamp).count();
int outgoing_count= ofy().load().type(CallLog.class).filter("disposition","ANSWERED").filter("dst",calling_extension).filter("id >=",from_date_timestamp).filter("id <",to_date_timestamp).count();

int total_count = incoming_count+outgoing_count;

CallLog cl=ofy().load().type(CallLog.class).filter("id >=",from_date_timestamp).filter("id <",to_date_timestamp).filter("disposition","ANSWERED").filter("src",calling_extension).first().now();
if(cl!=null)
{
incoming_call_duration=cl.getDuration();
incoming_hours = Math.round(incoming_call_duration/60) ;
remaining_inc_minutes=incoming_call_duration-incoming_hours*60; 
incoming_minutes = remaining_inc_minutes;

}
CallLog cl1=ofy().load().type(CallLog.class).filter("id >=",from_date_timestamp).filter("id <",to_date_timestamp).filter("disposition","ANSWERED").filter("dst",calling_extension).first().now();
if(cl1!=null)
{
outgoing_call_duration=cl1.getDuration();
outgoing_hours = Math.round(outgoing_call_duration/60) ;

remaining_out_minutes=outgoing_call_duration-outgoing_hours*60; 
outgoing_minutes = remaining_out_minutes;
}
float total_call_duration_hr= incoming_hours+outgoing_hours;
float total_call_duration_min=incoming_minutes+outgoing_minutes;



%>
<!--End of Source Code -->

<!--Table body  -->
<tbody>
<td><%=value1.getCalling_extension()%></td>
<td><%=value1.getName()%></td>
<td><%=incoming_count %></td>
<td><%=outgoing_count %></td>
<td><%=total_count %></td>
<td><%=incoming_hours+" "+"hr"+" "+incoming_minutes+" "+"min"%></td>
<td><%=outgoing_hours+" "+"hr"+" "+outgoing_minutes+" "+"min"%></td>
<td><%=total_call_duration_hr+" "+"hr"+" "+total_call_duration_min+" "+"min"%></td>

<%}}%>


</tbody>
<!--End of Table body  -->

</table>
</body>
</html>