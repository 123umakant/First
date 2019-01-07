<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>
<html>
<head>
<title>Ghar Pe Shiksha : Home Tuition in Delhi</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/testimonial.js"></script>
<link rel="shortcut icon" href="favicon.png" type="image/x-icon">

<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Coaching Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta name="theme-color" content="#43c0f6">
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

</head>

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
			                    <a class="navbar-brand" href="#"><img class="img-responsive" src="images/new_01.png" style="" /></a>
			              </div>
			          </div>
		            <div id="navbar" class="navbar-collapse collapse">
		            <nav class="cl-effect-1">
		              <ul class="nav navbar-nav">
		    
						<li><a href="index.html" class="scroll">Home</a></li>						
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
<div class="about" id="about">
	<div class="container">
		<div class="about-main">
			<div class="about-top wow fadeInDown" data-wow-delay="0.3s">
				<h2>Upload Your Documents</h2>
				<span class="heading-line"> </span>
				<p>Only .jpg, .png, .pdf format is accepted.</p>
			</div>
			<div class="about-bottom">
				<div class="col-md-12 about-left wow fadeInLeft" data-wow-delay="0.3s">
					
			<div class="clearfix"> </div>
	<script>  
var request;  
function sendInfo()  
{  
var url="uploadurl.jsp";  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
} 
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
var form=document.getElementById('documents');  
form.action=val;
form.submit();
}  
}  
  
</script> 
 		
<form id="documents"   enctype="multipart/form-data" method="post">

<div class="control-group">
                    <!-- Password -->
                    <label class="control-label" >Enter your Registered Phone Number:</label>
                    <div class="controls">
                        <input type="number" required name="id"  class="input-xlarge">
                    </div>
                </div>
                <br><br>
<div class="control-group">
                   
                    <label class="control-label" >Attach your Profile Photograph</label>
                    <div class="controls">
                        <input type="file" required name="photo"  class="input-xlarge">
                        <p class="help-block">Please attach only your good looking professional photograph.<br>Crop the image to fit the full screen.</p>
                    </div>
                </div>
                <br><br>
                <div class="control-group">
                   
                    <label class="control-label" >Upload Scanned copy of Aadhar Card Front Side</label>
                    <div class="controls">
                        <input type="file" required name="Aadharfront"  class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <br><br>
                <div class="control-group">
                   
                    <label class="control-label" >Upload Scanned copy of Aadhar Card Back Side</label>
                    <div class="controls">
                        <input type="file" required name="Aadharback"  class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <br><br>
                <div class="control-group">
                   
                    <label class="control-label" >Upload Highest Qualification Document</label>
                    <div class="controls">
                        <input type="file" required name="qualification"  class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <br><br>
                <div class="control-group">
                   
                    <label class="control-label" >Upload any Document showing your Current Address (only if not mentioned on Aadhar Card)</label>
                    <div class="controls">
                        <input type="file"  name="currentadd"  class="input-xlarge">
                        <p class="help-block">(Example: Electricity bill, Online Shopping Bill, Rent Agreement etc.)</p>
                    </div>
                </div>
<br><br>


<!-- 
<div class="control-group">
                   
                    <label class="control-label" >Attach your photograph</label>
                    <div class="controls">
                        <input type="file" required name="photo"  class="input-xlarge">
                        <p class="help-block">Please attach only professional photograph</p>
                    </div>
                </div>

<div class="control-group">
                   
                    <label class="control-label" >Attach Your Recent Qualification </label>
                    <div class="controls">
                        <input type="file" required name="qualification"  class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                
                <div class="control-group">
                   
                    <label class="control-label" >Attach any Current Address verification document</label>
                    <div class="controls">
                        <input type="file"  required name="address"  class="input-xlarge">
                        <p class="help-block">Any document showing your current address like voterID,Aadhar Card,Electricity Bill etc.</p>
                    </div>
                </div>
     
      -->
           <button type="button" onclick="sendInfo()" class="btn btn-primary">Submit</button>
                
</form>
</div>
</div>
</div>
</div>
</div>



</body>
</html>