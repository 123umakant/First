<%@page import = "java.util.*" %>
<%@page import = "java.security.*" %>
<%@page import = "com.gharpeshiksha.entity.*" %>
<%@page import = "com.googlecode.objectify.*" %>
<%@page import = "static com.gharpeshiksha.database.OfyService.*" %>
<%if(session.getAttribute("login")!=null){ %>

<!DOCTYPE HTML>
<html>
<head>
<title>Ghar Pe Shiksha : Tutor Jobs Delhi | Teachers Vacancy Delhi</title>
<meta name="description" content="Get tutor jobs in Delhi NCR as we are hiring best home tutor for all major subjects and have offer teachers vacancy in Delhi NCR.">
<meta name="theme-color" content="#43c0f6">
<link rel="shortcut icon" href="favicon.png" type="image/x-icon">

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="../js/testimonial.js"></script>
<script src="../js/subjects.js"></script>
<!-- Custom Theme files -->


<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>

<link href="../css/profile.css" rel="stylesheet" type="text/css" media="all"/>

<link href="../css/fontawesome.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">










   
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Simply-Scroll-Starts -->
<script type="text/javascript" 
src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js">
</script>



<script type="text/javascript">
(function($) {
	$(function() { //on DOM ready 
    		$(".scroller").simplyScroll();
	});
 })(jQuery);
</script>

<!--- Style for form Section -->


<!---- Style for Form Section Ends -->

<!-- Simply-Scroll-ends -->
 

<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!--google fonts-->
<!-- Font awesome Cdn-->

<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!-- //end-smoth-scrolling -->


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<!-- animated-css -->
		<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="../js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<script src="../js/bootstrap.min.js"></script>
<link href="../css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-89128249-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- <script src='https://www.google.com/recaptcha/api.js'></script>
 -->
</head>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/58116dbcc7829d0cd36c20e2/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->


<style>
.fa-caret-down:before{content:"\f0d7"}
.fa-caret-up:before{content:"\f0d8"}
.fa-caret-left:before{content:"\f0d9"}
.fa-caret-right:before{content:"\f0da"}
.panel {
    border-radius: 5px;
}
.panel-default {
    border-color: #ddd;
}
.panel-default>.panel-heading {
    color: #000000;
    background-color: #f2f2f2;
    border-color: #03A9F4;
    border-width: 2px;
}
.panel>.panel-heading {
    border-radius: 0px;
    font-size: 18px;
}
.profile_cat li.pf_row {
    padding: 5px 0px;
    overflow: hidden;
    clear: both;
}
.profile_cat li .field {
    width: 35%;
    float: left;
    word-wrap: break-word;
}
.profile_cat li .field_answer {
    width: 65%;
    float: left;
    word-wrap: break-word;
}
.profile_cat li .field label {
    font-size: 14px;
    color: #575757;
    white-space: normal;
    background: #f2f2f2;
    border-radius: 0px;
    font-weight: bold;
    padding: 5px 9px;
}
</style>
  <%       
       ofy().clear();
  TutorDetail tut = ofy().load().type(TutorDetail.class).id(((Long)session.getAttribute("tutor")).longValue()).now();
           TutorServices ts=ofy().load().type(TutorServices.class).id(tut.getContact()).now();
    
           %>


<style>
.rowspace{
 border-collapse: separate;
    border-spacing: 0 1em;
    }
</style>
<body style = "background: #f0f0f0;">

	<section class="user-profile">
	
	<div class="row ">
		<div style="margin-top:3%;">

		<div class="prof-white">
	 
          
		<div class=" col-xs-12" >
<script>

function classforme(){
	// alert("hello");
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	      document.getElementById("changeThis").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "teacher-profile/classForMe.jsp?pagenum=1", true);
	  xhttp.send();
	
}
</script>	

 
	<div  style="margin-bottom:35px;background: #fff" id ="changeThis">	
			<div class="col8-back-colr" style="padding-right:0px;padding-left:0px;">

				<div class="edit-btn" style="margin-bottom: 50px;">
              <div style="float: right; width: 50%;  ">
                <a  
               	class="btn sty-btn btn-xs" style="font-size: 16px; padding: 4px 8px; 
               	background-color: #f89c2c; color: white; float: right; "  href="teacher-profile/updatelocation1.jsp"> <i class="fa fa-pencil-alt append-icon" style="margin-right: 7px; "></i>Update Location</a>
               	</div>

              <div style="float: left; width: 50%;  ">
                <a  
               	class="btn sty-btn btn-xs" style="font-size: 16px; padding: 4px 8px; 
               	background-color: #f89c2c; color: white; float: left; " href="teacher-profile/editprofile1.jsp"> <i class="fa fa-pencil-alt append-icon" style="margin-right:7px;" ></i>Edit</a>
               	</div> 
               </div>


	
		   <div >
		   <div  style="padding-left: 0px;">


                 

              <div style="margin-bottom: 1.5%;">
           	 <i class=" fa fa-user-tie  " style="font-size:280%; color:#00bcd4"></i> <span class="profi-abt sub-size" style="font-weight: 50; font-size: 20px;" ><b>ABOUT</b></span> </div>
            
              

           </div>
         

           

           <div class="col-md-6" style="padding-left: 15px;">
           <table class="rowspace table-responsive">
           <tr>
           <td valign="top"><b>Name:</b></td>
           <td><%=tut.getName() %></td>
           </tr>
           <tr>
           <td valign="top"><b>Gender:</b></td>
           <td><%=tut.getGender()%></td>
           </tr>
           <tr>
           <td valign="top"><b>Contact Number.:</b></td>
           <td><%=tut.getContact()%></td>
           </tr>
           <tr>
           <td valign="top"><b>Current Address:</b></td>
           <td><%=tut.getCurrent_add()%></td>
           </tr>
           </table>
           </div>
           	<div class="col-md-6" style="padding-left: 15px;">
           <table class="rowspace table-responsive">
           <tr>
           <td valign="top"><b>Email:</b></td>
           <td><%=tut.getEmail() %></td>
           </tr>
           <tr>
           <td valign="top"><b>D.O.B:</b></td>
           <td><%=tut.getDob()%></td>
           </tr>
           <tr>
           <td valign="top"><b>Alternate Contact Number:</b></td>
           <%if(tut.getAlt_contact()!=null){ %><td><%=tut.getAlt_contact()%></td>
         <%}else{ %><td></td><%} %>  </tr>
           <tr>
           <td valign="top"><b>Permanent Address:</b></td>
           <td><%=tut.getPermanent_add()%></td>
           </tr>
           </table>
           </div>
            
           
                    
            </div> 
           


           <!--================= New About Ends =====================---><br>

     
           <!--========== New Experience and Education Start -->

          <div class="col-xs-12">  
          <div class="col-xs-6" style="margin-top: 50px;padding-left: 0px;">
          	<i class="fa fa-file-alt  profile-icon-1" style="font-size: 220%;"></i> 
     	<span class="exp-size" style="font-size: 20px;"> <b>EXPERIENCE</b></span>

     	<div class="exp-sty"><i class="fa  fa-check-circle" style="color:#00bcd4;"></i><%if(tut.getExperience()==0){ %>Fresher<%}else{ %><%=tut.getExperience()%> year Experience<%} %></div>
          </div>

          <div class=" col-xs-6" style="margin-top: 50px;padding-left: 0px;" >

           <div style="margin-bottom: 1.5%;"> <i class="fa fa-trophy  profile-icon-2" style="font-size: 220%;"></i> 
     	 <span class="edu-size" style="font-size: 20px;" > <b>EDUCATION</b></span> </div>
     	
     	 	<table class="table-responsive">
     	 		<tr><td><i class="fa  fa-arrow-alt-circle-right edu-first" style="color:#00bcd4;"></i> </td> <td><span><%=tut.getQualification() %></span></td></tr>
     	 
     	 		
     	 
     	 	
     	     	</table>
          </div>
</div>
                                                                
          <!--========== Experience and Education New End -->
          


                <% List<Subjects> subjects = ofy().load().type(Subjects.class).filter("tutor",Ref.create(tut)).list(); 
          Iterator<Subjects> sub = subjects.iterator();
          
          Plans pl = ofy().load().type(Plans.class).filter("tutor", Ref.create(tut)).first().now();
          %>

<br><br>
<div class="col-xs-12" style="margin-top:50px;">
<i class="fa fa-book-open" style="font-size: 220%; color:#00bcd4;"></i><span class="exp-size" style="font-size:20px;"> <b>PREFERENCES</b></span>

      <table class="rowspace table-responsive">
      <tr>
      <td valign="top"><b>Teaching Mode:</b></td>
      <td><%=Arrays.toString(tut.getTeaching_mode()) %></td>
      </tr>
      <tr>
      <td valign="top"><b>Course & Subjects:</b></td>
      <td>     	<table class="rowspace table-responsive">
          		<% 
          		while (sub.hasNext()) {
          			Subjects subject = sub.next();
          			
          			%>
          		 
          		<tr><td><%= subject.getCourse()%></td>
          		         <td><%= Arrays.toString(subject.getSubjects()) %></td></tr>

<% } %>
          		
          		
          	
          		         
          	</table>
</td>
      </tr>
      </table>

          </div>


<div class="col-xs-12" style="margin-top:50px;">
<i class=" fa fa-user" style="font-size:280%; color:#00bcd4"></i> <span class="exp-size" style="font-size: 20px;"><b>MY ACCOUNT DETAILS</b></span>

      <table class="rowspace table-responsive">
      <tr>
      <td valign="top"><b>Subscription Details:</b></td>
      <%if(pl==null){ %><td>You are a non paid member. <a href="#plans" data-target="#plans" data-toggle="modal">Upgrade your Membership to get classes.</a></td>
     <%}else{ %>
     <td><table class="rowspace table-responsive">
     <%if(pl.getExpirytimestamp()<System.currentTimeMillis()){ %>
      <tr><td valign="top">Profile Status:</td><td style="color:#d50000;">Expired <a href="#plans" data-target="#plans" data-toggle="modal">(Renew Plan)</a></td><tr>
   <%}else{%>
      <tr><td valign="top">Profile Status:</td><td style="color:green;">Active</td><tr>
   <%} %>
    <tr><td valign="top">Plan Name</td><td><%=pl.getPlan() %></td><tr>
    <tr><td valign="top">Amount Paid</td><td><%=pl.getAmount() %></td><tr>
    <tr><td valign="top">Expiry Date</td><td><%=pl.getExpiry_date()%></td><tr>
    <%if(!(pl.getContact_views()==0)){ %>
    <tr><td valign="top">Contact Views Remaining</td><td><%=pl.getContact_views()%></td></tr>
     <%}else{%>
    <tr><td valign="top">Contact Views Remaining</td><td style="color:#d50000;"><%=pl.getContact_views()%> <a href="#plans" data-target="#plans" data-toggle="modal">(Renew Plan)</a></td></tr> 
     <%} %> 
     </table>
     </td>
     <%}%>
     
      </tr>
      <tr>
      <td><b>Enquiries Notify through:</b></td>
      <td valign="top"><%if(ts.getNotifications()==null){ %>
    SMS and Email <a data-target="#confirm" data-toggle="modal" href="#confirm">Unsubscribe me from SMS and Email</a>
    <%}else{ %>
    <a data-target="#subscribeconfirm" href="#subscribeconfirm" data-toggle="modal">Subscribe me SMS and Email Notifications</a>
    <%}%></td>
      </tr>
      <tr>
      				<%  
					ArrayList<Long> list = new ArrayList<Long>(ts.getClasses_sent());
  if(list!=null){Collections.reverse(list);
  list.remove(list.size()-1);
  }
  
  %> 
      <td valign="top"><b>Enquiry Notified <%if(ts.getClasses_sent()!=null){%>(<%=ts.getClasses_sent().size()-1%>)<%} %>:</b></td>
      <td><% if(list!=null){%>
    <% for(long l: ts.getClasses_sent()){
                        	if(l!=1){
                        		if(l>=2283){%>
                        <a href="../enquirycontactdetails.jsp?id=<%=l%>"><%=l%></a>,
                        <%}else{
                        %>	
                      <%=l%>,
                       <% }
                        	}}}%></td>
      </tr>
      <tr>
      <td valign="top"><b>Enquiry Viewed <%if(ts.getContacts_viewed()!=null){%>(<%=ts.getContacts_viewed().size()-1%>)<%} %>:</b></td>
      <td><% if(ts.getContacts_viewed()!=null){%>
    <% for(long l: ts.getContacts_viewed()){
                        	if(l!=1){
                        		if(l>=2283){%>
                        <a href="../viewcontact.jsp?id=<%=l%>"><%=l%></a>,
                        <%}else{
                        %>	
                      <%=l%>,
                       <% }
                        	}}}%></td>
      </tr>
                		 		         
          	</table>

          </div>
                     </div>
 
          </div>

		</div>


		
           
	</div> <!--Ends here-->
	</div>
	</div> <!-- Main row ends here-->


			
	         			
		
		
	 


</section>
		

<style>
.glyphicon-ok {
    color: green;
}
</style>

                                <div id="plans" class="modal fade" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h3 class="modal-title text-center" style="color:#006e96">
                                                    <img src="../image/view.png" />
                                                </h3>
                                            </div>





                                            <div class="modal-body">
                                                <div class="container">

                                                    <div class="row row-content">
                                                        <div class="col-md-4 no-break text-center">
                                                            <div class="glyphicon glyphicon-ok"></div>Students Contact View</div>
                                                        <div class="col-md-4 no-break text-center">
                                                            <div class="glyphicon glyphicon-ok"></div>No Commission</div>
                                                        <div class="col-md-4 no-break text-center">
                                                            <div class="glyphicon glyphicon-ok"></div>Email,SMS Alerts</div>

                                                    </div>

                                                </div>
                                                <hr>
                                                <br>
                                                <!-- Plans -->
                                                <section id="plans">
                                                    <div class="container">
                                                        <div class="row">

     
                                                            <!-- item -->
                                                            <div class="col-md-4 text-center">
                                                                <div class="panel panel-danger panel-pricing" style="border-color:#b8d7ef;">
                                                                    <div class="panel-heading" style="color:#2d73a8;background:#d5e0e8;border-color:#b8d7ef;">
                                                                         
                                                                        <h3>Bronze Plan</h3>
                                                                    </div>
                                                                    <style>
                                                                        .no-family {}
                                                                    </style>


                                                                    <div class="panel-body text-center">
                                                                        <p>
                                                                                <i class="fas fa-rupee-sign" style="font-size: 26px; color:#337ab7; "></i>      
                                                                            
                                                                            <strong style="color:#337ab7;font-size:32px;   class="no-break no-family;">  3000</strong>
                                                                        </p>
                                                                    </div>
                                                                    <ul class="list-group text-center">
                                                                        <li class="list-group-item">
                                                                            <!-- <i class="fa fa-check"></i> -->
                                                                            20 Student Contact Views</li>
                                                                        <li class="list-group-item">
                                                                            
                                                                            <strong>Validity:</strong> 180 days</li>
                                                                        <li class="list-group-item">
                                                                           
                                                                            <strong>Response:</strong> Standard</li>
                                                                        <li class="list-group-item">
                                                                            <i class=" "></i>-</li>
                                                                        <li class="list-group-item">
                                                                            <i class=" "></i>-</li>
                                                                    </ul>
                                                                    <div class="panel-footer">
                                                                        <a class="btn btn-lg btn-block btn-primary" href="payment.jsp?amt=3000&tut_id=<%=tut.getTut_id()%>">BUY NOW</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /item -->

                                                            <!-- item -->
                                                            <div class="col-md-4 text-center">
                                                                <div class="panel panel-warning panel-pricing">
                                                                    <div class="panel-heading">
                                                                         
                                                                        <h3>Gold Plan</h3>
                                                                    </div>
                                                                    <div class="panel-body text-center">
                                                                        <p>
                                                                                <i class="fas fa-rupee-sign" style="font-size:26px;
                                                                                 color:#f0ad4e;"></i>
                                                                            <strong style="color:#f0ad4e;font-size:32px;" class="no-break">
                                                                             4000</strong>
                                                                        </p>
                                                                    </div>
                                                                    <ul class="list-group text-center">
                                                                        <li class="list-group-item">
                                                                            <!-- <i class="fa fa-check"></i> -->
                                                                            30 Student Contact Views</li>
                                                                        <li class="list-group-item">
                                                                             
                                                                            <strong>Validity:</strong> 180 days</li>
                                                                        <li class="list-group-item">
                                                                                                                                                        <strong>Response:</strong> X 3 times</li>
                                                                        <li class="list-group-item">
                                                                            <!-- <i class="fa fa-check"></i> -->
                                                                            <div class="no-break">
                                                                                <div class="glyphicon glyphicon-ok"></div>Suggested Tutor Tag</div>
                                                                        </li>
                                                                        <li class="list-group-item">
                                                                            <i class=" "></i>-</li>
                                                                    </ul>
                                                                    <div class="panel-footer">
                                                                        <a class="btn btn-lg btn-block btn-warning" href="payment.jsp?amt=4000&tut_id=<%=tut.getTut_id()%>">BUY NOW</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /item -->

                                                            <!-- item -->
                                                            <div class="col-md-4 text-center">
                                                                <div class="panel panel-success panel-pricing">
                                                                    <div class="panel-heading">
                                                                         
                                                                        <h3>Platinum Plan</h3>
                                                                    </div>
                                                                    <div class="panel-body text-center">
                                                                        <p>
                                                                                <i class="fas fa-rupee-sign" style="font-size: 26px; color:#449d44; "></i>
                                                                            <strong style="color:#449d44;font-size:32px;" class="no-break">
                                                                                 5000</strong>
                                                                        </p>
                                                                    </div>
                                                                    <ul class="list-group text-center">
                                                                        <li class="list-group-item">
                                                                             40 Student Contact Views</li>
                                                                        <li class="list-group-item">
                                                                            
                                                                            <strong>Validity:</strong> 180 days</li>
                                                                        <li class="list-group-item">
                                                                                                                                                         <strong>Response:</strong> X 7 times</li>
                                                                        <li class="list-group-item">
                                                                            <!-- <i class="fa fa-check"></i> -->
                                                                            <div class="no-break">
                                                                                <div class="glyphicon glyphicon-ok"></div>Suggested Tutor Tag</div>
                                                                        </li>
                                                                        <li class="list-group-item">
                                                                            <!-- <i class="fa fa-check"></i> -->
                                                                            <div class="no-break">
                                                                                <div class="glyphicon glyphicon-ok"></div>15 Minutes early notification</div>
                                                                        </li>
                                                                    </ul>
                                                                    <div class="panel-footer">
                                                                        <a class="btn btn-lg btn-block btn-success" href="payment.jsp?amt=5000&tut_id=<%=tut.getTut_id()%>">BUY NOW</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /item -->

                                                        </div>
                                                    </div>


                                                </section>
                                                <!-- /Plans -->

                                            </div>
                                            <div class="modal-footer" style="text-align:center;background:#eee;">
                                                Need Help? Call
                                                <strong style="color:#008bcf">7065-8065-65</strong> Mon to Sat, 10am to 7pm or Mail us
                                                <strong style="color:#008bcf">info@gharpeshiksha.com</strong>
                                            </div>
                                        </div>

                                    </div>
                                </div>
 




<script>
function getid(clicked_id)
{ 
document.getElementById("confirmid").value = clicked_id;
}
function getidformsg(clicked_id)
{
	document.getElementById("idforphone").value = clicked_id;
	}
function getidforemail(clicked_id)
{ document.getElementById("idforemail").value = clicked_id;
	}
</script>

</body>
</html>
<%}else{
	response.sendRedirect("https://gharpeshiksha.com/tutor-section.jsp");
} %>
  
