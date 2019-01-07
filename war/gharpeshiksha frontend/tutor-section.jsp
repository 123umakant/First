<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import="com.gharpeshiksha.entity.*" %>
<%@ page import="static com.gharpeshiksha.database.OfyService.*,java.util.* " %>
<%@ page import="com.googlecode.objectify.*" %>

<% if(session.getAttribute("login")==null)
{
%>
<!DOCTYPE HTML>
<html>

<head>
	<title>Ghar Pe Shiksha : Tutor Jobs Delhi | Teachers Vacancy Delhi</title>
	<meta name="description" content="Get tutor jobs in Delhi NCR as we are hiring best home tutor for all major subjects and have offer private tutor jobs in Delhi NCR.">
	<meta name="theme-color" content="#43c0f6">
	<meta name="Keywords" content="private tutor jobs, tutoring jobs near me, tutor jobs in Delhi, home tuition jobs, home tuition job in delhi, home tutor jobs in delhi, home tutor jobs in west delhi, tutoring jobs ">
	
	<link rel="shortcut icon" href="favicon.png" type="image/x-icon">

	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/testimonial.js"></script>
	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Custom Theme files -->
	<link href="css/row.css" rel="stylesheet" type="text/css" media="all" />
	<link href="home_style.css" rel="stylesheet" type="text/css" media="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--google sign in attachments-->
	<meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id" content="304575945007-d5pbe161cjco3jgo9sb97rl6rc48ouoc.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
	<script src="https://apis.google.com/js/api:client.js"></script>
	<script>
		var googleUser = {};
		var startApp = function () {
			gapi.load('auth2', function () {
				// Retrieve the singleton for the GoogleAuth library and set up the client.
				auth2 = gapi.auth2.init({
					client_id: '304575945007-d5pbe161cjco3jgo9sb97rl6rc48ouoc.apps.googleusercontent.com',
					cookiepolicy: 'single_host_origin',
					// Request scopes in addition to 'profile' and 'email'
					//scope: 'additional_scope'
				});
				attachSignin(document.getElementById('customBtn'));
			});
		};

		function attachSignin(element) {
			console.log(element.id);
			auth2.attachClickHandler(element, {},
				function (googleUser) {
					document.getElementById('name').innerText = "Signed in: " +
						googleUser.getBasicProfile().getName();
				}, function (error) {
					alert(JSON.stringify(error, undefined, 2));
				});
		}
	</script>
	<style type="text/css">
		#customBtn {
			display: inline-block;
			background: #DD4B39;
			color: #fff;
			width: 240px;
			border-radius: 5px;
			border: none;
			box-shadow: 1px 1px 1px grey;
			white-space: nowrap;
		}

		#customBtn:hover {
			cursor: pointer;
		}

		span.label {
			font-family: serif;
			font-weight: normal;
		}

		span.icon {
			background: url('/identity/sign-in/g-normal.png') transparent 5px 50% no-repeat;
			display: inline-block;
			vertical-align: middle;
			width: 42px;
			height: 42px;
		}

		span.buttonText {
			display: inline-block;
			vertical-align: middle;
			padding-left: 42px;
			padding-right: 42px;
			font-size: 12px;
			font-weight: bold;
			/* Use the Roboto font that is loaded in the <head> */
			font-family: 'Roboto', sans-serif;
		}
	</style>
	<!--ends here-->







	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	<!-- Simply-Scroll-Starts -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js">
	</script>

	<script type="text/javascript" src="jquery.simplyscroll.js"></script>
	<link rel="stylesheet" href="jquery.simplyscroll.css" media="all" type="text/css">

	<script type="text/javascript">
		(function ($) {
			$(function () { //on DOM ready 
				$(".scroller").simplyScroll();
			});
		})(jQuery);
	</script>

	<!--- Style for form Section -->

	<style>
		td {
			text-align: left;
		}

		.row {
			margin-right: 0px;
		}

		.team-top1 {
			margin-bottom: 1em;
			margin-top: 1em;
		}

		.features-table td {
			padding: 20px 0px 20px 0px;
		}

		.heteacher {
			position: absolute;
			top: -40px;
			left: 250px;
			margin-left: 160px;
			color: dodgerblue;
		}

		.teacher1 {
			position: absolute;
			top: 80px;
			left: 45px;

		}

		.teacher2 {
			position: absolute;
			top: 150px;
			left: 45px;

		}

		.teacher3 {

			position: absolute;
			top: 220px;
			left: 45px;
		}

		.teacher4 {
			position: absolute;
			top: 290px;
			left: 45px;

		}

		.inliteach {
			display: inline-block;
			margin-bottom: 8px;
			margin-left: 12px;
			font-weight: 0;

		}

		.btmhead {
			position: absolute;
			top: 360px;
			left: 73px;
			color: #4d85dd;
			font-style: italic;
			font-weight: 700;
		}
	</style>

	<!-- Style for Form Section Ends -->

	<!-- Simply-Scroll-ends -->


	<!-- Font awesome Cdn-->

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>

	<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
	<!-- animated-css -->
	<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- animated-css -->
	<script src="js/bootstrap.min.js"></script>
	<link href="css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="shortcut icon" href="favicon.png" type="image/x-icon">
	<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
	<link href="css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css'>
	<link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick-theme.css'>
	<link rel='stylesheet prefetch' href='https://unpkg.com/rangeable@latest/dist/rangeable.min.css'>
	<link href="./css/modal_popup.css" rel="stylesheet" type="text/css">
	<link href="./css/owl.carousel.css" rel="stylesheet">
	<link href="./css/owl.theme.css" rel="stylesheet">
	<link rel="stylesheet" href="cs/style.css">
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/subjects.js"></script>



	<script>
		(function (i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date(); a = s.createElement(o),
				m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-89128249-1', 'auto');
		ga('send', 'pageview');

	</script>
	<!-- <script src='https://www.google.com/recaptcha/api.js'></script>
 -->
</head>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
	var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
	(function () {
		var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
		s1.async = true;
		s1.src = 'https://embed.tawk.to/58116dbcc7829d0cd36c20e2/default';
		s1.charset = 'UTF-8';
		s1.setAttribute('crossorigin', '*');
		s0.parentNode.insertBefore(s1, s0);
	})();
</script>
<!--End of Tawk.to Script-->

<body style="overflow-x:hidden;margin-top:105px;">
		<div id="fb-root"></div>
		<script>
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1826935090700718',
		      cookie     : true,
		      xfbml      : true,
		      version    : 'v3.0'
		    });
		      
		    FB.AppEvents.logPageView();   
		      
		  };

		  (function(d, s, id){
		     var js, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {return;}
		     js = d.createElement(s); js.id = id;
		     js.src = "https://connect.facebook.net/en_US/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
		</script>

<script>
		$(document).ready(function () {

			$('a[href="signup"]').click(function (e) {

				e.preventDefault();
				$("#login-form").hide();
				$("#register-form-link").addClass('active');
				$("#login-form-link").removeClass('active');
				$("#register-form").toggle();
			});
			$('a[href="login"]').click(function (e) {

				e.preventDefault();
				$("#register-form").hide();
				$("#login-form-link").addClass('active');
				$("#register-form-link").removeClass('active');
				$("#login-form").toggle();
			});

			$('a[href="pass"]').click(function (e) {

				e.preventDefault();

				$("#forget").toggle();
			});
		});
	</script>


	<jsp:include page="common/navbar.html" />  

	<section class="slider">


		<section style="position:relative;">

			<div class="team-top1 wow fadeInDown animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInDown;">
				<h3 style="font-family: Open Sans, Helvetica Neue, Helvetica, Arial;font-weight: 500;line-height: 1.4;font-size: 30px;">Providing Home Tuition Opportunities</h3>

			</div>


			<!-- =======Div for gradient =================-->
			<div id="grad">

				<div class="row ">
					<div class="col-md-6 col-md-push-6 content-dee form-main" style="padding-right:0px">
						<div class="panel panel-login form-margi" style="background: -webkit-gradient(linear, left top, left bottom, from(#E0F0F4),to(#FFF)),
    padding: 2%;box-shadow: 0px 0px 1px 1px lightgrey;min-height: 410px;">

							<div class="panel-heading" id="form-marg">

								<ul class="nav nav-pills nav-justified nav-divider">
									<li class="marg-form" id="login-form-link" style="background-color:#ccc">
										<a href="login">Login to Your Profile</a>
									</li>
									<li class="active marg-form" id="register-form-link" style="background-color:#ccc">
										<a href="signup">Register as a Tutor</a>
									</li>

								</ul>

								<hr>
							</div>
							<div class="panel-body">
								<div>
									<div class="col-lg-12">
										<form id="register-form" action="/tutorsignup" method="post" role="form" style="display:block" id="form-sec">
											<div class="text-center">
												New to GharPeShiksha? Create Your Tutor Account.
											</div>
											<input type="hidden" class="tracking_source" name="tracking_source">
							
											<div class="form-group">
												<input type="text" name="phone" required maxlength="10" pattern="[6789][0-9]{9}" id="username" tabindex="1" class="form-control"
												 placeholder="Phone Number">
											</div>
											<div class="form-group">
												<input type="email" name="email" required id="email" tabindex="1" class="form-control" placeholder="Email Address">
											</div>
											<div class="form-group">
												<input type="password" name="password" required id="password" min="6" tabindex="2" class="form-control" placeholder="Password">
											</div>
											<div class="form-group">
												<input type="password" name="repassword" required min="6" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
											</div>
											<!-- 			<div class="g-recaptcha" data-sitekey="6LfT2yQTAAAAABuvlahfewX2Uut4r5NTKcXNojuH"></div>		
	 -->
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
													</div>
												</div>
											</div>

											<div class="text-center">
												<a href="login">
													<u> Already have an Account? Sign In here!</u>
												</a>
											</div>
										</form>

										<form id="login-form" name="loginform" onSubmit="return loadDoc();" method="post" role="form" style="display: none;">
											<div class="form-group">
												<!-- In the callback, you would hide the gSignInWrapper element on a
  successful sign in -->
											<!-- 	<div id="gSignInWrapper" align="center" style="margin-bottom:50px">
													<div id="customBtn" class="customGPlusSignIn googlelogin">
														<span class="fa fa-google-plus" style="padding:0px"></span>
														<span class="buttonText" style="font-size:18px;padding-left:0px">Login with Google</span>
													</div>
													<div class="fb-login-button" data-width="250" data-max-rows="1" data-size="medium" data-button-type="login_with" data-show-faces="false"
													 data-auto-logout-link="false" data-use-continue-as="false"></div>

												</div> -->
												
												<div id="name"></div>
												<script>startApp();</script>
												<input type="text" name="phone" id="loginusername" maxlength="10" pattern="[6789][0-9]{9}" tabindex="1" required class="form-control"
												 placeholder="Phone Number" value="">
												<p id="errorMsg" style="display:none; color:red; margin-left:20px">
													<i class="fa fa-exclamation-triangle" style="padding:0px; min-width:0px;"></i>Please Enter Correct Phone Number</p>
											</div>
											<div class="row" id="formButtons" style="margin-bottom:20px; margin-top:40px">
												<div class="col-12 text-center">
													<button class="btn btn-primary" id="passButton" type="button">Login via Password</button>
												</div>
												<div class="col-12 text-center">
													<span class="text-primary">or</span>
												</div>
												<div class="col-12 text-center">
													<button class="btn btn-success" id="OTPButton" type="button">Login via OTP</button>
												</div>
											</div>
											<div id="nextButtons" style="display:none;">
												<div class="form-group" style="margin-top:10px">
													<input type="text" name="OTP" id="OTPf" required tabindex="2" class="form-control" placeholder="Enter OTP">
												</div>
												<input type="hidden" name="otpsessionid" id="otpsessionid" value="" >
												<input type="hidden" name="loginvia" id="loginvia" value="" >
												
												
												<div class="form-group">
													<input type="password" name="password" id="passwordf" required tabindex="2" class="form-control" placeholder="Password">
												</div>
												<div class="form-group text-center">
													<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
													<label for="remember"> Remember Me</label>
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-sm-6 col-sm-offset-3">
															<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
														</div>
													</div>
												</div>
												<div class="form-group text-center">
													<a href="#" id="loginPass">
														<u>Use OTP</u>
													</a>
													<a href="#" id="loginOTP">
														<u>Use Password</u>
													</a>
												</div>
											</div>
											<div id="err" class="text-center" style="color:red"></div>

											<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="signup" id="register-form-link">
																<u>New to GharPeShiksha, Don't have an Account? Sign Up here!</u>
															</a>
														</div>
													</div>
												</div>
											</div>

											<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="pass" tabindex="5" class="forgot-password">Forgot Password?</a>
														</div>
													</div>
												</div>
											</div>
										</form>
										<div id="forget" style="display:none">
											<form id="forget-form" method="post" action="/forget">
												<div class="form-group">
													<input type="text" name="phone" required maxlength="10" pattern="[6789][0-9]{9}" tabindex="1" class="form-control" placeholder="Your Registered Phone Number">
												</div>
												<div class="col-sm-6 col-sm-offset-3">
													<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Send me my login credentials">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-6 col-md-pull-6">
						<div class="marg-top">
							<div class="row  spn-mar ">
								<table class="features-table table-responsive" style="border:none">
									<tbody>
										<tr>
											<td>
												<img src="images/teachericon1.png" width="45px" height="45px" class="mar-img ">
											</td>
											<td>
												<span class="txt-clr">Become Teacher at GharPeShiksha</span>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/imagebooks.png" width="45px" height="45px" class="mar-img ">
											</td>
											<td>
												<span class="txt-clr">Share your Knowledge</span>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/bag final.jpg" width="45px" height="45px" class="mar-img ">
											</td>
											<td>
												<span class="txt-clr">Work Part Time</span>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/images.jpg" width="45px" height="45px" class="mar-img ">
											</td>
											<td>
												<span class="txt-clr">Earn Extra Income</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="row mar-btm  ">
								<h4 class="txt-clr">Find most suitable classes with GharPeShiksha</h4>
								<h4 class="btm-mar txt-clr ">
									<br>
									<a data-target="#signup" data-toggle="modal" href="#signup">
										<button class="btn btn-primary btn-lg" style="background: #337ab7; border: none; padding: 5px 5px; border-radius: 6px;">Register Now</button>
									</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>

		<br>
		<br>
	</section>
	<div class="gallery-top ">
		<div class="agileinfo_gallery_top">
			<h3>
				<span>Earning Potential</span>
			</h3>
			<h3>10,000/month (2hr/day) -- 25,000/month (3-5hr/day)</h3>
		</div>
	</div>
	<!--- Why teach with us section -->

	<!-- services -->
	<section class="how_teacher">
		<div id="services" class="services1">
			<div class="container">


				<div class="hiw_student" style="background-image:url('image/courses_background.jpg')">
					<div class="wrapper">
						<h2>How it Works for Teachers</h2>

						<ul>
							<li>

								<div class="arrow_up">

									<img src="images/arrow_up.png" alt="">
								</div>
								<img src="images/post1.png" width="90px" height="90px" class="wteacher2">
								<div class="textblock">
									<h2>Student Post Requirement</h2>
									<p>Student Post Tutor Requirement on GharPeShiksha Platform.</p>
								</div>
							</li>
							<li>
								<div class="arrow_down">
									<img src="images/arrow_down.png" alt="">
								</div>

								<img src="images/notifi1.png" width="90px" height="90px" class="wteacher">

								<div class="textblock">
									<h2>Receive Notification</h2>
									<p>Relevant Teachers will get notified on SMS &amp; Email.</p>
								</div>
							</li>
							<li>
								<div class="arrow_up">

									<img src="images/arrow_up.png" alt="">
								</div>

								<img src="images/contact4.png" width="90px" height="90px" class="wteacher">

								<div class="textblock">
									<h2>Contact Student </h2>
									<p>Interested Teachers will contact the student directly on call.</p>
								</div>
							</li>
							<li>

								<img src="images/earn1.png" width="90px" height="90px" class="wteacher">
								<div class="textblock">
									<h2>Teach &amp; Earn</h2>
									<p>You can start your Tutoring session and earn extra income just by sharing your Knowledge.</p>
								</div>
							</li>


						</ul>

					</div>
				</div>

				<br>
				<br>
				<br>


				<div class="row">
					<div class="col-md-3  col-md-offset-1 " id="faqimg">
						<img src="images/faq.jpg">
					</div>
					<div class="col-md-5 col-md-offset-1">
						<div class="container">
							<div class="row">
								<div class="page-header" style="margin-top:0px;">
									<center>
										<h3 style="color:#337ab7; font-family: Arial, Helvetica, sans-serif;">Teachers FAQs</h3>
									</center>
								</div>
								<div class="panel panel-default">
									<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
										<div class="panel-heading" style="background-color:#f5f5f5">
											<h4 class="panel-title">
												What is GharPeShiksha ?
											</h4>
											<i class="fa fa-angle-double-down" style="float:right;padding:0px;min-width:0px;margin:-17px 2px"></i>
										</div>
									</a>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">
											GharPeShiksha is a Platform that is narrowing the gap between Students and Potential Teachers looking for Home Tuition in
											Delhi. It is helpful for the one who wants to earn part time extra income just by Sharing their valuable Knowledge
											through Home Tuitions.
											<br>GharPeShiksha is a Tradename registered with company name Tenali Education Academy Pvt. Ltd.</div>
									</div>
								</div>

								<div class="panel panel-default">
									<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseeight">
										<div class="panel-heading" style="background-color:#f5f5f5">

											<h4 class="panel-title">
												What is the process to enroll as a tutor at GharPeShiksha ?
											</h4>
											<i class="fa fa-angle-double-down" style="float:right;padding:0px;min-width:0px;margin:-17px 2px"></i>

										</div>
									</a>
									<div id="collapseeight" class="panel-collapse collapse">
										<div class="panel-body">
											You have to create free profile
											<a data-target="#signup" data-toggle="modal" href="#signup">
												<button class="btn btn-primary">Create Profile</button>
											</a>
											. Students matching your profile will be notified by SMS andd Emails
											<br>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
										<div class="panel-heading" style="background-color:#f5f5f5">
											<h4 class="panel-title">
												What are the pricing for this Service?
											</h4>
											<i class="fa fa-angle-double-down" style="float:right;padding:0px;min-width:0px;margin:-17px 2px"></i>
										</div>
									</a>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											There will be the Membership Plans to Buy Contact Views of Students.We do not charge any Commission from teachers.
											<br>
										</div>
									</div>
								</div>







							</div>
						</div>
					</div>
					<!--col-md -->
				</div>







				<br>
				<br>

			</div>
		</div>
		</div>
	</section>

	<section class="recent-classes" style="
    background: #eef2f5;">
		<div id="classes-grad">
			<div class="col-xs-12">

				<div class="page-header">

					<center>
						<h3 style="color: black; font-weight: 500;margin-bottom: 20px;">RECENT CLASSES</h3>
					</center>
					<div class="hover-effe">
					</div>


					<ul class="scroller">
<%List<Lead> leads=ofy().load().type(Lead.class).order("-enq_id").limit(20).list();
int count=0;
Iterator<Lead> itr=leads.iterator();
while(itr.hasNext()){
Lead ld=itr.next();
count++; %>
						<li class="col-sm-3">
							<div id="<%=count%>">
								<div class="bordertab">
									<div class="fff">
										<table class="shows shhover2" style="overflow: hidden;">
											<tr>
												<td>
													<a class="recent_size">ENQUIRY ID:</a>
												</td>
												<td><%=ld.getEnq_id() %></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">DATE &amp; TIME:</a>
												</td>
												<td><%=ld.getDate()%></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">NAME:</a>
												</td>
												<td><%=ld.getName()%></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">CLASS:</a>
												</td>
												<td><%=ld.getCls()%></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">SUBJECT:</a>
												</td>
												<td><%=ld.getSubject()%></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">AREA:</a>
												</td>
												<td><%=ld.getArea()%></td>
											</tr>
											<tr>
												<td>
													<a class="recent_size">CONTACT:</a>
												</td>
												<td><%=ld.getContact().substring(0, 2)%>XXXXXX<%=ld.getContact().substring(8, 10)%></td>
											</tr>
										</table>
										<div class="btmspc">
											<p style="text-align:center;">
												<button type="submit" data-target="#signup" data-toggle="modal" href="#signup" class="btn btn-md btn-primary">View Contact</button>
											</p>
										</div>

									</div>
								</div>
							</div>
						</li>
						
<%}%>

					</ul>

				</div>


			</div>
		</div>

	</section>
	<br>
	<br>



	<section class="teacher-teacher">

		<div id="testimon-grad">
			<center>
				<h3 class="mar-test">TEACHER'S TESTIMONIAL</h3>
			</center>

			<br>
			<br>
			<div class="row">
				<div class="col-md-3 col-md-offset-1 col-sm-8 col-sm-offset-2 mishti">
					<div class="test-pad ">

						<img src="image/teacher2.jpg" class="img-circle img-responsive center-block" width="90px" height="90px">
						<div class="testi-para">
							<p class="para-text">I joined here 2 weeks ago and got two classes worth Rs 7000 each and got the registration money back through classes
								within 1 week.I suggest all the teachers to join gharpeshiksha who have passion of teaching.thnaks gharpe shiksha
								hope you will give more classes like this to me.</p>
						</div>
						<br>
						<hr align="center" width="20%">
						<div class="teach-name">
							<p class="text-center">
								<b>Ruchika Mehara</b>
							</p>
						</div>

					</div>
				</div>
				<div class="col-md-3 col-md-offset-1 col-sm-8 col-sm-offset-2 mishti">
					<div class="test-pad ">

						<img src="image/teacher.jpg" class="img-circle img-responsive center-block" width="90px" height="90px">
						<div class="testi-para">
							<p class="para-text">I've been associated with ' GHAR PE SHIKSHA' since one year and I am happy with the services that I've received. I
								have received real potential clientele which has rendered growth to my business. With the endeavour of increasing
								the business, this organization has been proven to be a boon.</p>
						</div>
						<br>
						<hr>
						<!--<div class="hr-line"></div> -->
						<div class="teach-name">
							<p class="text-center">
								<b>Chetan Chaudhari</b>
							</p>
						</div>

					</div>
				</div>
				<div class="col-md-3 col-md-offset-1 col-sm-8 col-sm-offset-2 mishti">
					<div class="test-pad ">

						<img src="image/teacher3.jpg" class="img-circle img-responsive center-block" width="90px" height="90px">
						<div class="testi-para">
							<p class="para-text">I guess this is one of the fastest growing online portal for providing tuitions in every way be it home tuition or
								coaching centres.I'm already a registered tutor at gharpesiksha group and quite happy with my clientele.This is an
								easy way to find home tutions and therefore helpful for parents too.</p>
						</div>
						<br>
						<hr>
						<div class="teach-name">
							<p class="text-center">
								<b>Prerna Rai</b>
							</p>
						</div>

					</div>
				</div>



			</div>

			<br>
			<br>
			<br>


		</div>


		<div class="bottom_btn_div" style="margin-top: 50px;">
			<p class="button_p" style="margin-right:0px">
				Are you looking to Hire a Professional Home Tutor?
			</p>
			<a data-target="#get-tutor" data-toggle="modal" href="#get-tutor" class="scroll">
				<button type="button" class="btn btn-primary">Get a Home Tutor</button>
			</a>

			<br>
			<br>
			<br>
			<p class="button_p" style="margin-right:0px">
				Are you a Home Tutor looking for Tutoring Jobs?

			</p>
			<a data-target="#signup" data-toggle="modal" href="#signup" class="scroll">
				<button type="button" class="btn btn-primary">Register as a Tutor</button>
			</a>

		</div>

	</section>

	<br>
	<br>
	<br>




	<!-- Modal -->
	<div id="contact" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title text-center" style="color:#006e96">Tell us your Query</h3>
				</div>
				<div class="modal-body">
					<p class="text-center">We will get back to you.</p>
					<form name="contact" action="/contact" method="post">
						<div class="form-group">
							<label for="text"></label>
							<input type="text" placeholder="Your Name" required class="form-control" name="name">
						</div>
						<div class="form-group">
							<input type="number" placeholder="Phone Number" required maxlength="10" pattern="[789][0-9]{9}" name="phone" class="form-control">
						</div>
						<div class="form-group">
							<input type="email" placeholder="Email" required class="form-control" name="email">
						</div>
						<div class="form-group">
							<textarea class="form-control" required rows="4" placeholder="Your Query" name="message"></textarea>
						</div>


						<br>
						<div class="text-center">
							<button type="submit" class="btn btn-lg btn-info">Submit Query</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>


	<!-- Modal -->
	<div id="signup" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="color:blue">
						<center>
							<h3>Sign Up as Tutor</h3>
						</center>
					</h4>
				</div>
				<div class="modal-body">
					<center class>Become part of our Team</center>
					<center>Share your Knowledge, Earn extra money</center>
					<br>
					<form action="/tutorsignup" method="post" role="form">

						<div class="form-group">
							<label>Phone Number:</label>
							<input type="text" name="phone" required maxlength="10" pattern="[6789][0-9]{9}" id="username" tabindex="1" class="form-control">

						</div>
						<div class="form-group">
							<label>Email Address:</label>
							<input type="email" name="email" required id="email" tabindex="1" class="form-control">

						</div>
						<div class="form-group">
							<label>Password:</label>
							<input type="password" name="password" required id="password" min="6" tabindex="2" class="form-control">

						</div>
						<div class="form-group">
							<label>Confirm Password:</label>
							<input type="password" name="repassword" required min="6" id="confirm-password" tabindex="2" class="form-control">

						</div>


				</div>

				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">Sign Up</button>
					</form>

				</div>
			</div>

		</div>
	</div>


	<script type="text/javascript">
		function loadDoc() {
			document.getElementById("err").innerHTML = "<img id=\"loading-image\" src=\"images/loading.gif\" alt=\"Loading...\" />";
			var phone = document.loginform.phone.value;
			var password = document.loginform.password.value;
			var otp = document.loginform.OTP.value;
			var otpsessionid = document.loginform.otpsessionid.value;
			var loginvia = document.loginform.loginvia.value;
			
			var xhttp = new XMLHttpRequest();
			xhttp.open("POST", "/tutorlogincopy", true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("phone=" + phone + "&password=" + password+ "&OTP=" + otp+ "&otpsessionid=" + otpsessionid+ "&loginvia=" + loginvia);
			xhttp.onreadystatechange = function () {
				if (this.readyState == 4 && this.status == 200) {
					var obj = JSON.parse(this.responseText);
					if (obj.Status == 'Success') {
						window.location = obj.Message;
					} else
						document.getElementById("err").innerHTML = obj.Message;
				}
			};
			return false;
		}
	</script>


	<jsp:include page="common/footer.html" />  

			<script type="text/javascript">
				

				$(document).ready(function () {

					$("#passButton").click(function () {
						var text = document.getElementById("loginusername").value;
						var exp = /^[6-9][0-9]{9}$/;
						if (!text.match(exp)) {
							$("#errorMsg").show();
							return false;
						};
						
						$("#errorMsg").hide();
						$("#nextButton,#passwordf,#OTPf,#formButtons,#passButton,#OTPButton,#loginPass,#loginOTP").show();
						$("#OTPf,#formButtons,#loginOTP").hide();
						$("#nextButtons").slideDown();
						$("#passwordf").prop('required',true);
						$("#OTPf").prop('required',false);
					
						document.getElementById('loginvia').value="password";
					});


					$("#OTPButton").click(function () {
						var text = document.getElementById("loginusername").value;
						var exp = /^[6-9][0-9]{9}$/;
						if (!text.match(exp)) {
							$("#errorMsg").show();									
							return false;
						};
						$("#errorMsg").hide();
					
						var url=window.location.href;
						   var nakeddomaain=url.search( 'www.' );
						   if(nakeddomaain==-1)
						   {
						   	url="https://gharpeshiksha.com";
						   	}else{
						   		url="https://www.gharpeshiksha.com";
						   		}

						//send ajax call to check if registered user
						var xhttp = new XMLHttpRequest();
					   xhttp.open("GET", url+"/ajax/validatetutor.jsp?phone="+text, true);
					   xhttp.send();
					   xhttp.onreadystatechange = function() {
					     if (this.readyState == 4 && this.status == 200) {
					    	var validate = this.responseText;
					    	var obj = JSON.parse(this.responseText);
					    	
					    	if (obj.Status == 'true') {
		
					    		$("#nextButton,#passwordf,#OTPf,#formButtons,#passButton,#OTPButton,#loginPass,#loginOTP").show();
								$("#passwordf,#formButtons,#loginPass,#errorMsg").hide();
								$("#nextButtons").slideDown();
								$("#passwordf").prop('required',false);
								$("#OTPf").prop('required',true);
								//otp send code
			document.getElementById('loginvia').value="otp";
					  	
			   var xhttp = new XMLHttpRequest();
			   xhttp.open("GET", url+"/ajax/sendotp.jsp?phone="+text, true);
			   xhttp.send();
			   xhttp.onreadystatechange = function() {
			     if (this.readyState == 4 && this.status == 200) {
			    	var otpsessionid = this.responseText;
			    	 document.getElementById('otpsessionid').value=otpsessionid;
					    	 
			     }};
					    		}else{
					    			//if teacher not registered
					    			document.getElementById('err').innerHTML="Phone Number not registered.Please Sign Up!";
					    	return false;
					    		}
					    	
							    	 
					     }};  
						

  


					});

					$("#loginPass").click(function () {
						var text = document.getElementById("loginusername").value;
						var exp = /^[6-9][0-9]{9}$/;
						if (!text.match(exp)) {
							$("#login-submit").click();
							return false;
						};
						$("#OTPButton").click();

					});

					$("#loginOTP").click(function () {
						var text = document.getElementById("loginusername").value;
						var exp = /^[6-9][0-9]{9}$/;
						if (!text.match(exp)) {
							$("#login-submit").click();
							return false;
						};
						$("#passButton").click();

					});

				});



			</script>



	<!-- Modal -->
	<div id="get-tutor" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title text-center" style="color:#006e96">Get a Home Tutor Within 30 Minutes</h3>
				</div>
				<div class="modal-body">
				<jsp:include page="common/newenquiryform.html" />  
										</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	<jsp:include page="common/autocompletescript.html" />  

	
</body>

</html>
 <%}else if(session.getAttribute("login").equals("yes"))
  {  TutorDetail tut=ofy().load().type(TutorDetail.class).id((long)session.getAttribute("tutor")).now();
  if(tut==null)
	  response.sendRedirect("tutor-section.html");
  else{
	    response.sendRedirect("/profile.jsp#viewallenquiry");	  
  }
  }%>