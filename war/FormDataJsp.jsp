<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Login.Entity.FormData" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Form Data</title>
</head>
<body>
<h1>Applicant Details</h1>
<table border="1">
<thead>
<tr>
<th>Date</th>
<th>Name </th>
<th>Gender</th>
<th>Contact</th>
<th>Email</th>
<th>Profile</th>
<th>Qualification</th>
<th>Experience</th>
<th>Computer Skills</th>
<th>English Rating</th>
<th>Current Salary</th>
<th>Can Work In Delhi</th>
<th>Current Address</th>
<th>Permanent Address</th>
</thead>
<tbody>
<%
List <FormData> list=ofy().load().type(FormData.class).list();
Iterator<FormData> itr=list.iterator();
while(itr.hasNext())
{
FormData value=itr.next();
//boolean newlocation=value.isCan_work_in_delhi();
%>	
<tr>
<td><%=value.getDate() %></td>
<td><%=value.getName() %></td>
<td><%=value.getGender() %></td>
<td><%=value.getContact() %></td>
<td><%=value.getEmail() %></td>
<td><%=value.getProfile() %></td>
<td><%=value.getQualification() %></td>
<td><%=value.getExperience() %></td>
<td><%=value.getComputer_skills() %></td>
<td><%=value.getEnglish_rating() %></td>
<td><%=value.getCurrent_salary() %></td>
<td><%=value.isCan_work_in_delhi()%></td>
<td><%=value.getCurrent_address() %></td>
<td><%=value.getPermanent_address() %></td>
</tr>
<%}%>
</tbody>
</table>
</body>
</html>
