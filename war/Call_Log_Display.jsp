<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Call Log Information</title>
</head>
<body>
<h1>Employee Call Details</h1><br>
<form action="/calllog">

From Date:<input type="date" name="from_date">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To Date:<input type="date" name="to_date">

&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit">
</form>



<table>
<thead><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<th>Employee Name</th>
<th>No of Incoming</th>
<th>No of Outgoing</th>
<th>Total Call</th>
<th>Incoming Talktime</th>
<th>Outgoing Talktime</th>
<th>Total Talktime</th>

</thead>















</table>
</body>
</html>