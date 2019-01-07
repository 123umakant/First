<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.Login.Entity.Lead" %>
      <%@ page import="static com.Login.database.OfyService.*"%>
      <%@ page import="java.util.List"%>
      <%@ page import="java.util.Iterator"%>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying Enquiry Information</title>


<script
  src="https://code.jquery.com/jquery-1.7.min.js"
  integrity="sha256-/05Jde9AMAT4/o5ZAI23rUf1SxDYTHLrkOco0eyRV84="
  crossorigin="anonymous"></script>
</head>
<body>


<div id="flux">
<section class="user-profile">

 <div class=" col-xs-12 col-sm-12 col-md-12" style="padding-right: 0px;padding-left: 0px;">

<div class="col8-back-colr" style="padding-right: 0px;padding-left: 0px;">

                            <div class="brd-box" style="border: 1px solid #cecece; padding: 20px 20px;">

                                <div class="row">
                                    <div class="col-sm-12 col-md-12" >
                                        <b style="font-weight: 700;"> Tutor Requirement for
                                            abc in
                                                abc
                                        </b>
                                    </div>

                                </div>
                                <p class="enq-desc" style="color: #736a6a;font-size: 90.5%;">Posted
                                    abc abc| ENQ ID:
                                        31
                                </p>
                                <br>




                                <div>
                                    <b>Area/Pincode:</b> Shadipur <b>(abc> KM away)</b></div>

                                <div>
                                    <b>Approx. Parents Budget: </b>
                                    6000
                                </div>

                                <table class="table-responsive" style="border:none;">
                                    <tr>
                                        <td>
                                            <b>Posted By:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Neerav
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Gender Preference:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Male
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Interested in:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Home tuition
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>When Parents will Start:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                19:00
                                            </span>
                                        </td>
                                    </tr>

                                </table>



                                                                <div>
                                    <b>Parents Message: </b>
                                    Graduate
                                </div>
                                <br>

                                <div>
                                    <b>Total Views:</b>
                                     Be the first One to get details
                                                
                                </div>

                            </div>

                            <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
                                <div class="row">
                                    <div class="col-md-6">

                                     
                                        <a href="whatsapp://send?text=Hey,Checkout%20this%20Home%20Tuition%20Requirement,I%20think%20you%20might%20be%20a%20right%20match%20for%20this.%20https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=31" data-toggle="tooltip" title="share on whatsapp">
                                            <i class="fab fa-whatsapp fa-2x text-success" style="margin-left: 7px; color:#25d366"></i>
                                        </a>
                                        <div class="fb-share-button" style="display:inline;margin-left: 7px;" data-href="https://developers.facebook.com/docs/plugins/"
                                            data-layout="button_count" data-size="small" data-mobile-iframe="true">
                                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=31" data-toggle="tooltip" title="Share on facebook">
                                                <i class="fab fa-facebook-square fa-2x"> </i>
                                            </a>
                                        </div>

                                        <a href="https://twitter.com/share?url=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=31&amp;text=Have%20a%20look%20at%20this%20Home%20Tuition%20Enquiry&amp;hashtags=gharpeshiksha"
                                            target="_blank" data-toggle="tooltip" title="Share on Twitter">
                                            <i class="fab fa-twitter fa-2x" style="margin-left: 7px;color: #00bcd4;"> </i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#emailModal" id="31" onClick="getidforemail(this.id)" target="_blank" data-toggle="tooltip" title="Share via email">
                                            <i class="fas fa-envelope fa-2x text-dark" style="margin-left: 7px;color:grey"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#messageModal" target="_blank" id="31" onClick="getidformsg(this.id)" data-toggle="tooltip" title="Share via text message">
                                            <i class="fas fa-mobile fa-2x" style="margin-left: 7px;color:grey; margin-top:5px"></i>
                                        </a>
                                    </div>


                                </div>
                            </div>
                         </div>
                            <br>
                            
                        
                            


                        <div class="col8-back-colr" style="padding-right: 0px;padding-left: 0px;">

                            <div class="brd-box" style="border: 1px solid #cecece; padding: 20px 20px;">

                                <div class="row">
                                    <div class="col-sm-12 col-md-12" >
                                        <b style="font-weight: 700;"> Tutor Requirement for
                                            abc in
                                                abc
                                        </b>
                                    </div>

                                </div>
                                <p class="enq-desc" style="color: #736a6a;font-size: 90.5%;">Posted
                                    abc abc| ENQ ID:
                                        16
                                </p>
                                <br>




                                <div>
                                    <b>Area/Pincode:</b> Shadipur <b>(abc> KM away)</b></div>

                                <div>
                                    <b>Approx. Parents Budget: </b>
                                    6000
                                </div>

                                <table class="table-responsive" style="border:none;">
                                    <tr>
                                        <td>
                                            <b>Posted By:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Neerav
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Gender Preference:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Male
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Interested in:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                Home tuition
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>When Parents will Start:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                19:00
                                            </span>
                                        </td>
                                    </tr>

                                </table>



                                                                <div>
                                    <b>Parents Message: </b>
                                    Graduate
                                </div>
                                <br>

                                <div>
                                    <b>Total Views:</b>
                                     Be the first One to get details
                                                
                                </div>

                            </div>

                            <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
                                <div class="row">
                                    <div class="col-md-6">

                                     
                                        <a href="whatsapp://send?text=Hey,Checkout%20this%20Home%20Tuition%20Requirement,I%20think%20you%20might%20be%20a%20right%20match%20for%20this.%20https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=16" data-toggle="tooltip" title="share on whatsapp">
                                            <i class="fab fa-whatsapp fa-2x text-success" style="margin-left: 7px; color:#25d366"></i>
                                        </a>
                                        <div class="fb-share-button" style="display:inline;margin-left: 7px;" data-href="https://developers.facebook.com/docs/plugins/"
                                            data-layout="button_count" data-size="small" data-mobile-iframe="true">
                                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=16" data-toggle="tooltip" title="Share on facebook">
                                                <i class="fab fa-facebook-square fa-2x"> </i>
                                            </a>
                                        </div>

                                        <a href="https://twitter.com/share?url=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=16&amp;text=Have%20a%20look%20at%20this%20Home%20Tuition%20Enquiry&amp;hashtags=gharpeshiksha"
                                            target="_blank" data-toggle="tooltip" title="Share on Twitter">
                                            <i class="fab fa-twitter fa-2x" style="margin-left: 7px;color: #00bcd4;"> </i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#emailModal" id="16" onClick="getidforemail(this.id)" target="_blank" data-toggle="tooltip" title="Share via email">
                                            <i class="fas fa-envelope fa-2x text-dark" style="margin-left: 7px;color:grey"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#messageModal" target="_blank" id="16" onClick="getidformsg(this.id)" data-toggle="tooltip" title="Share via text message">
                                            <i class="fas fa-mobile fa-2x" style="margin-left: 7px;color:grey; margin-top:5px"></i>
                                        </a>
                                    </div>


                                </div>
                            </div>
                         </div>
                            <br>
                           
                       
                </div>
                <!-- Main row ends here-->


    </section>


</div>

<div class="ajax-loader">
  <center><img src="images/gif.gif" id="image"  text-align:center class="img-responsive"></center>
</div>

<script>
var page_num=1,callajax=true;
$(document).ready(function(){
$(window).scroll(function() {
	
	alert($(window).height());
	alert($(document).height());
	alert($(window).scrollTop());
	alert($('#flux').prop('scrollHeight'));
	var intialdoc_height=$(document).height();
	var intialdiv_height=$('#flux').height();
	
	var difference_docdiv= (intialdoc_height-intialdiv_height); 
	
	if($(window).scrollTop()<100)
		{
	 if ($(window).scrollTop() >=(difference_docdiv+.75*intialdiv_height))
	  {
		page_num=page_num+1;
	    ajaxcall(page_num);
	   }
	  }
	else
		{
		if($(window).scrollTop() >=(.6*newdata)
				{
			page_num=page_num+1;
			ajaxcall(page_num);
				}
		}
		
		
		
		});
});
var newdata ;

function ajaxcall(data)
{

	$.ajax({
	type:"GET",
	beforeSend: function(){
        $('#image').show();
    },
	url:"allenquiry.jsp",
	data:{'pagenum':data},
	
    success: function(data)
	{ 
       newdata= data;
    	if ($(window).scrollTop() >=(difference_docdiv+.9*intialdiv_height))
    		{
    		$('#flux').append(data);
    		}
    	else ($(window).scrollTop() >=(.9*newdata))
		   {
		   $('#flux').append(data);
		   }
       /*else
    		{
    		$('#image').hide();	
    		callajax=false;
    		}
    	*/
    }
	});
}



</script>

</html>