<%@ page import ="java.io.*,java.util.*"%>;
<%@ page import ="java.io.File.*"%>;
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="static com.Login.database.OfyService.*"%>
<%@ page import="com.Login.Entity.Login_Details"%>

<html>
<body>
<h1>Displaying Username Password</h1> 
      <table border ="1" width="500" align="center"> 
      <h1>Username And Password</h1>
     <%List<Login_Details> list=ofy().load().type(Login_Details.class).list();
     Iterator<Login_Details> i = list.iterator();
   
     while(i.hasNext())
     {
    	Login_Details ld=i.next();
    %>
        <tr bgcolor="00FF7F"> 
         <th><b><%=ld.getUsername()%></b></th> 
         <th><b><%=ld.getPassword() %></b></th> 
        </tr> 
    <%} %>
     
        
        	 </table>
     </body>
     </html>