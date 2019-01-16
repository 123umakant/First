<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Login.Entity.CRM_Panels" %>
      <%@ page import="com.Login.Entity.EmployeeAccount" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel Access</title>
</head>

<body>
<h1>Panel Access</h1>
<form action="\crm" id="Paneldata">

Employee Name:<select name="employeename">
<% 
List<EmployeeAccount> list = ofy().load().type(EmployeeAccount.class).list();
Iterator<EmployeeAccount> itr=list.iterator();
while(itr.hasNext())
{
EmployeeAccount value=itr.next();
%>
<option value="<%=value.getName() %>" ><%=value.getName() %></option>

<%}%>
</select><br><br>

Panels:<br>
<input type="hidden" name="action" value="Panel_Entry">

<%
List<CRM_Panels> list1 = ofy().load().type(CRM_Panels.class).list();
Iterator<CRM_Panels> itr1=list1.iterator();

while(itr1.hasNext())
{
CRM_Panels value1=itr1.next();
%>
<tr>
<td><input type="checkbox" value="<%=value1.getPanel_id()%>" " name="panel_id" ><%=value1.getPanel_id()%></td><br>

<%}%>
</tr><br><br>
<input type="submit" value="Save" onclick="StorePanelId()">
</form>
<form action="\crm">
<h1>Employee Department</h1>
<input type="hidden" name="action" value="Department_Update">
Employee Name:<select name="employeename">
<% 
List<EmployeeAccount> list2 = ofy().load().type(EmployeeAccount.class).list();
Iterator<EmployeeAccount> itr2=list2.iterator();
while(itr2.hasNext())
{
EmployeeAccount value=itr2.next();
%>
<option value="<%=value.getName() %>" ><%=value.getName() %></option>

<%}%>
</select><br><br>
Department:<select name="department">
<option value="Activation">Activation</option>
<option value="Service">Service</option>
<option value="admin">Admin</option>
<option value="Enquiry">Enquiry</option>

</select><br><br>
<input type="submit" value="Save">
</form>

<script >
function StorePanelId()
{
	
      $.ajax({
      type:"GET",
      url:"/crm",
      data:$("#Paneldata").serialize(),
      success:function(data)
      {
      }
      });

}
</script>















</body>
</html>