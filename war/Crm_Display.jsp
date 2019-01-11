<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="com.Login.Entity.CRM_Panels" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Displaying Crm Data</title>
<style>
  td,th{
  padding:5px;
  }
  a{
      padding: 4px 15px 4px 21px;
    text-decoration: none;
    background: deepskyblue;
    color: white;
    font-size: 20px;
    
    border-radius: 10px;
  }
  table
  {
      margin: 100px auto;
  }
  </style>
</head>
<body>
<center><h1 >Displaying Panel Data</h1></center>


<center><a href="#" onclick="deletePanel()" data-toggle="modal" data-target="#myModal3">Add Panel</a></center>
  <!-- Modal1 -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit Panel</h4>
        </div>
        <div class="modal-body">
         Panel Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="panel_id"><br><br>
         Panel Name:<input type="text" name="panel_name"><br><br>
         Department:&nbsp;<input type="text" name="department"><br><br>
         
         
         <input type="submit"  value="Submit">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
   <!-- Modal2 -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
      
        </div>
        <div class="modal-body">
  <center><p><b>Are you sure you want to delete this panel?</b></p></center><br><br>
        
<center><button type="button" name="button1">Yes</button>&nbsp;&nbsp;
     <button type="button" name="button2">No</button></center>
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   <!--End of Modal2 -->


 <!-- Modal3 -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Panel</h4>
        </div>
        <div class="modal-body">
         Panel Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="panel_id"><br><br>
         Panel Name:<input type="text" name="panel_name"><br><br>
         Department:&nbsp;<input type="text" name="department"><br><br>
         
         
         <input type="submit"  value="Submit">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <!--End of Modal3 --> 
  
<table border="1px">
<th>Panel_Id</th>
<th>Panel_Name</th>
<th>Department</th>
<%
List<CRM_Panels> list = ofy().load().type(CRM_Panels.class).list();

Iterator<CRM_Panels> itr=list.iterator();
while(itr.hasNext())
{
CRM_Panels value=itr.next();
%>
<tr>
<td><%=value.getPanel_id() %></td>
<td><%=value.getName() %></td>
<td><%=value.getDepartment() %></td>
<td><a href="#" onclick="editPanel()" data-toggle="modal" data-target="#myModal">Edit</a></td>
<td><a href="#" onclick="deletePanel()" data-toggle="modal" data-target="#myModal2">Delete</a></td>

<%}%>
</tr>



</table>

<script>
function editPanel()
{
	e.preventDefault();
	$.ajax({
	type:"POST",
	url:"/enquiry",
	data:$("#formdata").serialize(),
	success:
		{
		
		
		},
	});

}
</script>
</body>
</html>