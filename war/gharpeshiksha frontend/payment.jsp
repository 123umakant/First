<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import="com.gharpeshiksha.entity.*" %>
<%@ page import="static com.gharpeshiksha.database.OfyService.*,java.util.* " %>
<%@ page import="com.googlecode.objectify.*,java.text.DateFormat,java.text.SimpleDateFormat,java.sql.Timestamp" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Ghar Pe Shiksha : Online Payment for Tuition Fees, Tutor Registration Fees</title>
<meta name="description" content="We provide very easy online payment options for both of our student for Tuition fees and our tutors for registration fees at one place.">
<meta name="theme-color" content="#43c0f6">
<link rel="shortcut icon" href="favicon.png" type="image/x-icon">

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/testimonial.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!--google fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!-- //end-smoth-scrolling -->
<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<script src="js/bootstrap.min.js"></script>
<link href="css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-89128249-1', 'auto');
  ga('send', 'pageview');

</script>

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
			                    <a class="navbar-brand" href="index.html"><img class="img-responsive" src="images/new_01.png" style="" /></a>
			              </div>
			          </div>
		            <div id="navbar" class="navbar-collapse collapse">
		            <nav class="cl-effect-1">
		              <ul class="nav navbar-nav">
		               <li><a href="index.html" class="active scroll">Home</a></li>
		                
                      
                        
				
           
												
		              </ul>
		            </nav>
		            <!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header").addClass("fixed");
				}else{
					$(".header").removeClass("fixed");
				}
			 });
			 
		});
		</script>
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
<div class="about-top">
<h2>Online Payment</h2>
<span class="heading-line"> </span>
				<p>Save Time.</p>
</div>
<% String id=request.getParameter("tut_id");
				TutorDetail tutor=null;			
String amt=request.getParameter("amt");	
String plan="";

				if(id!=null){	
Long tut_id=Long.parseLong(id);
tutor=ofy().load().type(TutorDetail.class).filter("tut_id", tut_id).first().now();
			}
				if(amt!=null){
					if(amt.equals("3000"))
						plan="Bronze Plan 20 Contact Views";
					else if(amt.equals("4000"))
						plan="Gold Plan 30 Contact Views";
					else if(amt.equals("5000"))
						plan="Platinum Plan 40 Contact Views";
				}
				%>
<section id="registration-page" class="container">

<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				      <h1 style="text-align:center;margin-bottom:20px;">Pay Now</h1>
					<form class="" name="payform" method="post" onsubmit="return validate();" action="paytmRedirect.jsp">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" <%if(tutor!=null){ %>value="<%=tutor.getName()%>"<%} %>/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="email" class="form-control" name="EMAIL" id="email"  placeholder="Enter your Email" <%if(tutor!=null){ %>value="<%=tutor.getEmail()%>"<%} %>/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="phone" class="cols-sm-2 control-label">Your Phone Number</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="MOBILE_NO" id="phone"  placeholder="Enter your Phone Number" <%if(tutor!=null){ %>value="<%=tutor.getContact()%>"<%}%>/>
								</div>
							</div>
						</div>
<div id="err"></div>
						<div class="form-group">
							<label for="amount" class="cols-sm-2 control-label">Purpose for Payment</label>
							<div class="cols-sm-10">
								<div class="input-group">
								
									<span class="input-group-addon"><i class="fa fa-info-circle fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" disabled value="<%=plan%>"  />
								<input type="hidden" class="form-control"  value="<%=plan%>" />
										
									
								</div>
							</div>
						</div>

			<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Package Amount</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-rupee fa-lg" aria-hidden="true"></i></span>
			
						
								<input type="number" class="form-control" disabled value="<%=amt%>" id="pkg_amount"   />		
								</div>
							</div>
						</div>
						
									<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Apply Coupon Code (if any)</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-tag fa-lg" aria-hidden="true"></i></span>
							<input type="text" class="form-control"  id="code" />		
								<span class="input-group-addon"><a onclick="sendInfo()">Apply</a></span>
								</div>
							</div>
						</div>

<div id="message"></div>
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Net Amount to be Paid</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-rupee fa-lg" aria-hidden="true"></i></span>
			
						<%if(amt==null){ %>		 <select class="form-control" name="TXN_AMOUNT" id="amount">
                                    <option value="" >--Select Plan--</option>
                                    <option value="3000">&#8377 3000 Bronze Plan 20 Student Contact Views</option>
                                    <option value="4000">&#8377 4000 Gold Plan 30 Student Contact Views</option>
                                    <option value="5000">&#8377 5000 Platinum Plan 40 Student Contact Views</option>
								</select>
								<%}else{ %>
								<input type="number" class="form-control" id="final_amt" disabled value="<%=amt%>"    />
								<input type="hidden" class="form-control" id="final_amthidden" value="<%=amt%>" name="TXN_AMOUNT"   />
									
								<%} %>
								</div>
							</div>
								<div id="error" style="color:red;"></div>
							
						</div>
						
						 

						<div class="form-group ">
							<input  type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button" value="Proceed to Pay" >
						</div>
						
					</form>
				</div>
			</div>

		</div>

 </section>
 <script>
 var req,resp;
 function sendInfo()
 {
	 var phone= document.getElementById("phone").value;
	 var code= document.getElementById("code").value;
	 	var url="ajax/couponcode.jsp?phone="+phone+"&code="+code;
	 	
	 	if(phone=="")
	 		{
	 	   document.getElementById('err').style.color = "rgba(247, 0, 0, 0.98)";
	       document.getElementById('err').innerHTML="Please Enter Mobile Number";  	
	 		return false;
	 		}else
	 			{
	 	if(window.XMLHttpRequest){  
		 	req=new XMLHttpRequest();  
		 	}  
		 	else if(window.ActiveXObject){  
		 	req=new ActiveXObject("Microsoft.XMLHTTP");  
		 	}  
		 	  
		 	try  
		 	{  
		 	req.onreadystatechange=getInfo;  
		 	req.open("GET",url,true);  
		 	req.send();  
		 	}  
		 	catch(e)  
		 	{  
		 	alert(e);  
		 	}  
	 			}
 }
 function getInfo(){  
	   if(req.readyState==4){  
		   var obj = JSON.parse(this.responseText);
	    	 if(obj.Status=='Success')
	       {   document.getElementById('message').style.color = "rgb(0, 255, 0)";
	       document.getElementById('message').innerHTML=obj.Message;  	 
	       var pkg_amount=document.getElementById('pkg_amount').value;
	       var amount_tobepaid=pkg_amount-obj.Discount;
	       
	       document.getElementById('final_amt').value=amount_tobepaid;  	 
	       document.getElementById('final_amthidden').value=amount_tobepaid;  	 
	       }else{
	    	   document.getElementById('message').style.color = "rgba(247, 0, 0, 0.98)";
		       document.getElementById('message').innerHTML=obj.Message;  	
	       }
		   	       
	       } 
	   }  

 </script>
 
  <script>
  function validate(){
	  
	  var amt=document.getElementsByName("TXN_AMOUNT")[0].value;
	  if(amt=="")
		  {
		   document.getElementById('error').style.color = "rgba(247, 0, 0, 0.98)";
	       document.getElementById('error').innerHTML="Select Package Plan";  	
      return false;  
		  }
	/*   if(!amt.length>0)
	  { alert("Select plan");
	  return false;
	  }
	  else 
		  return true;
	 */  
  }
  </script>
  <style>
  #playground-container {
    height: 500px;
    overflow: hidden !important;
    -webkit-overflow-scrolling: touch;
}
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	font-family: 'Oxygen', sans-serif;
	    background-size: cover;
}

.main{
 	margin:0px 15px 20px 15px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}
.form-control {
    height: auto!important;
padding: 8px 12px !important;
}
.input-group {
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    -moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
}
#button {
    border: 1px solid #ccc;
    margin-top: 28px;
    padding: 6px 12px;
    color: #666;
    text-shadow: 0 1px #fff;
    cursor: pointer;
    -moz-border-radius: 3px 3px;
    -webkit-border-radius: 3px 3px;
    border-radius: 3px 3px;
    -moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    -webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    box-shadow: 0 1px #fff inset, 0 1px #ddd;
    background: #f5f5f5;
    background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
    background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
}
.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 10px 40px;
	background:#009edf;
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
span.input-group-addon i {
    color: #009edf;
    font-size: 17px;
}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}
  
  </style>
    
  
<!-- Modal -->
<div id="terms" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Terms and Conditions</h4>
      </div>
      <div class="modal-body">
 <!--       <table>
<br>
<tr><td valign="top">1.</td><td>Tutor Profile Activation Charges are as follows:<table class="col-md-12 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
        				<th>Plan Name</th>
        				<th>Amount</th>
        				<th>Credits</th>
        				<th >Validity</th>
        			</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td >Bronze Plan</td>
        				<td >&#8377 1999</td>
        				<td >5</td>
        				<td >6 Months</td>
        			</tr>
        			<tr>
        				<td >Gold Plan</td>
        				<td >&#8377 3499</td>
        				<td >10</td>
        				<td >12 Months</td>
        			</tr>
        			<tr>
        				<td >Platinum Plan</td>
        				<td >&#8377 5999</td>
        				<td >20</td>
        				<td >24 Months</td>
        			</tr>
        			</tbody>
        			</table>
        			<br>
        			1 credit is equal one student connect.<br>
        			<strong>Credit will not be deducted if demo class successful and payment is made by parents.</strong>
        			</td></tr>
 
<tr><td valign="top">2.</td><td> Commission (applied for all tuitions provided by us or referred by any of our clients) <br>
<table class="col-md-12 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
        				<th>Plan Name</th>
        				<th>Till 24 sessions</th>
        				<th >After 24 sessions</th>
        			</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td >Bronze Plan</td>
        				<td >50%</td>
        				<td ><strong>0%</strong></td>
        			</tr>
        			<tr>
        				<td >Gold Plan</td>
        				<td >40%</td>
        				<td ><strong>0%</strong></td>
        			</tr>
        			<tr>
        				<td >Platinum Plan</td>
        				<td >30%</td>
        				<td ><strong>0%</strong></td>
        			</tr>
        			</tbody>
        			</table>
Short term packages (Less than 24 	Sessions, Crash Courses, Package Course, College Level 
etc.): <strong>Commission of Only 30% of total amount received</strong></td></tr>
<tr><td valign="top">3.</td><td> In case,if we fail to arrange a single demo for you in 3 months,you can demand refund after 3 months.In all other cases amount is non refundable.
</td></tr>

<tr><td valign="top">4.</td><td>Tutors have to submit copy of their Address Proof (Adhaar/ Voter ID/ Passport/ DrivingLicense Etc.) , Two coloured passport size photograph and last obtained educational qualification. </td></tr>

<tr><td valign="top">5.</td><td>The activation fee will not be refundable and non-transferable in any case..</td></tr> 

<tr><td valign="top">6.</td><td>Fees will be collected from the clients by GHAR PE SHIKSHA only.</td></tr> 

<tr><td valign="top">7.</td><td>If any tuition provided to you continues for the next year (after completing one full year) or any new tuition provided/referred by OUR CLIENT, the tutor has to pay the commission as applied in Point no- (2). 
<br></td></tr>
<tr><td valign="top">8.</td><td>We provide Classes through SMS and Emails, Tutors have to submit request for the class from their profile We consider all teacher's request for a particular class and allot the class to best teacher matching the parents requirements.<br></td></tr> 

<tr><td valign="top">9.</td><td>If any client calls a tutor after a gap of few days/weeks/months of the trial class then it’s the duty of the tutor also to update us about that.</td></tr> 

<tr><td valign="top">10.</td><td>When we provide any tuition to any tutor then you must please contact the client 
immediately and inform us about the developments as early as possible.</td></tr> 

<tr><td valign="top">11.</td><td>Teachers (tutors) are requested not to indulge in any activity other than tutoring such as taking money for admission in any college/ school/ institutions or any fraud proposal.</td></tr> 

<tr><td valign="top">12.</td><td>In case of any fraud by teachers (tutors) with any client or with GHAR PE SHIKSHA then we are free to take legal action against him/her.</td></tr> 

<tr><td valign="top">13.</td><td>Tutors are requested to please update us immediately about their present address and phone/mobile number if changed and are requested to provide your ID proof to clients if demanded by them. </td></tr>

<tr><td valign="top">14.</td><td>Registration & Activation will be stands cancelled if Tutor Not Respond us properly about the given classes.</td></tr> 

<tr><td valign="top">15.</td><td>Tutors are requested to be punctual and behave/talk/dress up as a Gentleman/lady while visiting to any client for trial or regular class.</td></tr> 

<tr><td valign="top">16.</td><td>GHAR PE SHIKSHA reserves the right to modify / add / delete any condition at any time. </td></tr>

<tr><td valign="top">17.</td><td>All Disputes are subject to Delhi Jurisdiction Only. </td></tr></table>
 -->
 	<div id="terms">
		
<table><br><tr><td valign="top">1.</td><td>Tutors need to take membership plans to access contact details of the Parents.</td></tr> <tr><td valign="top">2.</td><td>The membership amount will not be refundable and nontransferable any case.<br></td></tr><tr><td valign="top">3.</td><td>We provide Classes through SMS and Emails, for maximum benefit tutor should view contact and call parents as soon as possibe.</td></tr> <tr><td valign="top">4.</td><td>Gharpeshiksha will not interfere in any kind of fees discussion with the parents, tutors need to discuss self with the parents.</td></tr> <tr><td valign="top">5.</td><td>We are providing our services in Delhi area and enquiries will be notified for your preferred subjects and within radius of your mapped location.</td></tr><tr><td valign="top">6.</td><td>Details of particular enquiry may share with multiple teachers so the parents have options to select the best teacher for their child, Teachers advised responding quickly to get better results.</td></tr><tr><td valign="top">7.</td><td>The information of enquiry on the website will not be provided offline to any registered tutors.</td></tr><tr><td valign="top">8.</td><td>Contact details of the parents should be used for the purpose of providing Tuition classes by you only & should not be shared/used with/for any other person/purpose otherwise tutor will be penalised.</td></tr> <tr><td valign="top"valign="top">9.</td><td>Teachers (tutors) are requested not to indulge in any activity other than tutoring such as taking money for admission in any college/ school/ institutions or any fraud proposal.</td></tr> <tr><td valign="top">10.</td><td>For any kind of support, tutor need to email us on <strong>info@gharpeshiksha.com</strong></td></tr> <tr><td valign="top">11.</td><td>Tutors are requested to please update us immediately about their present address and phone/mobile number if changed and are requested to provide your ID proof to clients if demanded by them.</td></tr><tr><td valign="top">12.</td><td>We don't give any guarantee to provide the classes in fluency to the tutors, its an online portal tutor can view contacts of any available enquiries as per their membership plans.</td></tr> <tr><td valign="top">13.</td><td>We will not responsible for any inconvenience by the parents as enquiries coming directly to our website, we do not have any relation with the parents.</td></tr> <tr><td valign="top">14.</td><td>GHAR PE SHIKSHA reserves the right to modify / add / delete any condition at any time. </td></tr><tr><td valign="top">15.</td><td>All Disputes are subject to Delhi Jurisdiction Only. </td></tr></table></div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

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