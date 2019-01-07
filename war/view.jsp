<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Login.Entity.Zone" %>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Time Zone & ID</title>
</head>
<body>
<table>
<table border="2">

<tr>
        <td>Timestamp</td>
        <td>
</tr><br>
     <% 
     List<Zone> list= ofy().load().type(Zone.class).list();  
     Iterator<Zone> itr = list.iterator();
     
      while (itr.hasNext())
      {
       Zone value = itr.next();
       %>
       
      <tr>
      <td><%=value.getZone()%></td>
      </tr>
      
      <% } %>
</table>
</body>
</html>