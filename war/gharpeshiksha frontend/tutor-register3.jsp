<%@ page import="com.gharpeshiksha.entity.*" %>

<%@ page import="static com.gharpeshiksha.database.OfyService.*,java.util.* " %>

<!DOCTYPE HTML>
<html>
<% if(session.getAttribute("login")==null)
{ response.sendRedirect("tutor-section.jsp");
}else{
	if(session.getAttribute("login").equals("yes"))
		{ %>
<head>
<title>Ghar Pe Shiksha : Home Tuition Tutor Registration Delhi</title>
<meta name="description" content="Get register yourself here for home tuition tutor jobs in Delhi NCR as per subject wise and get instantly job with the help of us.">
<link rel="shortcut icon" href="favicon.png" type="image/x-icon">

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/testimonial.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#43c0f6">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/subjects.js"></script>
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
<body>





<!--header start here-->
	<!-- NAVBAR
		================================================== -->
<div >
	<div class="fixed-header">	

		    <div class="navbar-wrapper">
        <div style="background-color:#43C0F6">
            <div class="text-center">

 
            <p  style="color:white">Get Home Tutor Jobs in Delhi/NCR. <span class="text-right">Call or Whatsapp<span class="glyphicon glyphicon-phone" aria-hidden="true"> </span><a href="tel:+917065806565" style="color:white">(+91)7065-8065-65</a></span>                 </p>			 
      			 
            </div>
            </div>
            
		      <div class="container">
              
		        <nav class="navbar navbar-inverse navbar-static-top">
		             <div class="navbar-header">
			              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			                <span class="sr-only">Toggle navigation</span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			              </button>
			              <div class="logo wow slideInLeft" data-wow-delay="0.3s" style="width:100%;height:auto">
			                    <a class="navbar-brand" href="index.html"><img class="img-responsive" src="images/new_01.png" style="width:80%;height:auto" /></a>
			              </div>
			          </div>
		            <div id="navbar" class="navbar-collapse collapse">
		            <nav class="cl-effect-1">
		              <ul class="nav navbar-nav">
		        
           
						<li><a href="/signout" class="scroll">Log Out</a></li>						
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


<section >
<div class="container">
<div class="about-top">
<h2>Complete Your Profile</h2>
<span class="heading-line"> </span>
				<p>All fields are required otherwise mentioned</p>
</div>

        <form role="form" action="/tutoregister3" onSubmit="return validate3()" method="post">
        

            <h3>Classes Information </h3>
         
               <div class="col-xs-12">
                <div class="control-group">
                    <!-- Plan Selection -->
                    <label class="control-label" >Courses Preferred</label>
                    <div class="controls">
                        <div class="checkboxitems" id="courses">
      <input class="checkbox" type="checkbox"  value="B.COM/ M.COM" id="bcom" name="courses">B.COM/ M.COM<br>
      <input class="checkbox" type="checkbox" value="B-Ed" id="b-ed" name="courses">B-Ed<br>
      <input class="checkbox" type="checkbox" value="B.TECH" id="btech" name="courses">B.TECH<br>
      <input class="checkbox" type="checkbox" value="BCA-MCA" id="bca" name="courses">BCA-MCA<br>
      <input class="checkbox" type="checkbox" value="B.M.S" id="bms" name="courses">B.M.S<br>
      <input class="checkbox" type="checkbox" value="BBS" id="bbs" name="courses">BBS<br>
     
      <input class="checkbox" type="checkbox" value="Business Training" id="business" name="courses">Business Training<br>
      <input class="checkbox" type="checkbox" value="CAT(Common Admission Test)" id="cat" name="courses">CAT(Common Admission Test)<br>
      <input class="checkbox" type="checkbox" value="CPT" id="cpt" name="courses">CPT<br>
      <input class="checkbox" type="checkbox" value="CA/CS/ICWA" id="ca" name="courses">CA/CS/ICWA<br>
      <input class="checkbox" type="checkbox" value="Class I-V" id="I" name="courses">Class I-V<br>
      <input class="checkbox" type="checkbox" value="Class VI-VIII" id="VI" name="courses">Class VI-VIII<br>
      <input class="checkbox" type="checkbox" value="Class IX-X" id="IX" name="courses">Class IX-X<br>
      <input class="checkbox" type="checkbox" value="Class XI-XII" id="XI" name="courses">Class XI-XII<br>
            <input class="checkbox" type="checkbox" value="Computer/IT" id="comp" name="courses">Computer/IT<br>
      <input class="checkbox" type="checkbox" value="Computer Science Engineering" id="cse" name="courses">Computer Science Engineering<br>
      <input class="checkbox" type="checkbox" value="Competitive Exams" id="competitive" name="courses">Competitive Exams<br>
      <input class="checkbox" type="checkbox" value="IIT-JEE" id="iit" name="courses">IIT-JEE<br>
      <input class="checkbox" type="checkbox" value="Engineering Subjects" id="engg" name="courses">Engineering Subjects<br>
      <input class="checkbox" type="checkbox" value="GRE/GMAT/TOEFL/IELTS" id="gre" name="courses">GRE/GMAT/TOEFL/IELTS<br>
      
      <input class="checkbox" type="checkbox" value="Hobby/Creativity" id="hobby" name="courses">Hobby/Creativity<br>
      <input class="checkbox" type="checkbox" value="Language" id="language" name="courses">Language<br>
      
      <input class="checkbox" type="checkbox" value="Laws/Judiciary" id="laws" name="courses">Laws/Judiciary<br>
      <input class="checkbox" type="checkbox" value="M.TECH" id="mtech" name="courses">M.TECH<br>
    
      <input class="checkbox" type="checkbox" value="Medical Enterance" id="medical" name="courses">Medical Enterance<br>
      
      <input class="checkbox" type="checkbox" value="MBA / BBA" id="mba" name="courses">MBA / BBA<br>
      <input class="checkbox" type="checkbox" value="Music" id="music" name="courses">Music<br>
      
      <input class="checkbox" type="checkbox" value="Spoken English" id="english" name="courses">Spoken English<br>
      <input class="checkbox" type="checkbox" value="Special Educators" id="special" name="courses">Special Educators<br>
      <input class="checkbox" type="checkbox" value="Sports Class/Fitness/Yoga" id="fitness" name="courses">Sports Class/Fitness/Yoga<br>
      
      </div>
                        
                    </div>
                </div>
</div>
               
               <h3> Select Preffered Subjects</h3>
               <div class="col-xs-12 hidebcom" style="display:none">
                
                <div class="control-group">
                    <!-- Plan Selection -->
                    <label class="control-label" >B.COM/M.COM</label>
                    <div class="controls">
                        <div class="checkboxitems" id="bcombox">
<input class="checkbox" type="checkbox"  value="Accounting For Managerial Decisions" name="B.COM/ M.COM">Accounting For Managerial Decisions <br>
<input class="checkbox" type="checkbox"  value="Banking & Insurance Services" name="B.COM/ M.COM">Banking & Insurance Services<br>
<input class="checkbox" type="checkbox"  value="Business Economics" name="B.COM/ M.COM">Business Economics<br>
<input class="checkbox" type="checkbox"  value="Business Environment" name="B.COM/ M.COM">Business Environment<br>
<input class="checkbox" type="checkbox"  value="Business Laws" name="B.COM/ M.COM">Business Laws<br>
<input class="checkbox" type="checkbox"  value="Business Mathematics" name="B.COM/ M.COM">Business Mathematics<br>
<input class="checkbox" type="checkbox"  value="Computer Applications In Business" name="B.COM/ M.COM">Computer Applications In Business<br>
<input class="checkbox" type="checkbox"  value="Corporate Accounting" name="B.COM/ M.COM">Corporate Accounting<br>
<input class="checkbox" type="checkbox"  value="Corporate Accounting & Auditing" name="B.COM/ M.COM">Corporate Accounting & Auditing<br>
<input class="checkbox" type="checkbox"  value="Cost Accounting" name="B.COM/ M.COM">Cost Accounting<br>
<input class="checkbox" type="checkbox"  value="E-commerce" name="B.COM/ M.COM">E-commerce<br>
<input class="checkbox" type="checkbox"  value="Economics" name="B.COM/ M.COM">Economics<br>
<input class="checkbox" type="checkbox"  value="Final Research Project" name="B.COM/ M.COM">Final Research Project<br>
<input class="checkbox" type="checkbox"  value="Financial Management" name="B.COM/ M.COM">Financial Management<br>
<input class="checkbox" type="checkbox"  value="Human Resource Management" name="B.COM/ M.COM">Human Resource Management<br>
<input class="checkbox" type="checkbox"  value="Income Tax" name="B.COM/ M.COM">Income Tax<br>
<input class="checkbox" type="checkbox"  value="Industrial Relations And Labour Laws" name="B.COM/ M.COM">Industrial Relations And Labour Laws<br>
<input class="checkbox" type="checkbox"  value="International Accounting" name="B.COM/ M.COM">International Accounting<br>
<input class="checkbox" type="checkbox"  value="Macro Economics" name="B.COM/ M.COM">Macro Economics<br>
<input class="checkbox" type="checkbox"  value="Management Accounting" name="B.COM/ M.COM">Management Accounting<br>
<input class="checkbox" type="checkbox"  value="Management Decision Techniques" name="B.COM/ M.COM">Management Decision Techniques<br>
<input class="checkbox" type="checkbox"  value="Management Economics" name="B.COM/ M.COM">Management Economics<br>
<input class="checkbox" type="checkbox"  value="Marketing Management" name="B.COM/ M.COM">Marketing Management<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="B.COM/ M.COM">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Micro Economics" name="B.COM/ M.COM">Micro Economics<br>
<input class="checkbox" type="checkbox"  value="Office Management & Secretarial Practice" name="B.COM/ M.COM">Office Management & Secretarial Practice<br>
<input class="checkbox" type="checkbox"  value="Principles Of Management" name="B.COM/ M.COM">Principles Of Management<br>
<input class="checkbox" type="checkbox"  value="Statistical Analysis For Business" name="B.COM/ M.COM">Statistical Analysis For Business<br>
<input class="checkbox" type="checkbox"  value="Statistics" name="B.COM/ M.COM">Statistics<br>
<input class="checkbox" type="checkbox"  value="Tally" name="B.COM/ M.COM">Tally<br>

</div>
</div>
</div>
</div>       

<div class="col-xs-12">
 <div class="control-group hidebed" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >B-Ed</label>
                    <div class="controls">
                        <div class="checkboxitems" id="bedbox">
<input class="checkbox" type="checkbox"  value="Philosophy" name="B-Ed">Philosophy <br>
</div>
</div>
</div>
</div>

<div class="col-xs-12">
        <div class="control-group hidebtech" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >B.TECH</label>
                    <div class="controls">
                        <div class="checkboxitems" id="btechbox">
<input class="checkbox" type="checkbox"  value="Antennas & Propagation" name="B.TECH">Antennas & Propagation<br>
<input class="checkbox" type="checkbox"  value="Applied Mechanics" name="B.TECH">Applied Mechanics<br>
<input class="checkbox" type="checkbox"  value="Chemical Engineering" name="B.TECH">Chemical Engineering<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="B.TECH">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Circuit & System" name="B.TECH">Circuit & System<br>
<input class="checkbox" type="checkbox"  value="Civil Engineering" name="B.TECH">Civil Engineering<br>
<input class="checkbox" type="checkbox"  value="Communication System" name="B.TECH">Communication System<br>
<input class="checkbox" type="checkbox"  value="Computer Science" name="B.TECH">Computer Science<br>
<input class="checkbox" type="checkbox"  value="Computers/IT" name="B.TECH">Computers/IT<br>
<input class="checkbox" type="checkbox"  value="Consumer Electronics" name="B.TECH">Consumer Electronics<br>
<input class="checkbox" type="checkbox"  value="Control Engineering" name="B.TECH">Control Engineering<br>
<input class="checkbox" type="checkbox"  value="Electrical Engineering" name="B.TECH">Electrical Engineering<br>
<input class="checkbox" type="checkbox"  value="Electrical Machines" name="B.TECH">Electrical Machines<br>
<input class="checkbox" type="checkbox"  value="Electronics" name="B.TECH">Electronics<br>
<input class="checkbox" type="checkbox"  value="Electronics/Telecom" name="B.TECH">Electronics/Telecom<br>
<input class="checkbox" type="checkbox"  value="Engineering Drawing" name="B.TECH">Engineering Drawing<br>
<input class="checkbox" type="checkbox"  value="Filter Design" name="B.TECH">Filter Design<br>
<input class="checkbox" type="checkbox"  value="Humanity" name="B.TECH">Humanity<br>
<input class="checkbox" type="checkbox"  value="Industrial Engineering" name="B.TECH">Industrial Engineering<br>
<input class="checkbox" type="checkbox"  value="Java Language" name="B.TECH">Java Language<br>
<input class="checkbox" type="checkbox"  value="Machine Drawing" name="B.TECH">Machine Drawing<br>
<input class="checkbox" type="checkbox"  value="Manufacturing Process" name="B.TECH">Manufacturing Process<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="B.TECH">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Mechanical Engineering" name="B.TECH">Mechanical Engineering<br>
<input class="checkbox" type="checkbox"  value="Microprocessor" name="B.TECH">Microprocessor<br>
<input class="checkbox" type="checkbox"  value="Physics" name="B.TECH">Physics<br>
<input class="checkbox" type="checkbox"  value="Workshop" name="B.TECH">Workshop<br>

</div>
</div>
</div>
</div>   
<div class="col-xs-12">
        <div class="control-group hidebca" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >BCA/MCA</label>
                    <div class="controls">
                        <div class="checkboxitems" id="bcabox">
<input class="checkbox" type="checkbox"  value="Accounting & Financial Mgmt" name="BCA-MCA">Accounting & Financial Mgmt<br>
<input class="checkbox" type="checkbox"  value="Artificial Intelligence" name="BCA-MCA">Artificial Intelligence<br>
<input class="checkbox" type="checkbox"  value="Basic Accounting" name="BCA-MCA">Basic Accounting<br>
<input class="checkbox" type="checkbox"  value="Communication & Soft Skills" name="BCA-MCA">Communication & Soft Skills<br>
<input class="checkbox" type="checkbox"  value="Computer Based Optimization Methods" name="BCA-MCA">Computer Based Optimization Methods<br>
<input class="checkbox" type="checkbox"  value="Computer Graphics" name="BCA-MCA">Computer Graphics<br>
<input class="checkbox" type="checkbox"  value="Computer Mathematical Foundation" name="BCA-MCA">Computer Mathematical Foundation<br>
<input class="checkbox" type="checkbox"  value="Computer Networks" name="BCA-MCA">Computer Networks<br>
<input class="checkbox" type="checkbox"  value="Computer System Architecture" name="BCA-MCA">Computer System Architecture<br>
<input class="checkbox" type="checkbox"  value="Data Base Management System" name="BCA-MCA">Data Base Management System<br>
<input class="checkbox" type="checkbox"  value="Data Communication & Networks" name="BCA-MCA">Data Communication & Networks<br>
<input class="checkbox" type="checkbox"  value="Data Structure" name="BCA-MCA">Data Structure<br>
<input class="checkbox" type="checkbox"  value="Digital Ckt. & Logic Design" name="BCA-MCA">Digital Ckt. & Logic Design<br>
<input class="checkbox" type="checkbox"  value="Handling Operating Systems" name="BCA-MCA">Handling Operating Systems<br>
<input class="checkbox" type="checkbox"  value="Information Technology" name="BCA-MCA">Information Technology<br>
<input class="checkbox" type="checkbox"  value="Internet Applications And Java" name="BCA-MCA">Internet Applications And Java<br>
<input class="checkbox" type="checkbox"  value="Management Information System" name="BCA-MCA">Management Information System<br>
<input class="checkbox" type="checkbox"  value="Math - Computer Oriented Methods" name="BCA-MCA">Math - Computer Oriented Methods<br>
<input class="checkbox" type="checkbox"  value="Math - Discrete" name="BCA-MCA">Math - Discrete<br>
<input class="checkbox" type="checkbox"  value="Microprocessor" name="BCA-MCA">Microprocessor<br>
<input class="checkbox" type="checkbox"  value="Object Oriented Programming In C++" name="BCA-MCA">Object Oriented Programming In C++<br>
<input class="checkbox" type="checkbox"  value="Operating System" name="BCA-MCA">Operating System<br>
<input class="checkbox" type="checkbox"  value="Operation Research" name="BCA-MCA">Operation Research<br>
<input class="checkbox" type="checkbox"  value="Principles Of Management" name="BCA-MCA">Principles Of Management<br>
<input class="checkbox" type="checkbox"  value="Programming In C" name="BCA-MCA">Programming In C<br>
<input class="checkbox" type="checkbox"  value="RDBMS" name="BCA-MCA">RDBMS<br>
<input class="checkbox" type="checkbox"  value="Software Engineering" name="BCA-MCA">Software Engineering<br>
<input class="checkbox" type="checkbox"  value="Software Lab" name="BCA-MCA">Software Lab<br>
<input class="checkbox" type="checkbox"  value="System Analysis And Design" name="BCA-MCA">System Analysis And Design<br>
<input class="checkbox" type="checkbox"  value="System Software" name="BCA-MCA">System Software<br>
<input class="checkbox" type="checkbox"  value="Visual Basic Programming" name="BCA-MCA">Visual Basic Programming<br>

</div>
</div>
</div>
</div>

<div class="col-xs-12">
        <div class="control-group hidebms" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >B.M.S</label>
                    <div class="controls">
                        <div class="checkboxitems" id="bmsbox">
<input class="checkbox" type="checkbox"  value="Accounting For Manager" name="B.M.S">Accounting For Manager<br>
</div>
</div>
</div>
</div>
<div class="col-xs-12">
        <div class="control-group hidebbs" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >B.B.S</label>
                    <div class="controls">
                        <div class="checkboxitems" id="bbsbox">
                        <input class="checkbox" type="checkbox"  value="Advanced Human Resource Management" name="BBS">Advanced Human Resource Management<br>
<input class="checkbox" type="checkbox"  value="Advertising & Sales Promotion Management" name="BBS">Advertising & Sales Promotion Management<br>
<input class="checkbox" type="checkbox"  value="Applied Macro Economics" name="BBS">Applied Macro Economics<br>
<input class="checkbox" type="checkbox"  value="Basic Statics" name="BBS">Basic Statics<br>
<input class="checkbox" type="checkbox"  value="Business Communication" name="BBS">Business Communication<br>
<input class="checkbox" type="checkbox"  value="Business Environment" name="BBS">Business Environment<br>
<input class="checkbox" type="checkbox"  value="Business Policy & Strategy" name="BBS">Business Policy & Strategy<br>
<input class="checkbox" type="checkbox"  value="Capital Market & Security Analysis" name="BBS">Capital Market & Security Analysis<br>
<input class="checkbox" type="checkbox"  value="Compensation Management" name="BBS">Compensation Management<br>
<input class="checkbox" type="checkbox"  value="Computing Tools For Business Management" name="BBS">Computing Tools For Business Management<br>
<input class="checkbox" type="checkbox"  value="Consumer Behaviour" name="BBS">Consumer Behaviour<br>
<input class="checkbox" type="checkbox"  value="Corporate Taxation & Financial Planing" name="BBS">Corporate Taxation & Financial Planing<br>
<input class="checkbox" type="checkbox"  value="Cost Accounting" name="BBS">Cost Accounting<br>
<input class="checkbox" type="checkbox"  value="Creative Selling" name="BBS">Creative Selling<br>
<input class="checkbox" type="checkbox"  value="Design & Management Of Information System" name="BBS">Design & Management Of Information System<br>
<input class="checkbox" type="checkbox"  value="Financial Accounting" name="BBS">Financial Accounting<br>
<input class="checkbox" type="checkbox"  value="Financial Management" name="BBS">Financial Management<br>
<input class="checkbox" type="checkbox"  value="Industrial Relation" name="BBS">Industrial Relation<br>
<input class="checkbox" type="checkbox"  value="Information Technology In Management" name="BBS">Information Technology In Management<br>
<input class="checkbox" type="checkbox"  value="International Finance" name="BBS">International Finance<br>
<input class="checkbox" type="checkbox"  value="International Marketing" name="BBS">International Marketing<br>
<input class="checkbox" type="checkbox"  value="Introduction To Database Management System" name="BBS">Introduction To Database Management System<br>
<input class="checkbox" type="checkbox"  value="Introduction To Modern Business" name="BBS">Introduction To Modern Business<br>
<input class="checkbox" type="checkbox"  value="Market Research" name="BBS">Market Research<br>
<input class="checkbox" type="checkbox"  value="Merchant Banking & Financial Service" name="BBS">Merchant Banking & Financial Service<br>
<input class="checkbox" type="checkbox"  value="Micro Economics & Its Application" name="BBS">Micro Economics & Its Application<br>
<input class="checkbox" type="checkbox"  value="Principle Of Marketing" name="BBS">Principle Of Marketing<br>
<input class="checkbox" type="checkbox"  value="Production And Operation Management" name="BBS">Production And Operation Management<br>
<input class="checkbox" type="checkbox"  value="Public Relation & Corporate Image" name="BBS">Public Relation & Corporate Image<br>
<input class="checkbox" type="checkbox"  value="Quantiative Technique Management" name="BBS">Quantiative Technique Management<br>
<input class="checkbox" type="checkbox"  value="Sales & Distribution Management" name="BBS">Sales & Distribution Management<br>
<input class="checkbox" type="checkbox"  value="Security Analysis & Portfolio Management" name="BBS">Security Analysis & Portfolio Management<br>
<input class="checkbox" type="checkbox"  value="Summer Training" name="BBS">Summer Training<br>
<input class="checkbox" type="checkbox"  value="Training & Development" name="BBS">Training & Development<br>

                        </div>
                        </div>
                        </div>
                        </div>
<div class="col-xs-12">
        <div class="control-group hidebusiness" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Business Training</label>
                    <div class="controls">
                        <div class="checkboxitems" id="businessbox">
                        <input class="checkbox" type="checkbox"  value="Financial Accountant" name="Business Training">Financial Accountant<br>
                        <input class="checkbox" type="checkbox"  value="Financial Management" name="Business Training">Financial Management<br>
                        
                        </div>
                        </div>
                        </div>
                        </div>
<div class="col-xs-12">
        <div class="control-group hidecat" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >C.A.T. - Common Admission Test</label>
                    <div class="controls">
                    <div class="checkboxitems" id="catbox">
                        <input class="checkbox" type="checkbox"  value="Data Enterpretation" name="CAT(Common Admission Test)">Data Enterpretation<br>
                        <input class="checkbox" type="checkbox"  value="Logical Reasoning" name="CAT(Common Admission Test)">Logical Reasoning<br>
                        <input class="checkbox" type="checkbox"  value="Reading Comprehension" name="CAT(Common Admission Test)">Reading Comprehension<br>
                        <input class="checkbox" type="checkbox"  value="Quantitative Aptitude" name="CAT(Common Admission Test)">Quantitative Aptitude<br>
                        <input class="checkbox" type="checkbox"  value="Vocabulary" name="CAT(Common Admission Test)">Vocabulary<br>
</div>
</div>
</div>
</div>
<div class="col-xs-12">
        <div class="control-group hidecpt" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >C.P.T</label>
                    <div class="controls">
                    <div class="checkboxitems" id="cptbox">
                       <input class="checkbox" type="checkbox"  value="CPT" name="CPT">CPT<br>          
                </div>
                </div>
                </div>
                </div>
  <div class="col-xs-12">
        <div class="control-group hideca" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >CA / CS / ICWA</label>
                    <div class="controls">
                    <div class="checkboxitems" id="cabox">
                       <input class="checkbox" type="checkbox"  value="Chartered Accountant" name="CA/CS/ICWA">Chartered Accountant<br> 
                       <input class="checkbox" type="checkbox"  value="CS" name="CA/CS/ICWA">CS<br> 
                       <input class="checkbox" type="checkbox"  value="ICWA" name="CA/CS/ICWA">ICWA<br>          
                </div>
                </div>
                </div>
                </div>              
                <div class="col-xs-12">
        <div class="control-group hideI" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Class I-V</label>
                    <div class="controls">
                    <div class="checkboxitems" id="Ibox">
                    <input class="checkbox" type="checkbox"  value="All Subjects" name="Class I-V">All Subjects<br>
<input class="checkbox" type="checkbox"  value="Art & Creativity" name="Class I-V">Art & Creativity<br>
<input class="checkbox" type="checkbox"  value="Belly Dance" name="Class I-V">Belly Dance<br>
<input class="checkbox" type="checkbox"  value="Danish" name="Class I-V">Danish<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="Class I-V">Drawing<br>
<input class="checkbox" type="checkbox"  value="English" name="Class I-V">English<br>
<input class="checkbox" type="checkbox"  value="French" name="Class I-V">French<br>
<input class="checkbox" type="checkbox"  value="German" name="Class I-V">German<br>
<input class="checkbox" type="checkbox"  value="Handwriting" name="Class I-V">Handwriting<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Class I-V">Hindi<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Class I-V">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Music" name="Class I-V">Music<br>
<input class="checkbox" type="checkbox"  value="Physics" name="Class I-V">Physics<br>
<input class="checkbox" type="checkbox"  value="Sanskrit" name="Class I-V">Sanskrit<br>
<input class="checkbox" type="checkbox"  value="Science" name="Class I-V">Science<br>
<input class="checkbox" type="checkbox"  value="Social Studies" name="Class I-V">Social Studies<br>
<input class="checkbox" type="checkbox"  value="Spanish" name="Class I-V">Spanish<br>
<input class="checkbox" type="checkbox"  value="Spoken English" name="Class I-V">Spoken English<br>
<input class="checkbox" type="checkbox"  value="Sports" name="Class I-V">Sports<br>
</div>
</div>
</div>
</div>
<div class="col-xs-12">
 <div class="control-group hideVI" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Class VI-VIII</label>
                    <div class="controls">
                    <div class="checkboxitems" id="VIbox">
<input class="checkbox" type="checkbox"  value="All Subjects" name="Class VI-VIII">All Subjects<br>
<input class="checkbox" type="checkbox"  value="Art & Creativity" name="Class VI-VIII">Art & Creativity<br>
<input class="checkbox" type="checkbox"  value="Belly Dance" name="Class VI-VIII">Belly Dance<br>
<input class="checkbox" type="checkbox"  value="Biology" name="Class VI-VIII">Biology<br>
<input class="checkbox" type="checkbox"  value="Danish" name="Class VI-VIII">Danish<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="Class VI-VIII">Drawing<br>
<input class="checkbox" type="checkbox"  value="English" name="Class VI-VIII">English<br>
<input class="checkbox" type="checkbox"  value="French" name="Class VI-VIII">French<br>
<input class="checkbox" type="checkbox"  value="German" name="Class VI-VIII">German<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Class VI-VIII">Hindi<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Class VI-VIII">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Music" name="Class VI-VIII">Music<br>
<input class="checkbox" type="checkbox"  value="Sanskrit" name="Class VI-VIII">Sanskrit<br>
<input class="checkbox" type="checkbox"  value="Science" name="Class VI-VIII">Science<br>
<input class="checkbox" type="checkbox"  value="Social Studies" name="Class VI-VIII">Social Studies<br>
<input class="checkbox" type="checkbox"  value="Spanish" name="Class VI-VIII">Spanish<br>
<input class="checkbox" type="checkbox"  value="Spoken English" name="Class VI-VIII">Spoken English<br>
<input class="checkbox" type="checkbox"  value="Sports" name="Class VI-VIII">Sports<br>

                
                </div>
                </div>
                </div>
                </div>
  <div class="col-xs-12">
           <div class="control-group hideIX" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Class IX-X</label>
                    <div class="controls">
                    <div class="checkboxitems" id="IXbox">
                    <input class="checkbox" type="checkbox"  value="All Subjects" name="Class IX-X">All Subjects<br>
<input class="checkbox" type="checkbox"  value="All Subjects" name="Class IX-X">All Subjects<br>
<input class="checkbox" type="checkbox"  value="Belly Dance" name="Class IX-X">Belly Dance<br>
<input class="checkbox" type="checkbox"  value="Biology" name="Class IX-X">Biology<br>
<input class="checkbox" type="checkbox"  value="Business Studies" name="Class IX-X">Business Studies<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="Class IX-X">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Chinese" name="Class IX-X">Chinese<br>
<input class="checkbox" type="checkbox"  value="Civics" name="Class IX-X">Civics<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="Class IX-X">Drawing<br>
<input class="checkbox" type="checkbox"  value="Economics" name="Class IX-X">Economics<br>
<input class="checkbox" type="checkbox"  value="English" name="Class IX-X">English<br>
<input class="checkbox" type="checkbox"  value="Environmental Studies" name="Class IX-X">Environmental Studies<br>
<input class="checkbox" type="checkbox"  value="French" name="Class IX-X">French<br>
<input class="checkbox" type="checkbox"  value="General Knowledge" name="Class IX-X">General Knowledge<br>
<input class="checkbox" type="checkbox"  value="General Science" name="Class IX-X">General Science<br>
<input class="checkbox" type="checkbox"  value="German" name="Class IX-X">German<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Class IX-X">Hindi<br>
<input class="checkbox" type="checkbox"  value="Japanese" name="Class IX-X">Japanese<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Class IX-X">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Physics" name="Class IX-X">Physics<br>
<input class="checkbox" type="checkbox"  value="Psychology" name="Class IX-X">Psychology<br>
<input class="checkbox" type="checkbox"  value="Sanskrit" name="Class IX-X">Sanskrit<br>
<input class="checkbox" type="checkbox"  value="Science" name="Class IX-X">Science<br>
<input class="checkbox" type="checkbox"  value="Social Science" name="Class IX-X">Social Science<br>

                    </div>
                    </div>
                    </div>
                  </div>         
                <div class="col-xs-12">
           <div class="control-group hideXI" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Class XI-XII</label>
                    <div class="controls">
                    <div class="checkboxitems" id="XIbox">
                    <input class="checkbox" type="checkbox"  value="Accounts" name="Class XI-XII">Accounts<br>
<input class="checkbox" type="checkbox"  value="Asp.Net" name="Class XI-XII">Asp.Net<br>
<input class="checkbox" type="checkbox"  value="Biology" name="Class XI-XII">Biology<br>
<input class="checkbox" type="checkbox"  value="Biotechnology" name="Class XI-XII">Biotechnology<br>
<input class="checkbox" type="checkbox"  value="Botany" name="Class XI-XII">Botany<br>
<input class="checkbox" type="checkbox"  value="Business Mathematics" name="Class XI-XII">Business Mathematics<br>
<input class="checkbox" type="checkbox"  value="Business Studies" name="Class XI-XII">Business Studies<br>
<input class="checkbox" type="checkbox"  value="C++ Language" name="Class XI-XII">C++ Language<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="Class XI-XII">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Chinese" name="Class XI-XII">Chinese<br>
<input class="checkbox" type="checkbox"  value="Civics" name="Class XI-XII">Civics<br>
<input class="checkbox" type="checkbox"  value="Commerce" name="Class XI-XII">Commerce<br>
<input class="checkbox" type="checkbox"  value="Computer Science" name="Class XI-XII">Computer Science<br>
<input class="checkbox" type="checkbox"  value="Cost Accounting" name="Class XI-XII">Cost Accounting<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="Class XI-XII">Drawing<br>
<input class="checkbox" type="checkbox"  value="Economics" name="Class XI-XII">Economics<br>
<input class="checkbox" type="checkbox"  value="English" name="Class XI-XII">English<br>
<input class="checkbox" type="checkbox"  value="Food & Nutrition" name="Class XI-XII">Food & Nutrition<br>
<input class="checkbox" type="checkbox"  value="French" name="Class XI-XII">French<br>
<input class="checkbox" type="checkbox"  value="Geography" name="Class XI-XII">Geography<br>
<input class="checkbox" type="checkbox"  value="Geology" name="Class XI-XII">Geology<br>
<input class="checkbox" type="checkbox"  value="German" name="Class XI-XII">German<br>
<input class="checkbox" type="checkbox"  value="Grammar/literature/conversation" name="Class XI-XII">Grammar/literature/conversation<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Class XI-XII">Hindi<br>
<input class="checkbox" type="checkbox"  value="History" name="Class XI-XII">History<br>
<input class="checkbox" type="checkbox"  value="Home Science" name="Class XI-XII">Home Science<br>
<input class="checkbox" type="checkbox"  value="Information Practice" name="Class XI-XII">Information Practice<br>
<input class="checkbox" type="checkbox"  value="Java Language" name="Class XI-XII">Java Language<br>
<input class="checkbox" type="checkbox"  value="Language" name="Class XI-XII">Language<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Class XI-XII">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Multimedia & Web Designing" name="Class XI-XII">Multimedia & Web Designing<br>
<input class="checkbox" type="checkbox"  value="Music" name="Class XI-XII">Music<br>
<input class="checkbox" type="checkbox"  value="Philosophy" name="Class XI-XII">Philosophy<br>
<input class="checkbox" type="checkbox"  value="Physics" name="Class XI-XII">Physics<br>
<input class="checkbox" type="checkbox"  value="Political Science" name="Class XI-XII">Political Science<br>
<input class="checkbox" type="checkbox"  value="Programming" name="Class XI-XII">Programming<br>
<input class="checkbox" type="checkbox"  value="Psychology" name="Class XI-XII">Psychology<br>
<input class="checkbox" type="checkbox"  value="Sanskrit" name="Class XI-XII">Sanskrit<br>
<input class="checkbox" type="checkbox"  value="Sociology" name="Class XI-XII">Sociology<br>
<input class="checkbox" type="checkbox"  value="Spanish" name="Class XI-XII">Spanish<br>
<input class="checkbox" type="checkbox"  value="Spoken English" name="Class XI-XII">Spoken English<br>
<input class="checkbox" type="checkbox"  value="Statistics" name="Class XI-XII">Statistics<br>
<input class="checkbox" type="checkbox"  value="Swimming" name="Class XI-XII">Swimming<br>

                    
                    </div>
                    </div>
                    </div>
                    </div>
                <div class="col-xs-12">
           <div class="control-group hidecomp" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >COMPUTER/IT</label>
                    <div class="controls">
                    <div class="checkboxitems" id="compbox">
                    <input class="checkbox" type="checkbox"  value="Android" name="Computer/IT">Android<br>
<input class="checkbox" type="checkbox"  value="Animation" name="Computer/IT">Animation<br>
<input class="checkbox" type="checkbox"  value="Asp.Net" name="Computer/IT">Asp.Net<br>
<input class="checkbox" type="checkbox"  value="Auto Cad" name="Computer/IT">Auto Cad<br>
<input class="checkbox" type="checkbox"  value="Basic Computers" name="Computer/IT">Basic Computers<br>
<input class="checkbox" type="checkbox"  value="C Language" name="Computer/IT">C Language<br>
<input class="checkbox" type="checkbox"  value="C Sharp" name="Computer/IT">C Sharp<br>
<input class="checkbox" type="checkbox"  value="C++ Language" name="Computer/IT">C++ Language<br>
<input class="checkbox" type="checkbox"  value="Cisco" name="Computer/IT">Cisco<br>
<input class="checkbox" type="checkbox"  value="Computer Graphics" name="Computer/IT">Computer Graphics<br>
<input class="checkbox" type="checkbox"  value="Computer Hardware" name="Computer/IT">Computer Hardware<br>
<input class="checkbox" type="checkbox"  value="Computer Networking" name="Computer/IT">Computer Networking<br>
<input class="checkbox" type="checkbox"  value="Core Java" name="Computer/IT">Core Java<br>
<input class="checkbox" type="checkbox"  value="Data Base Management System" name="Computer/IT">Data Base Management System<br>
<input class="checkbox" type="checkbox"  value="Java Hibernate" name="Computer/IT">Java Hibernate<br>
<input class="checkbox" type="checkbox"  value="Java Language" name="Computer/IT">Java Language<br>
<input class="checkbox" type="checkbox"  value="Javabeans" name="Computer/IT">Javabeans<br>
<input class="checkbox" type="checkbox"  value="Linux" name="Computer/IT">Linux<br>
<input class="checkbox" type="checkbox"  value="MS Excel" name="Computer/IT">MS Excel<br>
<input class="checkbox" type="checkbox"  value="Operating System" name="Computer/IT">Operating System<br>
<input class="checkbox" type="checkbox"  value="Operation Research" name="Computer/IT">Operation Research<br>
<input class="checkbox" type="checkbox"  value="Oracle" name="Computer/IT">Oracle<br>
<input class="checkbox" type="checkbox"  value="Software Testing" name="Computer/IT">Software Testing<br>
<input class="checkbox" type="checkbox"  value="Tally" name="Computer/IT">Tally<br>
<input class="checkbox" type="checkbox"  value="UNIX" name="Computer/IT">UNIX<br>
<input class="checkbox" type="checkbox"  value="Visual Basic" name="Computer/IT">Visual Basic<br>
<input class="checkbox" type="checkbox"  value="Web Designing" name="Computer/IT">Web Designing<br>
<input class="checkbox" type="checkbox"  value="XML" name="Computer/IT">XML<br>

                    
                    </div>
                    </div>
                    </div>
                    </div>
             <div class="col-xs-12">
           <div class="control-group hidecse" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Computer Science Engineering</label>
                    <div class="controls">
                    <div class="checkboxitems" id="csebox">
                    <input class="checkbox" type="checkbox"  value="Applied Chemistry" name="Computer Science Engineering">Applied Chemistry<br>
<input class="checkbox" type="checkbox"  value="Applied Mathematics" name="Computer Science Engineering">Applied Mathematics<br>
<input class="checkbox" type="checkbox"  value="Applied Physics" name="Computer Science Engineering">Applied Physics<br>
<input class="checkbox" type="checkbox"  value="Circuit Theory & Networks" name="Computer Science Engineering">Circuit Theory & Networks<br>
<input class="checkbox" type="checkbox"  value="Computer Graphics" name="Computer Science Engineering">Computer Graphics<br>
<input class="checkbox" type="checkbox"  value="Computer Organisation" name="Computer Science Engineering">Computer Organisation<br>
<input class="checkbox" type="checkbox"  value="Control System" name="Computer Science Engineering">Control System<br>
<input class="checkbox" type="checkbox"  value="Data Structure" name="Computer Science Engineering">Data Structure<br>
<input class="checkbox" type="checkbox"  value="Discrete Mathematics" name="Computer Science Engineering">Discrete Mathematics<br>
<input class="checkbox" type="checkbox"  value="Electrical Technology" name="Computer Science Engineering">Electrical Technology<br>
<input class="checkbox" type="checkbox"  value="English" name="Computer Science Engineering">English<br>
<input class="checkbox" type="checkbox"  value="Financial Management" name="Computer Science Engineering">Financial Management<br>
<input class="checkbox" type="checkbox"  value="Industrial Management" name="Computer Science Engineering">Industrial Management<br>
<input class="checkbox" type="checkbox"  value="Language Processor" name="Computer Science Engineering">Language Processor<br>
<input class="checkbox" type="checkbox"  value="Microprocessor" name="Computer Science Engineering">Microprocessor<br>
<input class="checkbox" type="checkbox"  value="Object Technology" name="Computer Science Engineering">Object Technology<br>
<input class="checkbox" type="checkbox"  value="Personality Development" name="Computer Science Engineering">Personality Development<br>
<input class="checkbox" type="checkbox"  value="Programming" name="Computer Science Engineering">Programming<br>
<input class="checkbox" type="checkbox"  value="Web Technology" name="Computer Science Engineering">Web Technology<br>
<input class="checkbox" type="checkbox"  value="Workshop" name="Computer Science Engineering">Workshop<br>

                    </div>
                    </div>
                    </div>
                    </div>
                 <div class="col-xs-12">
           <div class="control-group hidecompetitive" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Competitive Exams</label>
                    <div class="controls">
                    <div class="checkboxitems" id="competitivebox">
                  <input class="checkbox" type="checkbox"  value="AIEEE" name="Competitive Exams">AIEEE<br>
<input class="checkbox" type="checkbox"  value="AIPMT" name="Competitive Exams">AIPMT<br>
<input class="checkbox" type="checkbox"  value="Animation" name="Competitive Exams">Animation<br>
<input class="checkbox" type="checkbox"  value="B.L.Ed" name="Competitive Exams">B.L.Ed<br>
<input class="checkbox" type="checkbox"  value="Bank Clerical Exam" name="Competitive Exams">Bank Clerical Exam<br>
<input class="checkbox" type="checkbox"  value="Bank PO" name="Competitive Exams">Bank PO<br>
<input class="checkbox" type="checkbox"  value="Chartered Accountant" name="Competitive Exams">Chartered Accountant<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="Competitive Exams">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Combined Defence Services" name="Competitive Exams">Combined Defence Services<br>
<input class="checkbox" type="checkbox"  value="Common Apptitute Test - CAT" name="Competitive Exams">Common Apptitute Test - CAT<br>
<input class="checkbox" type="checkbox"  value="Common Entrance Test - CET" name="Competitive Exams">Common Entrance Test - CET<br>
<input class="checkbox" type="checkbox"  value="Computer Science" name="Competitive Exams">Computer Science<br>
<input class="checkbox" type="checkbox"  value="Engineering Entrance Exam" name="Competitive Exams">Engineering Entrance Exam<br>
<input class="checkbox" type="checkbox"  value="English" name="Competitive Exams">English<br>
<input class="checkbox" type="checkbox"  value="Foreign Education Exam" name="Competitive Exams">Foreign Education Exam<br>
<input class="checkbox" type="checkbox"  value="GATE" name="Competitive Exams">GATE<br>
<input class="checkbox" type="checkbox"  value="GMAT" name="Competitive Exams">GMAT<br>
<input class="checkbox" type="checkbox"  value="GRE" name="Competitive Exams">GRE<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Competitive Exams">Hindi<br>
<input class="checkbox" type="checkbox"  value="IAS" name="Competitive Exams">IAS<br>
<input class="checkbox" type="checkbox"  value="IIT" name="Competitive Exams">IIT<br>
<input class="checkbox" type="checkbox"  value="IIT JEE" name="Competitive Exams">IIT JEE<br>
<input class="checkbox" type="checkbox"  value="Indian Forest Service" name="Competitive Exams">Indian Forest Service<br>
<input class="checkbox" type="checkbox"  value="JEE" name="Competitive Exams">JEE<br>
<input class="checkbox" type="checkbox"  value="Judicial Entrance Exam" name="Competitive Exams">Judicial Entrance Exam<br>
<input class="checkbox" type="checkbox"  value="Law Entrance Exam" name="Competitive Exams">Law Entrance Exam<br>
<input class="checkbox" type="checkbox"  value="LIC" name="Competitive Exams">LIC<br>
<input class="checkbox" type="checkbox"  value="MAT" name="Competitive Exams">MAT<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Competitive Exams">Mathematics<br>
<input class="checkbox" type="checkbox"  value="MBA" name="Competitive Exams">MBA<br>
<input class="checkbox" type="checkbox"  value="Medical Entrance Exam" name="Competitive Exams">Medical Entrance Exam<br>
<input class="checkbox" type="checkbox"  value="National Defence Academy" name="Competitive Exams">National Defence Academy<br>
<input class="checkbox" type="checkbox"  value="NET" name="Competitive Exams">NET<br>
<input class="checkbox" type="checkbox"  value="NTSE Exam" name="Competitive Exams">NTSE Exam<br>
<input class="checkbox" type="checkbox"  value="Physics" name="Competitive Exams">Physics<br>
<input class="checkbox" type="checkbox"  value="Railway" name="Competitive Exams">Railway<br>
<input class="checkbox" type="checkbox"  value="SAT" name="Competitive Exams">SAT<br>
<input class="checkbox" type="checkbox"  value="SSB Exam" name="Competitive Exams">SSB Exam<br>
<input class="checkbox" type="checkbox"  value="SSC" name="Competitive Exams">SSC<br>
<input class="checkbox" type="checkbox"  value="TOEFL" name="Competitive Exams">TOEFL<br>
<input class="checkbox" type="checkbox"  value="UPSC Exam" name="Competitive Exams">UPSC Exam<br>
</div>
</div>
</div>
</div> 
<div class="col-xs-12">
           <div class="control-group hideenggentrance" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Engineering Entrance / IIT JEE</label>
                    <div class="controls">
                    <div class="checkboxitems" id="iitbox">
                    <input class="checkbox" type="checkbox"  value="Aptitude" name="IIT-JEE">Aptitude<br>
<input class="checkbox" type="checkbox"  value="Biology" name="IIT-JEE">Biology<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="IIT-JEE">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="IIT-JEE">Drawing<br>
<input class="checkbox" type="checkbox"  value="English" name="IIT-JEE">English<br>
<input class="checkbox" type="checkbox"  value="Logical Reasoning" name="IIT-JEE">Logical Reasoning<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="IIT-JEE">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Physics" name="IIT-JEE">Physics<br>

                    </div>
                    </div>
                    </div>
                    </div>
    <div class="col-xs-12">
           <div class="control-group hideengg" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Engineering Subjects</label>
                    <div class="controls">
                    <div class="checkboxitems" id="enggbox">
                    <input class="checkbox" type="checkbox"  value="Basic Electrical Technology" name="Engineering Subjects">Basic Electrical Technology<br>
<input class="checkbox" type="checkbox"  value="Basic Thermodynamics" name="Engineering Subjects">Basic Thermodynamics<br>
<input class="checkbox" type="checkbox"  value="Compiler Design" name="Engineering Subjects">Compiler Design<br>
<input class="checkbox" type="checkbox"  value="Engineering Chemistry" name="Engineering Subjects">Engineering Chemistry<br>
<input class="checkbox" type="checkbox"  value="Engineering Mechanic" name="Engineering Subjects">Engineering Mechanic<br>
<input class="checkbox" type="checkbox"  value="Engineering Physics" name="Engineering Subjects">Engineering Physics<br>
<input class="checkbox" type="checkbox"  value="Environment And Ecology" name="Engineering Subjects">Environment And Ecology<br>
<input class="checkbox" type="checkbox"  value="Mathematics" name="Engineering Subjects">Mathematics<br>
<input class="checkbox" type="checkbox"  value="Waves" name="Engineering Subjects">Waves<br>
</div>
</div>
</div>
</div>
<div class="col-xs-12">
           <div class="control-group hidegre" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >GRE/ GMAT / TOEFL / IELTS</label>
                    <div class="controls">
                    <div class="checkboxitems" id="grebox">
                <input class="checkbox" type="checkbox"  value="GMAT" name="GRE/GMAT/TOEFL/IELTS">GMAT<br>
<input class="checkbox" type="checkbox"  value="GRE" name="GRE/GMAT/TOEFL/IELTS">GRE<br>
<input class="checkbox" type="checkbox"  value="IELTS" name="GRE/GMAT/TOEFL/IELTS">IELTS<br>
<input class="checkbox" type="checkbox"  value="TOEFL" name="GRE/GMAT/TOEFL/IELTS">TOEFL<br>
</div>
</div>
</div>
</div>     
      <div class="col-xs-12">
           <div class="control-group hidehobby" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Hobby / Creativity</label>
                    <div class="controls">
                    <div class="checkboxitems" id="hobbybox">
                    <input class="checkbox" type="checkbox"  value="Belly Dance" name="Hobby/Creativity">Belly Dance<br>
<input class="checkbox" type="checkbox"  value="Clay Modelling" name="Hobby/Creativity">Clay Modelling<br>
<input class="checkbox" type="checkbox"  value="Cooking" name="Hobby/Creativity">Cooking<br>
<input class="checkbox" type="checkbox"  value="Designing" name="Hobby/Creativity">Designing<br>
<input class="checkbox" type="checkbox"  value="Drawing" name="Hobby/Creativity">Drawing<br>
<input class="checkbox" type="checkbox"  value="Driving" name="Hobby/Creativity">Driving<br>
<input class="checkbox" type="checkbox"  value="Fine Arts" name="Hobby/Creativity">Fine Arts<br>
<input class="checkbox" type="checkbox"  value="Handwriting" name="Hobby/Creativity">Handwriting<br>
<input class="checkbox" type="checkbox"  value="Harmonium" name="Hobby/Creativity">Harmonium<br>
<input class="checkbox" type="checkbox"  value="Music" name="Hobby/Creativity">Music<br>
<input class="checkbox" type="checkbox"  value="Painting" name="Hobby/Creativity">Painting<br>
<input class="checkbox" type="checkbox"  value="Photography" name="Hobby/Creativity">Photography<br>
<input class="checkbox" type="checkbox"  value="Playing Guitar" name="Hobby/Creativity">Playing Guitar<br>
<input class="checkbox" type="checkbox"  value="Reading" name="Hobby/Creativity">Reading<br>
<input class="checkbox" type="checkbox"  value="Sports" name="Hobby/Creativity">Sports<br>
<input class="checkbox" type="checkbox"  value="Swimming" name="Hobby/Creativity">Swimming<br>
<input class="checkbox" type="checkbox"  value="Tailoring" name="Hobby/Creativity">Tailoring<br>
<input class="checkbox" type="checkbox"  value="Writing" name="Hobby/Creativity">Writing<br>
<input class="checkbox" type="checkbox"  value="Yoga" name="Hobby/Creativity">Yoga<br>

                    </div>
                    </div>
                    </div>
                    </div>
         <div class="col-xs-12">
           <div class="control-group hidelanguage" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Language</label>
                    <div class="controls">
                    <div class="checkboxitems" id="languagebox">
                    <input class="checkbox" type="checkbox"  value="Arabic" name="Language">Arabic<br>
<input class="checkbox" type="checkbox"  value="Bengali" name="Language">Bengali<br>
<input class="checkbox" type="checkbox"  value="Business English" name="Language">Business English<br>
<input class="checkbox" type="checkbox"  value="Chinese" name="Language">Chinese<br>
<input class="checkbox" type="checkbox"  value="Danish" name="Language">Danish<br>
<input class="checkbox" type="checkbox"  value="Dutch" name="Language">Dutch<br>
<input class="checkbox" type="checkbox"  value="English" name="Language">English<br>
<input class="checkbox" type="checkbox"  value="French" name="Language">French<br>
<input class="checkbox" type="checkbox"  value="German" name="Language">German<br>
<input class="checkbox" type="checkbox"  value="Hindi" name="Language">Hindi<br>
<input class="checkbox" type="checkbox"  value="Italian" name="Language">Italian<br>
<input class="checkbox" type="checkbox"  value="Japanese" name="Language">Japanese<br>
<input class="checkbox" type="checkbox"  value="Japanese" name="Language">Japanese<br>
<input class="checkbox" type="checkbox"  value="Kannada Speaking" name="Language">Kannada Speaking<br>
<input class="checkbox" type="checkbox"  value="Korean" name="Language">Korean<br>
<input class="checkbox" type="checkbox"  value="Language" name="Language">Language<br>
<input class="checkbox" type="checkbox"  value="Malyalam" name="Language">Malyalam<br>
<input class="checkbox" type="checkbox"  value="Marathi" name="Language">Marathi<br>
<input class="checkbox" type="checkbox"  value="Persian" name="Language">Persian<br>
<input class="checkbox" type="checkbox"  value="Portuguese" name="Language">Portuguese<br>
<input class="checkbox" type="checkbox"  value="Punjabi Language" name="Language">Punjabi Language<br>
<input class="checkbox" type="checkbox"  value="Russian" name="Language">Russian<br>
<input class="checkbox" type="checkbox"  value="Sanskrit" name="Language">Sanskrit<br>
<input class="checkbox" type="checkbox"  value="Spanish" name="Language">Spanish<br>
<input class="checkbox" type="checkbox"  value="Swedish" name="Language">Swedish<br>
<input class="checkbox" type="checkbox"  value="Tamil Speaking Classes" name="Language">Tamil Speaking Classes<br>
<input class="checkbox" type="checkbox"  value="Telugu Speaking Classes" name="Language">Telugu Speaking Classes<br>
<input class="checkbox" type="checkbox"  value="Thai Speaking Classes" name="Language">Thai Speaking Classes<br>
<input class="checkbox" type="checkbox"  value="Urdu" name="Language">Urdu<br>
</div>
</div>
</div>
</div>           
   <div class="col-xs-12">
           <div class="control-group hidelaw" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Law / Judiciary</label>
                    <div class="controls">
                    <div class="checkboxitems" id="lawsbox">  
                    <input class="checkbox" type="checkbox"  value="Company Law" name="Laws/Judiciary"> Company Law<br>
<input class="checkbox" type="checkbox"  value="Contract" name="Laws/Judiciary"> Contract<br>
<input class="checkbox" type="checkbox"  value="Family Law" name="Laws/Judiciary"> Family Law<br>
<input class="checkbox" type="checkbox"  value="Administrative Law" name="Laws/Judiciary">Administrative Law<br>
<input class="checkbox" type="checkbox"  value="Arbitration, Conciliation And Alternate Dispute" name="Laws/Judiciary">Arbitration, Conciliation And Alternate Dispute<br>
<input class="checkbox" type="checkbox"  value="Civil Procedure & Limitation - CPC" name="Laws/Judiciary">Civil Procedure & Limitation - CPC<br>
<input class="checkbox" type="checkbox"  value="Company Law" name="Laws/Judiciary">Company Law<br>
<input class="checkbox" type="checkbox"  value="Constitutional Law Of India" name="Laws/Judiciary">Constitutional Law Of India<br>
<input class="checkbox" type="checkbox"  value="Consumer Protection Laws" name="Laws/Judiciary">Consumer Protection Laws<br>
<input class="checkbox" type="checkbox"  value="CR.P.C.criminal Procedure, Juvenile Justice" name="Laws/Judiciary">CR.P.C.criminal Procedure, Juvenile Justice<br>
<input class="checkbox" type="checkbox"  value="Criminology & Penology" name="Laws/Judiciary">Criminology & Penology<br>
<input class="checkbox" type="checkbox"  value="Environmental Law" name="Laws/Judiciary">Environmental Law<br>
<input class="checkbox" type="checkbox"  value="Family Law" name="Laws/Judiciary">Family Law<br>
<input class="checkbox" type="checkbox"  value="Interpretation Of Statutes" name="Laws/Judiciary">Interpretation Of Statutes<br>
<input class="checkbox" type="checkbox"  value="IPC - Law Of Crimes" name="Laws/Judiciary">IPC - Law Of Crimes<br>
<input class="checkbox" type="checkbox"  value="Jurisprudence" name="Laws/Judiciary">Jurisprudence<br>
<input class="checkbox" type="checkbox"  value="Labour Law" name="Laws/Judiciary">Labour Law<br>
<input class="checkbox" type="checkbox"  value="Land Laws - Including Revenue Ceiling Laws" name="Laws/Judiciary">Land Laws - Including Revenue Ceiling Laws<br>
<input class="checkbox" type="checkbox"  value="Law" name="Laws/Judiciary">Law<br>
<input class="checkbox" type="checkbox"  value="Law Of Evidence" name="Laws/Judiciary">Law Of Evidence<br>
<input class="checkbox" type="checkbox"  value="Legal History" name="Laws/Judiciary">Legal History<br>
<input class="checkbox" type="checkbox"  value="Legal Language & Legal Writing" name="Laws/Judiciary">Legal Language & Legal Writing<br>
<input class="checkbox" type="checkbox"  value="Moot Court Pre-trail Preparations & Participation" name="Laws/Judiciary">Moot Court Pre-trail Preparations & Participation<br>
<input class="checkbox" type="checkbox"  value="PIL - Public Interest Lawyering, Legal Aid" name="Laws/Judiciary">PIL - Public Interest Lawyering, Legal Aid<br>
<input class="checkbox" type="checkbox"  value="Professional Ethics" name="Laws/Judiciary">Professional Ethics<br>
<input class="checkbox" type="checkbox"  value="Property Law & Easement" name="Laws/Judiciary">Property Law & Easement<br>
<input class="checkbox" type="checkbox"  value="Public International Law & Human Rights" name="Laws/Judiciary">Public International Law & Human Rights<br>
<input class="checkbox" type="checkbox"  value="Women & Law And Law Relating To Child" name="Laws/Judiciary">Women & Law And Law Relating To Child<br>

                    </div>
                    </div>
                    </div>
                    </div>
           <div class="col-xs-12">
           <div class="control-group hidemtech" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >M.Tech</label>
                    <div class="controls">
                    <div class="checkboxitems" id="mtechbox">
                    <input class="checkbox" type="checkbox"  value="Advanced Database Management Systems" name="M.TECH">Advanced Database Management Systems<br>
<input class="checkbox" type="checkbox"  value="Advanced Software Engineering" name="M.TECH">Advanced Software Engineering<br>
<input class="checkbox" type="checkbox"  value="Algorithms And Algorithmic Complexity" name="M.TECH">Algorithms And Algorithmic Complexity<br>
<input class="checkbox" type="checkbox"  value="Bioinformatics" name="M.TECH">Bioinformatics<br>
<input class="checkbox" type="checkbox"  value="Cluster And Grid Computing" name="M.TECH">Cluster And Grid Computing<br>
<input class="checkbox" type="checkbox"  value="Cryptography And Network Security" name="M.TECH">Cryptography And Network Security<br>
<input class="checkbox" type="checkbox"  value="Distributed Systems" name="M.TECH">Distributed Systems<br>
<input class="checkbox" type="checkbox"  value="Embedded Systems" name="M.TECH">Embedded Systems<br>
<input class="checkbox" type="checkbox"  value="Image Processing" name="M.TECH">Image Processing<br>
<input class="checkbox" type="checkbox"  value="Mobile And Wireless Computing" name="M.TECH">Mobile And Wireless Computing<br>
<input class="checkbox" type="checkbox"  value="Multimedia System" name="M.TECH">Multimedia System<br>
<input class="checkbox" type="checkbox"  value="Natural Language Processing" name="M.TECH">Natural Language Processing<br>
<input class="checkbox" type="checkbox"  value="Real-time Systems" name="M.TECH">Real-time Systems<br>
<input class="checkbox" type="checkbox"  value="Soft Computing" name="M.TECH">Soft Computing<br>
<input class="checkbox" type="checkbox"  value="VLSI Design" name="M.TECH">VLSI Design<br>

                    </div>
                    </div>
                    </div>
                    </div>
              <div class="col-xs-12">
           <div class="control-group hidemedical" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Medical Entrance / AIPMT</label>
                    <div class="controls">
                    <div class="checkboxitems" id="medicalbox">
                    <input class="checkbox" type="checkbox"  value="Biology" name="Medical Enterance">Biology<br>
<input class="checkbox" type="checkbox"  value="Chemistry" name="Medical Enterance">Chemistry<br>
<input class="checkbox" type="checkbox"  value="Physics" name="Medical Enterance">Physics<br>

                    </div>
                    </div>
                    </div>
                    </div>
                    <div class="col-xs-12">
           <div class="control-group hidemba" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >MBA / BBA</label>
                    <div class="controls">
                    <div class="checkboxitems" id="mbabox"> 
                    <input class="checkbox" type="checkbox"  value="Accommodation Management" name="MBA / BBA">Accommodation Management<br>
<input class="checkbox" type="checkbox"  value="Accounting For Management" name="MBA / BBA">Accounting For Management<br>
<input class="checkbox" type="checkbox"  value="Applied Operations Research" name="MBA / BBA">Applied Operations Research<br>
<input class="checkbox" type="checkbox"  value="Basic Accounting" name="MBA / BBA">Basic Accounting<br>
<input class="checkbox" type="checkbox"  value="Basic Business Communication" name="MBA / BBA">Basic Business Communication<br>
<input class="checkbox" type="checkbox"  value="Basic Business Statistics" name="MBA / BBA">Basic Business Statistics<br>
<input class="checkbox" type="checkbox"  value="Business Environment" name="MBA / BBA">Business Environment<br>
<input class="checkbox" type="checkbox"  value="Business Laws" name="MBA / BBA">Business Laws<br>
<input class="checkbox" type="checkbox"  value="Business Mathematics" name="MBA / BBA">Business Mathematics<br>
<input class="checkbox" type="checkbox"  value="Communication & Soft Skills" name="MBA / BBA">Communication & Soft Skills<br>
<input class="checkbox" type="checkbox"  value="Corporate Legal Environment" name="MBA / BBA">Corporate Legal Environment<br>
<input class="checkbox" type="checkbox"  value="Corporate Strategy" name="MBA / BBA">Corporate Strategy<br>
<input class="checkbox" type="checkbox"  value="Cost Accounting" name="MBA / BBA">Cost Accounting<br>
<input class="checkbox" type="checkbox"  value="Database System" name="MBA / BBA">Database System<br>
<input class="checkbox" type="checkbox"  value="Entrepreneurship" name="MBA / BBA">Entrepreneurship<br>
<input class="checkbox" type="checkbox"  value="Financial Management" name="MBA / BBA">Financial Management<br>
<input class="checkbox" type="checkbox"  value="Food & Beverage Management" name="MBA / BBA">Food & Beverage Management<br>
<input class="checkbox" type="checkbox"  value="Food Science, Nutrition & Dietetics Management" name="MBA / BBA">Food Science, Nutrition & Dietetics Management<br>
<input class="checkbox" type="checkbox"  value="Human Resource Management" name="MBA / BBA">Human Resource Management<br>
<input class="checkbox" type="checkbox"  value="Information Technology In Management" name="MBA / BBA">Information Technology In Management<br>
<input class="checkbox" type="checkbox"  value="Introduction To Computers" name="MBA / BBA">Introduction To Computers<br>
<input class="checkbox" type="checkbox"  value="Legal Environment Of Indian Business" name="MBA / BBA">Legal Environment Of Indian Business<br>
<input class="checkbox" type="checkbox"  value="Logistics Managements" name="MBA / BBA">Logistics Managements<br>
<input class="checkbox" type="checkbox"  value="Macro Economics" name="MBA / BBA">Macro Economics<br>
<input class="checkbox" type="checkbox"  value="Management Information System" name="MBA / BBA">Management Information System<br>
<input class="checkbox" type="checkbox"  value="Managerial Economics" name="MBA / BBA">Managerial Economics<br>
<input class="checkbox" type="checkbox"  value="Marketing Management" name="MBA / BBA">Marketing Management<br>
<input class="checkbox" type="checkbox"  value="Micro Economics" name="MBA / BBA">Micro Economics<br>
<input class="checkbox" type="checkbox"  value="Operation Research" name="MBA / BBA">Operation Research<br>
<input class="checkbox" type="checkbox"  value="Organizational Behavior" name="MBA / BBA">Organizational Behavior<br>
<input class="checkbox" type="checkbox"  value="Principles & Practices Of Management" name="MBA / BBA">Principles & Practices Of Management<br>
<input class="checkbox" type="checkbox"  value="Production And Operation Management" name="MBA / BBA">Production And Operation Management<br>
<input class="checkbox" type="checkbox"  value="Production And Operation Management" name="MBA / BBA">Production And Operation Management<br>
<input class="checkbox" type="checkbox"  value="Project Management" name="MBA / BBA">Project Management<br>
<input class="checkbox" type="checkbox"  value="Quantitative Techniques" name="MBA / BBA">Quantitative Techniques<br>
<input class="checkbox" type="checkbox"  value="Research Methodology" name="MBA / BBA">Research Methodology<br>
<input class="checkbox" type="checkbox"  value="Specialization Major" name="MBA / BBA">Specialization Major<br>
<input class="checkbox" type="checkbox"  value="Strategic Management" name="MBA / BBA">Strategic Management<br>

                    </div>
                    </div>
                    </div>
                    </div>   
                    
         <div class="col-xs-12">
           <div class="control-group hidemusic" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Music</label>
                    <div class="controls">
                    <div class="checkboxitems" id="musicbox">
                    <input class="checkbox" type="checkbox"  value="Carnatic Music Classes" name="Music">Carnatic Music Classes<br>
<input class="checkbox" type="checkbox"  value="Casio" name="Music">Casio<br>
<input class="checkbox" type="checkbox"  value="Dholak" name="Music">Dholak<br>
<input class="checkbox" type="checkbox"  value="Drum" name="Music">Drum<br>
<input class="checkbox" type="checkbox"  value="Flute" name="Music">Flute<br>
<input class="checkbox" type="checkbox"  value="Flute" name="Music">Flute<br>
<input class="checkbox" type="checkbox"  value="Harmonium" name="Music">Harmonium<br>
<input class="checkbox" type="checkbox"  value="Indian Instrumental Music" name="Music">Indian Instrumental Music<br>
<input class="checkbox" type="checkbox"  value="Keyboard" name="Music">Keyboard<br>
<input class="checkbox" type="checkbox"  value="Keyboard" name="Music">Keyboard<br>
<input class="checkbox" type="checkbox"  value="Mouth Organ" name="Music">Mouth Organ<br>
<input class="checkbox" type="checkbox"  value="Piano" name="Music">Piano<br>
<input class="checkbox" type="checkbox"  value="Rhythm Pad" name="Music">Rhythm Pad<br>
<input class="checkbox" type="checkbox"  value="Santoor" name="Music">Santoor<br>
<input class="checkbox" type="checkbox"  value="Saxophone" name="Music">Saxophone<br>
<input class="checkbox" type="checkbox"  value="Sitaar" name="Music">Sitaar<br>
<input class="checkbox" type="checkbox"  value="Tabla" name="Music">Tabla<br>
<input class="checkbox" type="checkbox"  value="Veena" name="Music">Veena<br>
<input class="checkbox" type="checkbox"  value="Violin" name="Music">Violin<br>
<input class="checkbox" type="checkbox"  value="Western Music Classes" name="Music">Western Music Classes<br>
</div>
</div>
</div>
</div>     
<div class="col-xs-12">
           <div class="control-group hideenglish" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >SPOKEN ENGLISH</label>
                    <div class="controls">
                    <div class="checkboxitems" id="englishbox">
                    <input class="checkbox" type="checkbox"  value="Business English" name="Spoken English">Business English<br>
<input class="checkbox" type="checkbox"  value="English" name="Spoken English">English<br>
<input class="checkbox" type="checkbox"  value="English Speaking Basics" name="Spoken English">English Speaking Basics<br>
<input class="checkbox" type="checkbox"  value="Regular English" name="Spoken English">Regular English<br>
<input class="checkbox" type="checkbox"  value="Spoken English" name="Spoken English">Spoken English<br>
</div>
</div>
</div>
</div> 
<div class="col-xs-12">
           <div class="control-group hidespecial" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >SPECIAL EDUCATOR</label>
                    <div class="controls">
                    <div class="checkboxitems" id="specialbox">
                    <input class="checkbox" type="checkbox"  value="Autism" name="Special Educators">Autism<br>
<input class="checkbox" type="checkbox"  value="Blind Therapist" name="Special Educators">Blind Therapist<br>
<input class="checkbox" type="checkbox"  value="Disability / Dyslexia" name="Special Educators">Disability / Dyslexia<br>
<input class="checkbox" type="checkbox"  value="Dyscalculia" name="Special Educators">Dyscalculia<br>
<input class="checkbox" type="checkbox"  value="Hearing Impaired" name="Special Educators">Hearing Impaired<br>
<input class="checkbox" type="checkbox"  value="Mathematics Disability" name="Special Educators">Mathematics Disability<br>
<input class="checkbox" type="checkbox"  value="Mentally Retarded" name="Special Educators">Mentally Retarded<br>
<input class="checkbox" type="checkbox"  value="Reading Disability" name="Special Educators">Reading Disability<br>
<input class="checkbox" type="checkbox"  value="Speech Impaired Therapy" name="Special Educators">Speech Impaired Therapy<br>
<input class="checkbox" type="checkbox"  value="Speech Therapist" name="Special Educators">Speech Therapist<br>
<input class="checkbox" type="checkbox"  value="Writing Disability" name="Special Educators">Writing Disability<br>
</div>
</div>
</div>
</div>
<div class="col-xs-12">
           <div class="control-group  hidesports" style="display:none" >
                    <!-- Plan Selection -->
                    <label class="control-label" >Sports Training / Fitness</label>
                    <div class="controls">
                    <div class="checkboxitems" id="sportsbox">
                    <input class="checkbox" type="checkbox"  value="Cricket" name="Sports Class/Fitness/Yoga">Cricket<br>
<input class="checkbox" type="checkbox"  value="Football" name="Sports Class/Fitness/Yoga">Football<br>
<input class="checkbox" type="checkbox"  value="Volley Ball" name="Sports Class/Fitness/Yoga">Volley Ball<br>
</div>
</div>
</div>
</div>                               

                <button class="btn btn-primary nextBtn btn-lg"  type="submit">Register</button>
            
        

        
    </form>
</div>
</section>


<!--copy rights start here-->

<div class="copy-right">
	<div class="container">
		 <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
    	    <p>&copy; 2016-2018 GharPeShiksha.com (Tenali Education Academy Pvt. Ltd.) All Rights Reserved</p>
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
<%} }%>
</html>

  
