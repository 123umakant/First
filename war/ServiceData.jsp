<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Login.Entity.ServiceData" %>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Service Data</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<h1>Tutor Details</h1>
<form action="ServiceData.jsp" method="get">
Filter: <select name="filter">
<option > </option>
<option value="done" >Done</option>
<option value="Not Responding">Not Responding</option>
<option value="All">All</option>
</select><br><br>
<input type="submit" value="Submit"><br><br>
</form>




<table border="1" width=100%>
 <th>S.No</th>
 <th>Tutor Name</th>
 <th>Tutor Contact</th>
  <th>Status1</th>
   <th>Status2</th>
<%
String filtertype=request.getParameter("filter");

List <ServiceData> list=null;
if(filtertype !=null)
{
list=ofy().load().type(ServiceData.class).filter("status",filtertype).list();	
}
if(filtertype==null||filtertype.equals("All"))
{
	list=ofy().load().type(ServiceData.class).list();
}
Iterator<ServiceData>itr=list.iterator();
int i=1;
while(itr.hasNext())
{
ServiceData value=itr.next();
%>
<tr id="row<%=value.getTimestamp()%>">
<td><%=i++%></td>
<td><%=" " %></td>
<td><%=value.getTutor_contact()%></td>
<td><button id="<%=value.getTimestamp()%>" onclick="sendInfo(this.id,'done')">Mark This As Done</button> </td>
<td><button id="<%=value.getTimestamp()%>" onclick="sendInfo(this.id,'Not Responding')">Not Responding</button> </td>
</tr>
<%}%>
</table>

 <script>
 function sendInfo(id,status)
 {
	 $.ajax({
		 type:"POST",
		 url:"/servicedata",
		 data:{id,
			    status},
		 success:function(){
		 $("#row"+id).css("display", "none");
		 },
	     error:function()
	     {
	    	 alert("error");
	     }
		 });
	 
 }
 
</script>
</body>
</html>