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
  padding:30px;
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
  table
  {
      margin: 100px auto;
  }
  </style>
</head>
<body>
<center><h1 >Displaying Panel Data</h1></center>


<center><a href="#"  data-toggle="modal" data-target="#myModal1">Add Panel</a></center>


<!-- Modal1 -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Panel</h4>
        </div>
        <div class="modal-body">
        <form role="form" id="addpanel" action="\crm" >
         Panel Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="panel_id"><br><br>
         Panel Name:<input type="text" name="panel_name"><br><br>
         Department:&nbsp;<input type="text" name="department"><br><br>
         <input type="hidden" name="action" value="AddPanel">
         
         <input type="submit"  value="Submit">
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
          <h4 class="modal-title">Edit Panel</h4>
        </div>
        <div class="modal-body1">
          <form role="form" id="editpanel" action="/crm" >
         Panel Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="panel_id" id="modal_panel_id"><br><br>
         Panel Name:<input type="text" name="panel_name" id="modal_panel_name"><br><br>
         Department:&nbsp;<input type="text" name="department" id="modal_department"><br><br>
         
         <input type="hidden" id="modal_hiddenid" name="id">
         <input type="hidden" name="action" value="UpdateEditPanel">
         <input type="submit"  value="Submit" >
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
  <center><p><b>Are you sure you want to delete this panel?</b></p></center><br><br>
        
<center><button type="button" name="button1" id="delete_confirmation" class="yes" data-toggle="modal">Yes</button>&nbsp;&nbsp;
     <button type="button" name="button2">No</button></center>
        
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
long id=value.getId();
//System.out.println(id);
%>
<tr id="row<%=value.getId()%>">
<td><%=value.getPanel_id() %></td>
<td><%=value.getName() %></td>
<td><%=value.getDepartment() %></td>
<td><a href="#" id="<%= value.getId()%>" onclick="editPanel(this.id)" data-toggle="modal" data-target="#myModal2">Edit</a></td>
<td><a href="#" id="<%= value.getId()%>" onclick="deletePanel(this.id)" data-toggle="modal" data-target="#myModal3">Delete</a></td>

<%}%>
</tr>

</table>



<script>
function editPanel(id)
{
	var edit_id=id;
	alert(edit_id);
//	e.preventDefault();
      $.ajax({
      type:"GET",
      url:"/crm",
      data:{"id":edit_id,'action':"EditPanel"},
      success:function(data)
      {
    	  alert(data);
   //   var obj=data;
      var obj= JSON.parse(data);
      var panel_id=obj.panel_id;
      var panel_name=obj.panel_name;
      var department=obj.department;
      var hiddenid=obj.id;
    
      alert(panel_id);
      alert(panel_name);
      alert(department);
      alert(hiddenid);
   //   $(".modal-body #panel_id").val(panel_id);
      ($('#modal_panel_id').val(panel_id));
	  ($('#modal_panel_name').val(panel_name));
	  ($('#modal_department').val(department));
	  ($('#modal_hiddenid').val(hiddenid));
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
  url:"/crm",
  data:{"id":delete_id,'action':"DeletePanel"},
  success:function(){
  $("#row"+id).css("display", "none");
  }

  });
  });		 
  }
	 
</script>


</body>
</html>