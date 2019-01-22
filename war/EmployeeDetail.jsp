<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="static com.Login.database.OfyService.*"%>
    <%@ page import="com.Login.Entity.EmployeeAccount" %>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Displaying Employee Information</title>
<style>
 td,th{
  padding:18px;
  }
   table
  {
      margin: 100px auto;
  }
   a{
  background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 10px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 12px;
  }
 </style>
 
</head>

<body>
<center><h1>Displaying Employee Information</h1></center><br>
<center><a href="#"  data-toggle="modal" data-target="#myModal1">Add Employee</a></center>

<!-- Modal1 -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Employee</h4>
        </div>
        <div class="modal-body">
          <%
          int count= ofy().load().type(EmployeeAccount.class).count();
          %>
        <form role="form" id="addpanel" action="/emp" >
         Employee ID:<input type="text" name="emp_id" id="emp_id_id" value="<%=count+1%>"><br><br>
         Employee Contact:<input type="text" name="emp_contact"><br><br>
         Employee Name:&nbsp;&nbsp;&nbsp;<input type="text" name="emp_name"><br><br>
         Department:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="department"><br><br>
         Employee Email:&nbsp;&nbsp;&nbsp;<input type="text" name="emp_email"><br><br>
         Employee Leave:&nbsp;&nbsp;&nbsp;<input type="text" name="emp_leave"><br><br>
         Empployee Extension:&nbsp;&nbsp;&nbsp;<input type="text" name="employee_extension"><br><br>
         <input type="hidden" name="action" value="AddEmployee">
         
         <input type="submit"  value="Save">
         </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <!--End of Modal1 -->
   
  <!-- Modal2 -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit Employee Record</h4>
        </div>
        <div class="modal-body1">
          <form role="form" id="panel" action="/emp" >
        
       &nbsp;&nbsp; Employee Id:&nbsp;&nbsp;<b><span name="employee_id" id="edit_employee_id"></span></b><br><br>
       &nbsp;&nbsp; Employee Name:<input type="text" name="employee_name" id="edit_employee_name"><br><br>
       &nbsp;&nbsp; Department:&nbsp;<input type="text" name="employee_department" id="edit_employee_department"><br><br>
       &nbsp;&nbsp; Employee Email:&nbsp;&nbsp;&nbsp;<input type="text" name="employee_email"id="edit_employee_email"><br><br>
       &nbsp;&nbsp; Employee Leave:&nbsp;&nbsp;&nbsp;<input type="text" name="emp_leave" id="emp_leave_id"><br><br>
       &nbsp;&nbsp; Employee Panel Access:&nbsp;&nbsp;&nbsp;<input type="text" name="emp_panel_access" id="emp_panel_access_id"><br><br>
         <input type="hidden" id="Edit_hiddenid" name="id">
         <input type="hidden" name="action" value="UpdateEditEmployee">
      &nbsp;&nbsp;   <input type="submit"  value="Submit" >
         </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   <!--End of Modal2  -->
   
   <!-- Modal3 -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
      
        </div>
        <div class="modal-body">
  <center><p><b>Are you sure you want to delete this Employee Record?</b></p></center><br><br>
        
  <center><button type="button" name="button1" id="delete_confirmation" class="yes" data-toggle="modal">Yes</button>&nbsp;&nbsp;
     <button type="button" name="button2" data-dismiss="modal">No</button></center>
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   <!--End of Modal3 -->

<table border="1">
<th>Employee ID </th>
<th>Employee Name</th>
<th>Department</th>
<th>Contact</th>
<th>Password</th>
<th>Employee Email</th>
<th>Employee Panel Access</th>
<th>Employee Leave Left</th>

<% 
List<EmployeeAccount> list = ofy().load().type(EmployeeAccount.class).list();
Iterator<EmployeeAccount> itr=list.iterator();
while(itr.hasNext())
{
EmployeeAccount value=itr.next();
%>
<tr id="row<%=value.getPhone()%>">
<td><%=value.getEmp_id()%></td>
<td><%=value.getName() %></td>
<td><%=value.getDepartment() %></td>
<td><%=value.getPhone()%></td>
<td><%=value.getPassword() %></td>
<td><%=value.getWorkemail() %></td>
<td><%=value.getAccess_to_panels() %></td>
<td><%=value.getcasual_leaves()%></td>
<td><a href="#" id="<%= value.getPhone()%>" onclick="editEmployee(this.id)" data-toggle="modal" data-target="#myModal2">Edit</a></td>
<td><a href="#" id="<%= value.getPhone()%>" onclick="deletePanel(this.id)" data-toggle="modal" data-target="#myModal3">Delete</a></td>
<%}%>
</tr>
</table>



<script>
function editEmployee(id)
{
	var edit_id=id;
//	alert(edit_id);
//	e.preventDefault();
      $.ajax({
      type:"GET",
      url:"/emp",
      data:{"id":edit_id,'action':"EditEmployee"},
      success:function(data)
      {
    	 // alert(data);
 
      var obj= JSON.parse(data);
      var emp_id=obj.id;
      var emp_name=obj.emp_name;
      var department=obj.department;
      var emp_email=obj.emp_email;
      var hiddenid=obj.Phone;
      var emp_leave=obj.emp_leave;
      var panel_access=obj.access_to_panels;
//      alert(panel_access);
      
      document.getElementById("edit_employee_id").innerHTML=emp_id;
 //     ($('#edit_employee_id').val(emp_id));
      ($('#edit_employee_name').val(emp_name));
	  ($('#edit_employee_department').val(department));
	  ($('#edit_employee_email').val(emp_email));
      ($('#emp_leave_id').val(emp_leave));
      ($('#emp_panel_access_id').val(panel_access));
      ($('#Edit_hiddenid').val(hiddenid));
      
   
      }
      });

}
</script>
<script>
function deletePanel(id)
{
var delete_id=id;
($('delete_confirmation').val(delete_id));

$(document).on('click','.yes',function(){
$('#myModal3').modal('toggle');	
//alert("hellonew");
  $.ajax({
  type:"GET",
  url:"/emp",
  data:{"id":delete_id,'action':"DeleteEmployee"},
  success:function(){
  $("#row"+id).css("display", "none");
  }

  });
  });		 
  }
	 
</script>


</body>
</html>