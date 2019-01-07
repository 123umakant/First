var currentStep = 1;
   var course,subject,name,phone,localit,mode,location,lat,lng,gender,optradio,start_time,specific_req;
   var sessionsinaweek,otpid;
   var tracking_source;
   var url=window.location.href;
   var nakeddomaain=url.search( 'www.' );
   if(nakeddomaain==-1)
   {
   	url="https://gharpeshiksha.com";
   	}else{
   		url="https://www.gharpeshiksha.com";
   		}
   
   
   $(document).ready(function () {

       $('.li-nav').click(function () {

           var $targetStep = $($(this).attr('step'));
           currentStep = parseInt($(this).attr('id').substr(7));

           if (!$(this).hasClass('disabled')) {
               $('.li-nav.active').removeClass('active');
               $(this).addClass('active');
               $('.setup-content').hide();
               $targetStep.show();
           }
       });

       $('#navStep1').click();

   });
   var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

   
$("#step1Next").click(function(){
updatesubjectlist();
if (true) {
 currentStep += 1;
		   
		  
		   
           $('#navStep' + currentStep).removeClass('disabled');
           $('#navStep' + currentStep).click();
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
	
	}
	course=document.querySelector('input[name="Select1"]:checked').value;
});

           

$(".previous").click(function(){
currentStep -= 1;
       $('#navStep' + currentStep).click();
if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			previous_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			previous_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});
$("#step2Next").click(function(){
  subject="";
	      currentStep += 1;
	      var selectedsubject = document.querySelectorAll('input[name="subjects"]:checked');
	      for (var index = 0; index < selectedsubject.length; index++) {
	    	    subject+=selectedsubject[index].value+",";
	    	}

	   if(subject=="")
		   {
		   document.getElementById('err-msg2').innerHTML="Select atleast one Subject";
			return false;   
		   }
	   if (true) {
           $('#navStep3').removeClass('disabled');
           $('#navStep3').click();
		   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
       }

});


  $("#step3Next").click(function(){
   mode="";
	   currentStep += 1;
	   var selectedmode = document.querySelectorAll('input[name="mode"]:checked');
	      for (var index = 0; index < selectedmode.length; index++) {
	    	    mode+=selectedmode[index].value+",";
	    	}
	      if(mode=="")
		   {
		   document.getElementById('err-msg7').innerHTML="Select atleast one class mode";
			return false;   
		   }
	 	if (true) {
           $('#navStep4').removeClass('disabled');
           $('#navStep4').click();
		   if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
       }
	
});

$("#step4Next").click(function(){
 currentStep += 1;
	     name=document.getElementById('name').value;
	 	 phone=document.getElementById('phone').value;
	 	 	var regExp = "[789][0-9]{9}";
	 	var match = phone.match(regExp);
	 	
	 	if(name==""&&phone=="")
		   {
		   document.getElementById('err-msg1').innerHTML="Enter Name and Phone Number";
		  return false;
		   }
	   else if(name=="")
	   {
	   document.getElementById('err-msg1').innerHTML="Enter name";
	  return false;
	   }
	   else if(phone=="")
	   {
	   document.getElementById('err-msg1').innerHTML="Enter Phone Number";
	  return false;
	   }
	   else if(!match)
		   {
		   document.getElementById('err-msg1').innerHTML="Please Enter Correct Phone Number";
			  return false;
			     
		   }
	 
		var msg=" Name: "+name+" Phone: "+phone+" Course: "+course+" Subjects: "+subject+" Class Mode: "+mode;  
	 	var url="ajax.jsp?msg="+msg+"&name="+name+"&phone="+phone+"&course="+course+"&subject="+subject+"&mode="+mode;  
	 	  
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
	 	alert(e);  
	 	}  
	 	
	   if (true) {
           $('#navStep5').removeClass('disabled');
           $('#navStep5').click();
		   if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
       }
	
});

   
   
  $(".previous1").click(function(){


       if(mode=="Home Tuition at Student\'s Home,")
       { 
	   currentStep -= 1;
	  $('#navStep' + currentStep).click();
	   		   if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			previous_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			previous_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});	

       }else {
	   currentStep -= 3;
           $('#navStep' + currentStep).click();
		   if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev().prev().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			previous_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			previous_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
		   
       }
       $('#navStep' + currentStep).click();
	   

});
   
  $("#step5Next").click(function(){
        gender=document.querySelector('input[name="gender"]:checked').value;
		 if(gender==null)
			 {
			 document.getElementById('err-msg3').innerHTML="Select Gender Preference";
			  return false;
			   
			 }
		
       if(mode=="Home Tuition at Student\'s Home,")
       { currentStep += 1;
  	 
    	   $('#navStep6').removeClass('disabled');
       $('#navStep6').click();
	   		   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});

       }else {
    	   currentStep += 3;
    	   $('#navStep8').removeClass('disabled');
           $('#navStep8').click();
		   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next().next().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
       }

});

    function getInfo(){  
	   if(request.readyState==4){  
	 
	   }  
	   }
    $("#step6Next").click(function(){
  	   currentStep += 1;
  	 sessionsinaweek=document.querySelector('input[name="sessionsinaweek"]:checked').value;
	 if(sessionsinaweek==null||sessionsinaweek=="")
		 {
		 document.getElementById('err-msg6').innerHTML="Select number of sessions needed";
		  return false;
		   
		 }
	 feeslist(course,sessionsinaweek);
    if (true) {
        $('#navStep7').removeClass('disabled');
        $('#navStep7').click();
 	   	if(animating) return false;
 	animating = true;
 	
 	current_fs = $(this).parent();
 	next_fs = $(this).parent().next();
 	
 	//activate next step on progressbar using the index of next_fs
 	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
 	
 	//show the next fieldset
 	next_fs.show(); 
 	//hide the current fieldset with style
 	current_fs.animate({opacity: 0}, {
 		step: function(now, mx) {
 			//as the opacity of current_fs reduces to 0 - stored in "now"
 			//1. scale current_fs down to 80%
 			scale = 1 - (1 - now) * 0.2;
 			//2. bring next_fs from the right(50%)
 			left = (now * 50)+"%";
 			//3. increase opacity of next_fs to 1 as it moves in
 			opacity = 1 - now;
 			current_fs.css({
         'transform': 'scale('+scale+')',
         'position': 'absolute',
 		'min-height': '4'
       });
 			next_fs.css({'left': left, 'opacity': opacity});
 		}, 
 		duration: 800, 
 		complete: function(){
 			current_fs.hide();
 			current_fs.css({
         'transform': 'scale(1)',
         'position': 'relative',
 		'min-height': '4'
       });
 			animating = false;
 		}, 
 		//this comes from the custom easing plugin
 		easing: 'easeInOutBack'
 	});
    }

 });
    $("#step7Next").click(function(){
 	   currentStep += 1;
		 optradio=document.querySelector('input[name="optradio"]:checked').value;
		    if(optradio==null)
		 	 {
		 	 document.getElementById('err-msg4').innerHTML="Select Your Budget";
		 	  return false;
		 	   
		 	 }
   if (true) {
       $('#navStep8').removeClass('disabled');
       $('#navStep8').click();
	   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
   }

});
$("#step8Next").click(function(){
currentStep += 1;
	   var lat1=document.getElementById("latbox1").value;
	   var lng1=document.getElementById("lngbox1").value;
	   var location1=document.getElementById("autocomplete1").value;
	  if(lat1==""||lng1==""||lat1==null||lng1==null)
		 {
		 document.getElementById('err-msg5').innerHTML="Enter your Location Correctly!";
		  return false;
		 }else if(location=="New Delhi, Delhi, India"||location=="Delhi, India")
			 {
			 document.getElementById('err-msg5').innerHTML="Enter your location inside Delhi";
			  return false;	 
			 }else if(location=="Faridabad, Haryana, India")
			 {
				 document.getElementById('err-msg5').innerHTML="Enter your location inside Faridabad";
				  return false;	 
				 }else if(location=="Gurugram, Haryana, India"||location=="Gurgaon, Haryana, India")
				 {
					 document.getElementById('err-msg5').innerHTML="Enter your location inside Gurugram";
					  return false;	 
					 }else if(location=="Rohini, New Delhi, Delhi, India")
					 {
						 document.getElementById('err-msg5').innerHTML="Enter your location inside Rohini";
						  return false;	 
						 }else if(location=="Dwarka, New Delhi, Delhi, India")
						 {
							 document.getElementById('err-msg5').innerHTML="Enter your location inside Dwarka";
							  return false;	 
							 }else if(location=="East Delhi, Delhi, India")
							 {
								 document.getElementById('err-msg5').innerHTML="Enter your location inside East Delhi";
								  return false;	 
								 }else if(location=="North Delhi, Delhi, India")
								 {
									 document.getElementById('err-msg5').innerHTML="Enter your location inside North Delhi";
									  return false;	 
									 }
	  /*  lat=lat1;
	   lng=lng1;
	   location=location1;
	  */
	  
	   if (true) {
	       $('#navStep9').removeClass('disabled');
	       $('#navStep9').click();
		   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
	   }

});

   
   
   $("#step9Next").click(function(){
   currentStep += 1;
	    start_time=document.querySelector('input[name="start_time"]:checked').value;
		 if(start_time==null)
			 {
			 document.getElementById('err-msg8').innerHTML="Select when you like to start";
			  return false;
			   
			 }
	   if (true) {
	       $('#navStep10').removeClass('disabled');
	       $('#navStep10').click();
		   if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute',
		'min-height': '4'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
		current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
	   }
	
});

   var sec=30;
  $("#step10Next").click(function(){
  	   currentStep += 1;
	   var lat1=document.getElementById("latbox1").value;
	   var lng1=document.getElementById("lngbox1").value;
	   var location1=document.getElementById("autocomplete1").value;
	   var sessionsinaweek=document.querySelector('input[name="sessionsinaweek"]:checked').value;
		 
	   var msg="name="+name+" phone="+phone+" course="+course+" subject="+subject+" mode="+mode+" optradio="+optradio+" lat="+lat1+" lng="+lng1+" location="+location1+" start_time="+start_time+" specific_req="+specific_req+" gender="+gender+" classesinaweek"+sessionsinaweek;  
	   specific_req=document.getElementById("specific_req").value;
	   
	   
	   
	    document.getElementById('numberdisplay').innerHTML=phone;
			   var xhttp1 = new XMLHttpRequest();
			   xhttp1.open("GET", url+"/ajax.jsp?msg="+msg+"&name="+name+"&phone="+phone+"&course="+course+"&subject="+subject+"&mode="+mode+"&optradio="+optradio+"&lat="+lat1+"&lng="+lng1+"&location="+location1+"&start_time="+start_time+"&specific_req="+specific_req+"&gender="+gender+"&sessionsinaweek="+sessionsinaweek, true);
			   xhttp1.send();
			   xhttp1.onreadystatechange = function() {
			     if (this.readyState == 4 && this.status == 200) {
			    	    	 
			     }};
			      
		      var xhttp = new XMLHttpRequest();
				   xhttp.open("GET", url+"/ajax/sendotp.jsp?phone="+phone, true);
				   xhttp.send();
				   xhttp.onreadystatechange = function() {
				     if (this.readyState == 4 && this.status == 200) {
				    	 otpid = this.responseText;
				    	 document.getElementById('otpid').value=otpid;
						    	 
				     }};    
					  var Timer = setInterval(ntimer,1000);
					 function ntimer(){
		    if(sec==0){
clearInterval(Timer);
document.getElementById('callotp').href="javascript:otp()"; 
 document.getElementById('callotp').style.color="blue";
	  document.getElementById('countdown').style.color="blue";
	  document.getElementById('countdown').innerHTML='';
					  }
					  if(sec>9){
		   document.getElementById('countdown').innerHTML='00:'+sec+'&nbsp ';
					  }else{
						  document.getElementById('countdown').innerHTML='00:0'+sec+'&nbsp ';
					  }
  sec--;}
			     
	   if (true) {
	       $('#navStep11').removeClass('disabled');
	       $('#navStep11').click();
		   	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			current_fs.css({
        'transform': 'scale(1)',
        'position': 'relative',
		'min-height': '4'
      });
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
	   }

});
function otp(){
	  sec=30;
	   var xhttp = new XMLHttpRequest();
				   xhttp.open("GET", url+"/ajax/sendotp.jsp?phone="+phone, true);
				   xhttp.send();
				   xhttp.onreadystatechange = function() {
				     if (this.readyState == 4 && this.status == 200) {
				    	 otpid = this.responseText;
				    	 document.getElementById('otpid').value=otpid;
						    	 
				     }};  
	  document.getElementById('callotp').removeAttribute("href");
	  document.getElementById('callotp').style.color="#cccccc";
	  document.getElementById('countdown').style.color="#cccccc";
	  
					  var Timer = setInterval(ntimer,1000);
					  function ntimer(){
		    if(sec==0){
clearInterval(Timer);
document.getElementById('callotp').href="javascript:otp()"; 
document.getElementById('callotp').style.color="blue";
	  document.getElementById('countdown').style.color="blue";
	  document.getElementById('countdown').innerHTML='';
					  }
					  if(sec>9){
		   document.getElementById('countdown').innerHTML='00:'+sec+'&nbsp ';
					  }else{
						  document.getElementById('countdown').innerHTML='00:0'+sec+'&nbsp ';
					  }
  sec--;}
  }
$("#stepFinal").click(function(){
	
	var lat1=document.getElementById("latbox1").value;
    	   var lng1=document.getElementById("lngbox1").value;
    	   var location1=document.getElementById("autocomplete1").value;
    	   var otp=document.getElementById("otp").value;
    	   var otpid=document.getElementById("otpid").value;
      	
    	 var  source=document.getElementsByClassName("tracking_source")[0].value;
    	var   sessionsinaweek=document.querySelector('input[name="sessionsinaweek"]:checked').value;
    	   	 
    	 if(otp==null||otp=="")
  		 {
  		 document.getElementById('err-msg10').innerHTML="Please Enter OTP";
  		  return false;		   
  		 }
  		 document.getElementById("err-msg10").innerHTML="<img id=\"loading-image\" src=\"images/loading.gif\" alt=\"Loading...\" />";
  		document.getElementById("stepFinal").style.display="none";
  		
  		 var xhttp = new XMLHttpRequest();
  		   xhttp.open("POST", "/enquiry", true);
  		   xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  		   xhttp.send("otp="+otp+"&otpid="+otpid+"&name="+name+"&phone="+phone+"&location="+location1+"&subject="+subject+"&mode="+mode+"&Select1="+course+"&gender="+gender+"&source="+"Google"+"&lat="+lat1+"&lng="+lng1+"&optradio="+optradio+"&start_time="+start_time+"&specific_req="+specific_req+"&tracking_source="+source+"&sessionsinaweek="+sessionsinaweek);
  		   xhttp.onreadystatechange = function() {
  		     if (this.readyState == 4 && this.status == 200) {
  		    
  		    	  	    	 var obj = JSON.parse(this.responseText);
  		    	 if(obj.Status=='Success')
  		       {	 document.getElementById("success-result").innerHTML =obj.Message;
  		     document.getElementById("err-msg10").innerHTML = "";
  		 //  document.getElementById("finalresult").innerHTML = "";
  		  //   document.getElementById("finalresult").innerHTML = "<input type=\"button\" onclick=\"firststep()\" value=\"Give Another Enquiry\" class=\"next action-button\" >";
  		  document.getElementById("prevStep2").style.display="block";
  		document.getElementById("callotp").style.display="none";
  		document.getElementById("countdown").style.display="none";
		    goog_report_conversion();
  			    	       
  		       }else 
  		       { 	 document.getElementById("err-msg10").innerHTML = obj.Message;
  		//	 document.getElementById("finalresult").innerHTML = "<input  type=\"button\"  id=\"stepFinal\" value=\"Enquire\"  class=\"next action-button\" />";	      
  		     document.getElementById("stepFinal").style.display="block";
  		       }
  		     }
  		   };
  		   return false;
  
});

   
   
   
   
   

    $("#prevStep2").click(function(){
    
    	document.getElementById("success-result").innerHTML ="";
    	document.getElementById("err-msg10").innerHTML = "";
  //  	document.getElementById("finalresult").innerHTML = "<input  type=\"button\"  id=\"stepFinal\" value=\"Enquire\"  class=\"next action-button\" />";
 		document.getElementById('enquirystepsform').reset();
 		  document.getElementById("prevStep2").style.display="none";
 		 document.getElementById("stepFinal").style.display="block";
 		 if (true) {
 	           $('#navStep1').removeClass('disabled');
 	           $('#navStep1').click();
 	         currentStep-=10;
 	           if(animating) return false;
 	     	animating = true;
 	     	
 	     	current_fs = $(this).parent();
 	     	previous_fs = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev();
 	     	
 	     	//de-activate current step on progressbar
 	     	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
 	     	
 	     	//show the previous fieldset
 	     	previous_fs.show(); 
 	     	//hide the current fieldset with style
 	     	current_fs.animate({opacity: 0}, {
 	     		step: function(now, mx) {
 	     			//as the opacity of current_fs reduces to 0 - stored in "now"
 	     			//1. scale previous_fs from 80% to 100%
 	     			scale = 0.8 + (1 - now) * 0.2;
 	     			//2. take current_fs to the right(50%) - from 0%
 	     			left = ((1-now) * 50)+"%";
 	     			//3. increase opacity of previous_fs to 1 as it moves in
 	     			opacity = 1 - now;
 	     			previous_fs.css({
 	             'transform': 'scale('+scale+')',
 	             'position': 'absolute',
 	     		'min-height': '4'
 	           });
 	     			current_fs.css({'left': left});
 	     			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
 	     		}, 
 	     		duration: 800, 
 	     		complete: function(){
 	     			current_fs.hide();
 	     			previous_fs.css({
 	             'transform': 'scale(1)',
 	             'position': 'relative',
 	     		'min-height': '4'
 	           });
 	     			animating = false;
 	     		}, 
 	     		//this comes from the custom easing plugin
 	     		easing: 'easeInOutBack'
 	     	});	
 	       }
 		 
    });
    
 function geolocate1() {
	   if (navigator.geolocation) {
	     navigator.geolocation.getCurrentPosition(function(position) {
	       var geolocation = {
	         lat: position.coords.latitude,
	         lng: position.coords.longitude
	       };
	       var xhttp = new XMLHttpRequest();
	       xhttp.onreadystatechange = function() {
	         if (this.readyState == 4 && this.status == 200) {
	           var obj=JSON.parse(this.responseText);
	           for (var i=0;i<obj.results.length;i++) {
		             var loc=obj.results[i];
		             if(loc.geometry.location_type=="ROOFTOP")
		             {
		            	enq_form.elements["location"].value =loc.formatted_address;
		            	document.getElementById("latbox1").value = geolocation.lat;
		            	  document.getElementById("lngbox1").value = geolocation.lng;  
		            	 break;
		             }
		           }
	         }
	       };
	       xhttp.open("GET", "https://maps.googleapis.com/maps/api/geocode/json?latlng="+geolocation.lat+","+geolocation.lng+"&key=AIzaSyAVCwvyMbc08_-0lYswch7I2GNtIwMrxdM", true);
	       xhttp.send();
	     
	     });
	   }
	 } 