<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter your Feedback</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<table>
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
       <form action="submit" method="post">
<h1>Give Your Feedback</h1>
Demo classes Given:<input type="number" name="democlassesgiven"><br><br>
Classes Fixed:&nbsp;&nbsp;<input type="number" name="classesfixed"><br><br>
Tutor Contact:<input type="text" name="tutorcontact"><br><br>
Service Satisfaction:&nbsp;<select name="servicesatisfaction">

<option value="satisfied">Satisfied</option>
<option value="notsatisfied">Not Satisfied</option>
<option value="neutral">Neutral</option>
</select><br><br>
Feedback Type:<select name="feedbacktype">
<option value="message">Message</option>
<option value="complaint">Complaint</option>
<option value="suggestion">Suggestion</option>

</select><br><br>
Message:<textarea rows="10" name="text"></textarea><br><br>

<input type="submit" value="Submit">

</form>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>

<th>Tutor Name</th>
<th>Tutor Contact</th>
<th>Feedback</th>

<%
long twentytimestamp=System.currentTimeMillis()-(20*86400000);
List<Plans> list= ofy().load().type(Plans.class).filter("contact_views >",0).filter("expirytimestamp >",System.currentTimeMillis()).filter("id <",twentytimestamp).list();
Iterator<Plans> itr = list.iterator();

while(itr.hasNext)
{
Plan value=itr.next();
%>
<tr>
<td><%=value.getTutor_Name()%></td>
<td><%=value.getTutor_Contact()%></td>	
</tr>
<%} %>

</table>
</body>
</html>