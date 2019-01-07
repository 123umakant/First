<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Login.Entity.Feedbacktest" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Feedback</title>
</head>

<body>
<h1>Feedback Form Data</h1>
<table border="1" width="100%">
<thead>
<tr>
<th>ID</th>
<th>Employee Name </th>
<th>Message</th>
<th>Beneficial To</th>
<th>Idea Implemented By</th>
<th>Time</th>
</tr>
</thead>
<tbody>

 <%
	List<Feedbacktest> list= ofy().load().type(Feedbacktest.class).list();  
    Iterator<Feedbacktest> itr = list.iterator();
    
    while(itr.hasNext())
	{
		Feedbacktest value = itr.next();
%>
<tr>
<td><%=value.getId() %></td>
<td><%=value.getEmpName() %></td>
<td><%=value.getMessage() %></td>
<td><%=value.getBenefit() %></td>
<td><%=value.getIdea() %></td>
<td><%=value.getTime() %></td>

</tr>
<%}%>
</tbody>

</table>
</body>
</html>