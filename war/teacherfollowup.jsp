<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import="com.gharpeshiksha.entity.*" %>
<%@ page import="static com.gharpeshiksha.database.OfyService.*,java.util.* " %>
<%@ page import="com.googlecode.objectify.*" %>
<%@ page import="com.gharpeshiksha.CRMAccess" %>
<% if(session.getAttribute("validuser")==null)
{ response.sendRedirect("myaccount.html");
}else{
	boolean val=false;
	val=CRMAccess.getacess(session.getAttribute("validuser").toString(),session.getAttribute("user").toString(), request.getRemoteAddr());
	EmployeeAccount ea=ofy().load().type(EmployeeAccount.class).filter("emp_id", session.getAttribute("user")).first().now();
if(val)
{%>

<html>
<head>
<title></title>
<meta name="description" content="Get register yourself here for home tuition tutor jobs in Delhi NCR as per subject wise and get instantly job with the help of us.">

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery-1.11.0.min.js"></script>

<!-- Custom Theme files -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!--google fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
	


<!-- //end-smoth-scrolling -->
<script type="text/javascript" src="../js/subjects.js"></script>
<!-- animated-css -->
		<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="../js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<script src="../js/bootstrap.min.js"></script>
<link href="../css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />

</head>
<%TutorDetail tutor=ofy().load().type(TutorDetail.class).id(Long.parseLong(request.getParameter("contact"))).now();

%>
     <style>
      #locationField, #controls {
        position: relative;
        width: 480px;
      }
      #autocomplete {
        position: absolute;
        top: 0px;
        left: 0px;
        width: 99%;
      }
      .label {
        text-align: right;
        font-weight: bold;
        width: 100px;
        color: #303030;
      }
      #address {
        border: 1px solid #000090;
        background-color: #f0f0ff;
        width: 480px;
        padding-right: 2px;
      }
      #address td {
        font-size: 10pt;
      }
      .field {
        width: 99%;
      }
      .slimField {
        width: 80px;
      }
      .wideField {
        width: 200px;
      }
      #locationField {
        height: 20px;
        margin-bottom: 2px;
      }
    </style>
<body>
<div >
	<div class="fixed-header">	

		    <div class="navbar-wrapper">
        
            
		      <div class="container">
              
		        <nav class="navbar navbar-inverse navbar-static-top">
		             <div class="navbar-header">
			              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			                <span class="sr-only">Toggle navigation</span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			              </button>
			              <div class="logo wow slideInLeft" data-wow-delay="0.3s" style="width:80%;height:auto">
			                    <a class="navbar-brand" href="#"><img class="img-responsive" src="../images/new_01.png" style="" /></a>
			              </div>
			          </div>
		            <div id="navbar" class="navbar-collapse collapse">
		            <nav class="cl-effect-1">
		              <ul class="nav navbar-nav">
		               
                 
           
						<li><a href="/signout" class="scroll">Log Out</a></li>						
		              </ul>
		            </nav>
	
	
		            <!-- script-for sticky-nav -->
		
		<!-- /script-for sticky-nav -->

		            </div>
		            <div class="clearfix"> </div>
		             </nav>
		          </div>
		           <div class="clearfix"> </div>
		    </div>
	 </div>
</div>
<!--header end here-->

 

<section >
<div class="container">
<div class="about-top">
<h2>Teacher Follow Up.</h2>
<span class="heading-line"> </span>
				<p></p>
</div>

        <form role="form" action="/teacherfollowup" method="post">
        

            
            <div class="col-xs-12">
   
                <div class="control-group">
                    
                    <label class="control-label" for="password">Tutor ID:</label>
                    <div class="controls">
                   <%if(tutor!=null){ %>
                    <%=tutor.getTut_id()%>
                    <%}else{ %>
                    Unregistered Tutor
                    <%} %><input type="hidden"  <%if(tutor!=null){ %>value="<%=tutor.getTut_id()%>" <%}else{ %>value="0"<%} %> name="tut_id">    
                    </div>
                </div>
     

     
                
          
                
                <div class="control-group">
                    <!-- Username -->
                    <label class="control-label" for="username">Name:</label>
                    <div class="controls">
                       <%if(tutor!=null){ %> <%=tutor.getName()%> <%}else{ %>Unnamed<%} %>
                    <input type="hidden" <%if(tutor!=null){ %>value="<%=tutor.getName()%>" <%}else{%>value="Unnamed"<%}%>name="name">    
                   
                    </div>
                </div>
               
                <div class="control-group">
                    <!-- Username -->
                    <label class="control-label" for="username">Phone Number:</label>
                    <div class="controls">
                      <%=request.getParameter("contact")%>
                    <input type="hidden" value="<%=request.getParameter("contact")%>" name="contact">    
                        
                    </div>
                </div>
                
                 <div class="control-group">
                    <!-- Username -->
                    <label class="control-label" for="username">Message</label>
                    <div class="controls">
                        <input type="text"  required  name="message"  class="input-xlarge">
                    </div>
                </div>
               
                 <div class="control-group">
                    <!-- Username -->
                    <label class="control-label" for="username">Next Follow Up</label>
                    <div class="controls">
                        <input type="datetime-local"  name="nextfollowup"  required class="input-xlarge">
                        <span class="help-block"></span>
                    </div>
                </div> 
               
                <div class="control-group">
                    
                    <label class="control-label" >Conversion Chances</label>
                    <div class="controls">
                       <select name="conversion_chance" id="chances">
      <option   value="0" >0</option>
      <option   value="10" >10</option>
      <option   value="20" >20</option>
      <option   value="30" >30</option>
      <option   value="40" >40</option>
      <option   value="50" >50</option>
      <option   value="60" >60</option>
      <option   value="70" >70</option>
      <option   value="80" >80</option>
      <option   value="90" >90</option>
      <option   value="95" >95+</option>
        </select>
                        <p class="help-block"></p>
                    </div>
                </div>
                
                 <div class="control-group">
                    
                    <label class="control-label" >Payment Status</label>
                    <div class="controls">
                       <select id="status" name="status" >
      <option   value="Not Touched" >Not Touched (Not Called Yet)</option>
      <option   value="Pending" >Pending (Plans or Pricing not pitchted)</option>
      <option   value="In Process" >In Process (Plans Pitched but taking time to think)</option>
      <option   value="Confirm" >Confirm (Client confirmed to make payment)</option>
      <option   value="Not Interested" >Not Interested</option>
      <option   value="Received" >Received</option>
        </select>
                        <p class="help-block"></p>
                    </div>
                </div>
                
                          
             
                                       <button class="btn btn-primary nextBtn btn-lg"  type="submit">Submit</button>        

            </div>
<br><br>
Previous Conversations<br>
       <% List<TeacherFollowUp> followups=ofy().load().type(TeacherFollowUp.class).filter("contact",Long.parseLong(request.getParameter("contact"))).list();
       Collections.reverse(followups);
                    		Iterator<TeacherFollowUp> itr=followups.iterator();
       %>  <table>
      <tr><td style="border: 1px solid black;">Follow Up Date(dd-mm-yyyy)</td><td style="border: 1px solid black;">Message</td><td style="border: 1px solid black;">Conversion Chance(%)</td><td style="border: 1px solid black;">Payment Status</td><td style="border: 1px solid black;">Next Follow Up(yyyy-mm-dd)</td><td style="border: 1px solid black;">Employee ID</td><td style="border: 1px solid black;">Employee Name</td></tr>
      
      <%while(itr.hasNext())
      { TeacherFollowUp tfu=itr.next(); 
      %>
      <tr><td style="border: 1px solid black;"><%=tfu.getFollowupdate()%></td><td style="border: 1px solid black;"><%=tfu.getMessage()%></td><td style="border: 1px solid black;"><%=tfu.getConversion_chance()%></td><td style="border: 1px solid black;"><%=tfu.getStatus()%></td><td style="border: 1px solid black;"><%=tfu.getNextfollowup().replace("T"," ")%></td><td style="border: 1px solid black;"><%=tfu.getEmployee_id()%></td><td style="border: 1px solid black;"><%=tfu.getEmployee_name()%></td></tr>
      <%} %>
      </table>
      
    <%--  <%  itr=followups.iterator();
     TeacherFollowUp tfu=itr.next();
     %>       
     --%>        
<%--  <script>
      $(function() {
    	  $("#chances").val("<%=tfu.getConversion_chance()%>");  	    
    	  <%if(tfu.getStatus()!=null){%> 
    	  $("#status").val("<%=tfu.getStatus()%>");
    	  <%}%> 	
    	  });
      </script>       
 --%>
        
    </form>
</div>
</section>


<!--copy rights start here-->

<div class="copy-right">
	<div class="container">
		 <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
    	    <p>© 2016 Ghar Pe Shiksha. All Rights Reserved | Developed by  <a href="https://www.linkedin.com/in/manish-chawla-0b200510b" target="_blank">Manish Chawla</a> </p>
    	 </div>
    </div>
    <script type="text/javascript">
										$(document).ready(function() {
											/*
											var defaults = {
									  			containerID: 'toTop', // fading element id
												containerHoverID: 'toTopHover', // fading element hover id
												scrollSpeed: 1200,
												easingType: 'linear' 
									 		};
											*/
											
											$().UItoTop({ easingType: 'easeOutQuart' });
											
										});
									</script>
						<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</div>

<!--copy rights end here-->

</body>

</html>

<%}else{out.print("Access is Denied");}} %>  
