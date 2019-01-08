<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Login.Entity.StudentDetail" %>
  <%@ page import="static com.Login.database.OfyService.*"%>
 <% if(session.getAttribute("Phone")==null)
{%>
<p>Your Session has expired,Kindly Login to view Page </p>
<%}else
{
%> 
<!DOCTYPE HTML>
<html>

<head>
	<title>Ghar Pe Shiksha : Home Tuition in Delhi | Home Tutors in Delhi</title>
	<meta name="description" content="Get experienced qualified home tutor, home tuition in Delhi, private tutor, home tution within 30 minutes.We are providing best home tutor in Delhi and NCR.Our services are free for parents and students.">
	<meta name="google-site-verification" content="GRuVvnG62AR1Y023vQBV0WPzY0JhjZFajHswVxYosbs" />
	<meta name="author" content="GharPeShiksha">
	<meta name="theme-color" content="#43c0f6">
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery-1.11.0.min.js"></script>

	<!-- Custom Theme files -->
	<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="../css/home_style.css" rel="stylesheet" type="text/css" media="all" />
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
    
    
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="../css/reason-to-teach.css">
	<meta name="keywords" content="home tuition in delhi, home tutors in delhi,home tutor jobs,home tuition bureau in delhi, home tutor, best home tuition providers,maths home tutor,english home tutor,private tutor, home tutor,english speaking home tuition, french home tuition, home tutor in west delhi" >
   <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/path/to/parallax.js"></script>
	
	
    
    
    
    
    <!-- start-smoth-scrolling -->
	<script type="text/javascript" async  src="../js/move-top.js"></script>
	<script type="text/javascript" async src="../js/easing.js"></script>
	<script type="text/javascript" async src="../js/subjects.js"></script>
	<!-- //end-smoth-scrolling -->
	
	<!-- animated-css -->
	<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="../js/wow.min.js" async></script>

	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

	<!-- animated-css -->
	<script src="../js/bootstrap.min.js"></script>
	<link href="../css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="favicon.png" type="image/x-icon">
	<link href="../plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
	<link href="../css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css'>
	<link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick-theme.css'>
	<link rel='stylesheet prefetch' href='https://unpkg.com/rangeable@latest/dist/rangeable.min.css'>
	<link href="../css/modal_popup.css" rel="stylesheet" type="text/css">
	<link href="../css/owl.carousel.css" rel="stylesheet">
	<link href="../css/owl.theme.css" rel="stylesheet">
	<link rel="stylesheet" href="../cs/style.css">
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<style>
	
        @media screen and (max-width:768px){
            .modal-sm{width: 300px;}
        }    
        
        
        
	 @media screen and (min-width: 960px) {
  .student_top_icon_section ul.icon_holder_main li {
    margin: 18px 80px 0 0 !important;
      }
        }  
 @media screen and (max-width: 769px) {
  .image-cent {
   display:none;
      }
     .student_top_icon_section ul.icon_holder_main li{
             margin: 5px 0px 5px 0px !important;
     }
        }        
        
       @media screen and (max-width: 600px) {
  .tutor-list {
    margin: 20px auto !important;
      }
           .getContact{
               text-align: -webkit-center;
           }           
        }   
        
        /*  @media screen and (max-width: 420px) {
  #scrollable-div {
    height: 534px !important;
      }
        }  
        */
        
  @media screen and (min-width: 1200px) {
  .custom-width {
    width: 80% !important;
      }
        }        
        
        @media screen and (min-width: 1200px) {
  .list li {
    padding: 20px !important;
      }
        }    
        
    
          
   @media screen and (min-width:1200px){
   .posted {
   text-align:right;}
   .responded {
   text-align:left;}
   .closed {
   text-align:left;}
   }     
      
@media screen and (min-width:1200px){
.borderneeded{
border-bottom: 2px solid darkgray;
}
.marginneeded{
margin-top:40px;
}
}

@media screen and (max-width:1200px)	{
.mobileview{border-bottom:2px solid darkgrey;}
.posted{margin-top:40px;}
}  
        
        
        
        .tutor-list tr td{
            padding:8px;
        }  
        
        
        
        
    .student_top_icon_section ul.icon_holder_main, .video_upload_section {
    text-align: center;
}
        
        
        ul.icon_holder_main {
    margin: 0 0 20px;
    padding: 0;
    display: block;
    overflow: hidden;
    text-align: center;
}
        .student_top_icon_section ul.icon_holder_main li {
    width: 248px;
    margin: 0 16px 0 0;
    display: inline-block;
    float: none;
}
        ul.icon_holder_main li {
    background: #fff;
    display: block;
    margin: 0 2.5% 0 0;
    padding: 0;
    width: 23%;
    box-sizing: border-box;
    float: left;
    /*border: 1px solid #cdcdcd; */
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
}
      .student_top_icon_section ul.icon_holder_main li .iconholder {
    float: none;
    display: table-cell;
    vertical-align: middle;
}
        
        
        ul.icon_holder_main li .iconholder {
    margin: 0;
    padding: 5%;
    display: block;
    text-align: center;
    float: left;
    width: 70px;
    height: 80px;
    line-height: 46px;
    font-size: 32px;
    -webkit-border-top-left-radius: 6px;
    -moz-border-radius-topleft: 6px;
    border-top-left-radius: 6px;
    -webkit-border-bottom-left-radius: 6px;
    -moz-border-radius-bottomleft: 6px;
    border-bottom-left-radius: 6px;
    border-right: 1px solid #dddbdb;
}
        .student_top_icon_section ul.icon_holder_main li .txt_holder {
    width: 189px;
    float: none;
    display: table-cell;
    vertical-align: middle;
}
        ul.icon_holder_main li .txt_holder {
    margin: 0;
    padding: 15px 10px;
    display: block;
    text-align: center;
    line-height: 20px;
    font-size: 16px;
    float: left;
    width: 135px;
}
        
        ul.icon_holder_main li .blue, ul.icon_holder_main li .dark, ul.icon_holder_main li .green, ul.icon_holder_main li .orange, ul.icon_holder_main li .red {
    background: #fff;
    background: -moz-radial-gradient(center,ellipse cover,#fff 0,#f4f4f4 100%);
    background: -webkit-radial-gradient(center,ellipse cover,#fff 0,#f4f4f4 100%);
    background: radial-gradient(ellipse at center,#fff 0,#f4f4f4 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f4f4f4', GradientType=1 );
    color: dodgerblue;
    font-weight: 300;
}
       ul.icon_holder_main li .iconholder i {
    font-weight: 300;
}
        .fa {
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
        .fa, .fa-stack {
    display: inline-block;
}
        
    
        .list li{
            padding:10px;
            text-align: left;
        }
    
        .btn-default{
            border:none !important;
            border-radius: 40px;
        } 
        .dropdown-menu > li > a:hover{
            background: dodgerblue;
            color:white;
        }
    
        .form-group input[type= submit]:hover{
            background-color: none;
            border-color:none;
        }        
               .dropdown-menu > li:nth-child(4) {
		background: dodgerblue;
		color:white;
	}
	
.paddingneeded{
padding:0px 0px 10px 0px;
}
.badge{
font-size:90%;
background:indianred;
border-radius:2.25rem;
vertical-align:super;
}	
	
        
        
 #return-to-top {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background: rgb(0, 0, 0);
    background: #8CC0F6;
    width: 50px;
    height: 50px;
    display: block;
    text-decoration: none;
    -webkit-border-radius: 35px;
    -moz-border-radius: 35px;
    border-radius: 35px;
    display: none;
    -webkit-transition: all 0.3s linear;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
#return-to-top i {
    color: #fff;
    margin: 0;
    position: relative;
    left: 16px;
    top: 13px;
    font-size: 19px;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
#return-to-top:hover {
    background: #8CC0F6;
}
#return-to-top:hover i {
    color: #fff;
    top: 5px;
}        
        
 .brd-box {
    border: 1px solid gray;
    padding: 9px 20px;
    margin: 25px;
    /* background: #15b3e259; */
    background-image: url(../image/courses_background.jpg);
    box-shadow: 1px 2px 14px 3px #888888;
}       
        
        
        
               
        /* width */
#scrollable-div::-webkit-scrollbar {
  width: 20px;
}

/* Track */
#scrollable-div::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 10px;
}
 
/* Handle */
#scrollable-div::-webkit-scrollbar-thumb {
  background: darkgray; 
  border-radius: 10px;
}

/* Handle on hover */
#scrollable-div::-webkit-scrollbar-thumb:hover {
  background: gray; 
}
    
      .close-btn{
           opacity: 0.3;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
            pointer-events: none;
        }
        
        
        .repost-btn{
         transition: .5s ease;
  opacity: 1;
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
         .blur-div{
            position: relative;
        }
         
          a:hover, a:focus{
            text-decoration: none !important;
        }   
        
        
        
        
        
        
	</style>
	</head>
	<body style="overflow-x:hidden;margin-top:5px; padding-right: 0px !important; /*background-image:url('image/courses_background.jpg');*/ background: #bacbdc17;  background: linear-gradient(rgba(255,255,255,.85), rgba(255,255,255,.85)), url('../image/icon1.jpg');">

		<!--header start here-->
	<!-- NAVBAR
		================================================== -->
	<div>
		<div class="fixed-header navbar-fixed-top">

			<div class="navbar-wrapper" style="padding:0em; line-height: 50px;">
		

				<div>

					<nav class="navbar navbar-inverse navbar-static-top">
						<div class="navbar-header">
			

							<div class="logo wow slideInLeft" data-wow-delay="0.3s">
								<a class="navbar-brand" href="StudentAccount.jsp">
									<img src="../images/new_01.png" class="img-responsive">
								</a>
							</div>
						</div>

                        <div class="dropdown" style="float:right;">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"  ><img src="../image/teacher.jpg" width="50px" height="50px" style="margin:auto; display:unset;border-radius:30px;" class="img-responsive" alt="user photo">
    <span class="caret"></span></button>
    <ul class="dropdown-menu" style="left: -85px; font-weight: bold;">
      <li class="dropdown-header" style="font-size:17px;">Hello, <%=session.getAttribute("User_Name")%></li>
        <li class="divider"></li>
      <li><a href="StudentAccount.jsp">Dashboard</a></li>
      <li><a href="requirements.jsp" style="color:white;">My Requirements</a></li>
        <li class="divider"></li>
        <li><a href="settings.jsp">Account Settings</a></li>
      <li class="divider"></li>
      <!--<li class="dropdown-header">Dropdown header 2</li>-->
      <li><a href="\logout">Log Out</a></li>
    </ul>
  </div>
                        
                        
                        
                        
						
						<div class="clearfix"> </div>
					</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--header end here-->
    
        
        
        
        
        <!--profile-pic section starts here-->
        
        
        <div class="container"  style="margin-top:52px;">
        <div class="row">
           
           
            
            <div class="student_top_icon_section" style="margin-top: 10px; padding:10px; margin-top;10px; background-image:url('../image/bluevector.png');">
<ul class="icon_holder_main">
    <li>
        <a href="requirements.jsp">
        <div class="iconholder green"><img class="imag" src="../images/requirements.png" width="40" height="40"></div>
        <div class="txt_holder"><span><%=session.getAttribute("Enquiry_Count") %></span> Requirements Posted</div>
        </a>
    </li>
   <!-- <li>
    	<a href="#">
        <div class="iconholder dark"><img class="imag" src="../images/match.png" width="40" height="40"></div>
        <div class="txt_holder"><span>3</span> Matching Tutors</div>
        </a>
    </li>
    
        <li>
        <a href="#">
        <div class="iconholder red"><img class="imag" src="../images/responded.png" width="40" height="40"></div>
        <div class="txt_holder"><span>1</span> Responded Tutors</div>
        </a>
    </li>-->
    
    <li>
        <a href="#">
        <div class="iconholder orange"><img class="imag" src="../images/postnew.png" width="40" height="40"></div>
        <div class="txt_holder"> Post New Requirement</div>
        </a>
    </li>
    </ul>
</div>
            
</div>
</div>

 <div class="container custom-width" style="margin-top: 0px;">
 <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12" style=" margin-bottom:65px;">
			<!--<br><br><center><h3 style="letter-spacing: 3px; word-spacing: 10px;">All your requirements:</h3></center><br>-->
     <br><br>
     <ul class="nav nav-tabs">
         <li class="active"  style="font-weight:bold;"><a data-toggle="tab" href="#home" style=" background:#c7dcde; letter-spacing: 1px; word-spacing: 2px;"><h3>All your Requirements</h3></a></li>
     </ul>
      <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
		<div id="scrollable-div" style="overflow-y:scroll; overflow-x:hidden; border-left:2px solid #ddd; border-bottom: 2px solid #ddd; background:#c7dcde; height:700px; " >
            
           

	</div>
	
    </div>
     </div>
	 	
 </div>
 
 </div>
  <!--  Modal to edit requirement-starts here  -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header" style="background:#008BCF; color:white;">
            <center><h2>Edit your requirement</h2></center>
          <button type="button" class="close" data-dismiss="modal" style="color:white; opacity:0.8;">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="background-image: url(../image/courses_background.jpg);">
         
            
            
          <div class="container">
  <form action="">
    <br>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
             <label for="last">Where you want to learn?</label>
           <div class="checkbox">
      <label><input type="checkbox" value="" id="myCheck1" >Home Tuition at My Home</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" value="myCheck2">Willing to travel to Teacher's Home</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" value="myCheck3">Online Class (via Skype, Hangout etc)</label>
    </div>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="last">Your approximate Monthly Budget</label>
          <div class="radio">
      <label><input type="radio" name="optradio" checked>Basic Rs.5400 - 6000 (20 Sessions in month)
Teacher's experience upto 2 yrs</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio">Standard Rs.6000 - 6600 (20 Sessions in month)
Teacher's experience 2-5 yrs</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio">Expertise Rs.6600 - 8000 (20 Sessions in month)
Teacher's experience 5+ yrs</label>
    </div>
        </div>
      </div>
      <!--  col-md-6   -->
    </div>


    <div class="row">
      <div class="col-md-6"><br>
        <div class="form-group">
          <label for="phone">Alternate Contact</label>
          <input type="tel" class="form-control" placeholder="Optional" id="alt-contact" value="alt_contact">
        </div>


      </div>
      <!--  col-md-6   -->
      </div>
    <!--  row   -->
    
    <div class="row">
      <div class="col-md-6">

        <div class="form-group">
          <label for="phone">When you would like to start ?</label>
          <select class="form-control" id="sel1">
        <option>Immediately</option>
        <option>Within next 2 weeks</option>
        <option>Not sure, right now just checking prices</option>
        
      </select>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="comment">Message</label>
      <textarea class="form-control" rows="5" id="comment" value="Any special requirement? (optional)"></textarea>
        </div>

      </div>
      <!--  col-md-6   -->
    </div>
    <!--  row   -->

      <center><button type="submit" class="btn btn-primary">Update</button></center>
  </form>
</div>   
        </div>
        
       
        
      </div>
    </div>
  </div>     
                     
       <!--  Modal to edit requirement-ends here  -->              
                     
                     
                     
                     
                     <!-- modal for repost requirement-starts here -->
                     <div class="modal fade" id="smallModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  <div class="modal-dialog modal-sm" style="margin:300px auto;">
    <div class="modal-content" style="background-image: url(../image/courses_background.jpg);">
      
      <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:white; opacity:0.8;">
          <span aria-hidden="true">&times;</span>
        </button>
        <h2>Are you sure you want to close this post?</h2>
      </div>
      <div class="modal-footer">
       <center> <button type="button" class="btn btn-primary" id="start-closing">Yes</button>
           <button type="button" class="btn btn-primary" data-dismiss="modal">No</button></center>
      </div>
    </div>
  </div>
</div>
      <!-- modal for repost requirement-ends here -->               
                     
 
<!--copy rights start here-->

<div class="copy-right" style="clear:both;">
	<div class="container">
		 <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
    	    <p>&copy; 2016-2018 GharPeShiksha.com (Tenali Education Academy Pvt. Ltd.) All Rights Reserved</p>
    	 </div>
    </div>
    
					<!--	<a href="#" id="toTop" style="display:block"> <span id="toTopHover" style="opacity: 1;"> </span></a>-->

</div>

<!--copy rights end here-->   

<a href="javascript:" id="return-to-top"><i class="fa fa-chevron-up"></i></a>
   
<script>
    
    // ===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});
    
    
</script>


<script>
var page_num=0;
var callajax=true;
$(document).ready(function(){
//	alert("calling"+(page_num+1));
	page_num=page_num+1;
	ajaxcall(page_num);
	
	$('#scrollable-div').on('scroll', function() {
        
if(($(this).scrollTop() + $(this).innerHeight()) >= $(this)[0].scrollHeight-50) {
//   alert('end reached');
if(callajax) 
{  page_num=page_num+1;
//	   alert("calling"+page_num);
ajaxcall(page_num);
		   
}
        
}
})
});

function ajaxcall(data)
{  // alert("calling ajax");
	$.ajax({
	type:"POST",
	beforeSend: function(){
        $('#image').show();
    },
	url:"/studentenquirytwo",
	data:{'pagenum':data,"action":"getdata"},
    success:function(data){
    	  $('#image').hide();	
	        
    		//	  alert(Object.keys(data).length);
    			  if(Object.keys(data).length>0)
    	    	   {
    				var text=JSON.stringify(data);
    				var obj = JSON.parse(text);
    			
    				var text1=JSON.stringify(obj.requirements);
    				var arr =JSON.parse(text1);
    		//		alert(obj.dataaccessed);
    				if(obj.dataaccessed==true)
    					{ 
    				//	alert("making false");
    					callajax=false;
    					
    					}
    			//	alert(arr.length);
    				var code="";
    				for(var i=0;i<arr.length;i++)
    	             {
    			    var newid=arr[i].id;
    			   
    	            code=code+"<div id=\"\"><div class=\"brd-box selected-brd-box"+newid+"\" ><div class=\"row selected-row"+newid+"\" ><div class=\"col-lg-12 borderneeded\"> <div class=\"col-lg-8 paddingneeded mobileview\"><h3>Tutor Requirement for "+arr[i].subject+" in "+arr[i].cls+" </h3></div> <div class=\"col-lg-4 posted paddingneeded\"> <img class=\"imag\" src=\"../images/time1.jpg\" width=\"30\" height=\"30\">&nbsp; <a href=\"#\">Posted on:"+arr[i].date+"</a> </div> </div> <div class=\"col-lg-12 marginneeded\"> <div class=\"col-lg-6 paddingneeded\"><img class=\"imag\" src=\"../images/match.png\" width=\"30\" height=\"30\">&nbsp; <a href=\"matching_tutor.jsp#matched\">Matching Tutors <span class=\"badge\">10</span></a></div> <div class=\"col-lg-6 responded paddingneeded\"><img class=\"imag\" src=\"../images/responded.png\" width=\"30\" height=\"30\">&nbsp; <a href=\"matching_tutor.jsp#responded\">Responded Tutors <span class=\"badge\">3</span></a></div> </div> <div class=\"col-lg-12\"> <div class=\"col-lg-6 paddingneeded\"><img class=\"imag\" src=\"../images/edit.png\" width=\"30\" height=\"30\">&nbsp; <a href=\"#\" data-toggle=\"modal\" class=\"editid\" id=\""+newid+"\" data-target=\"#myModal\">Edit Post</a></div> <div class=\"col-lg-6 closed paddingneeded\"><img class=\"imag\" src=\"../images/close.png\" width=\"30\" height=\"30\">&nbsp; <a href=\"#\" data-toggle=\"modal\" class=\"newid\" id=\""+newid+"\"  data-target=\"#smallModal\">Close Post&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; </a></div> </div> </div> <button class=\"btn btn-success selected-repost-btn"+newid+" repost-btn\" style=\"display:none;\" id=\""+newid+"\">Repost this requirement</button> </div> ";
    	           
    	            
   	             //    alert(newid);
    	             }
    				if(callajax)
    				code=code+"<div class=\"ajax-loader\"><center><img src=\"images/gif.gif.gif\" id=\"image\"  text-align:center class=\"img-responsive\"></center></div>";
    				  $('#scrollable-div').append(code);
        	          
    	           }

    }		
	});
	
}//end of function ajaxcall


</script>
 <script>
$(document).ready(function(){
  
$(document).on('click','#start-closing',function(){
var currentId = $(this).attr('value');
sendStatus();
// alert(currentId);	
});
});
</script>

<script>
$(document).on('click','.newid',function(){
var currentId = $(this).attr('id');
$("#start-closing").val(currentId);
});

 
$(document).on('click','.repost-btn',function(){
var currentId = $(this).attr('id');
alert(currentId);
$(this).hide();
$(".selected-row"+currentId).removeClass("close-btn");
     
$(".selected-repost-btn"+currentId).removeClass("repost-btn");
$(".selected-brd-box"+currentId).removeClass("blur-div");
      
});
 </script>
 
 
 <script>
$(document).on('click','.editid',function(){
var editId = $(this).attr('id');
alert(editId);
editRequirement(editId);
//$("#start-closing").val(currentId);
});
 </script>
 
 
 <script>
function sendStatus()
{
var status="cancelled";
var currentId = $("#start-closing").attr('value');

$.ajax({
	type:"POST",
	url:"/studentenquirytwo",
	data:{"id":currentId,"status":status,'action':"cancelled"},
    success:function(data){

    	
    	$(".selected-repost-btn"+currentId).show();
    	$('#smallModal').modal('toggle');

    	$(".selected-row"+currentId).addClass("close-btn");

    	$(".selected-repost-btn"+currentId).addClass("repost-btn");
    	$(".selected-brd-box"+currentId).addClass("blur-div");
    	
    }		
	});
}

</script>
<script>
function editRequirement(editId)
{
alert(editId);
//alert(editId);
	$.ajax({
		type:"POST",
		url:"/studentenquirytwo",
		data:{"id":editId,'action':"editPost"},
	    success:function(data){
	    	
	    var obj= JSON.parse(data);
	    var monthly_budget=obj.fees;
	    var teaching_mode=obj.teaching_mode;
	    var start_time=obj.start_time;
	    var message=obj.message;
	    var alt_contact=obj.alt_contact;
	    alert(alt_contact);
	    ($('#alt-contact').val(alt_contact));
	    ($('#comment').val(message));
	  //   ($('#myCheck').val(teaching_mode));
//	    alert(name);
	 //   document.getElementById("alt-contact").innerHTML=alt_contact;
     //   alert(profilename);
	 /*   if (teaching_mode).equals("Home Tuition at My Home")
	    {
	    $(":checkbox[value='Home Tuition at My Home']").prop("checked","true");	
	    $("#mycheck1").val("Home Tuition at My Home");
	    }
	    else if (teaching_mode).equals("Willing to travel to Teacher's Home")
	    {
	    $(":checkbox[value='Home Tuition at My Home']").prop("checked","true");	
	    $("#mycheck2").val("Home Tuition at My Home");	
	    }
	    else if (teaching_mode).equals("Online Class (via Skype, Hangout etc)")
	    {
	    $(":checkbox[value='Home Tuition at My Home']").prop("checked","true");	
	 	$("#mycheck3").val("Home Tuition at My Home");		
	    }
	   	
		}	*/
	}
	});
}



</script>
</body>
</html>
	
<%}%>
	
	