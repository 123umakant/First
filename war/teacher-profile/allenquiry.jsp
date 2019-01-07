  <%@page import = "java.util.*" %>
<%@page import = "java.security.*" %>
<%@page import = "com.gharpeshiksha.entity.*" %>
<%@page import = "com.googlecode.objectify.*" %>
<%@page import = "static com.gharpeshiksha.database.OfyService.*" %>
  <%@ page import="com.gharpeshiksha.Distance" %>
  <%if(session.getAttribute("login")!=null){ %>
  
    <div id="fb-root"></div>
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.0';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>


                                <!--  Styling for modal start -->
                                <style>
                                    .no-break {
                                        white-space: nowrap;
                                    }

                                    .glyphicon-ok {
                                        color: green;
                                    }
                                </style>

   


    <section class="user-profile">

        <%int pagenum=Integer.parseInt(request.getParameter("pagenum"));
                    %>

            <%  
ofy().clear();
List<Lead> leads=ofy().load().type(Lead.class).order("-enq_id").offset((pagenum-1)*100).limit(100).list();
Iterator<Lead> itr=leads.iterator();

TutorDetail tut=ofy().load().type(TutorDetail.class).id(((Long)session.getAttribute("tutor")).longValue()).now();
TutorServices ts=ofy().load().type(TutorServices.class).id(tut.getContact()).now();
Plans pl = ofy().load().type(Plans.class).filter("tutor", Ref.create(tut)).first().now();
%>



                <div class=" col-xs-12 col-sm-12 col-md-12" style="padding-right: 0px;padding-left: 0px;">


                    <%  while (itr.hasNext()) {
				Lead ld = itr.next(); 
				long currenttime = System.currentTimeMillis();
				long enqtime   = currenttime-ld.getTimestamp();
				long posttime = 0;
				String time_desc="";
				
				if (enqtime <3600000) {
					 posttime = (enqtime/60000);
					time_desc="minute ago";
				}
				else if ((enqtime>=3600000) && (enqtime<86400000)) {
					
					 posttime = (enqtime/3600000);
						time_desc="hour ago";
							 
				}
				
				else {
					
					 posttime = (enqtime/86400000);
					 time_desc="day ago";
				}
				
				 double distance=Distance.distance(ld.getLongitude(), ld.getLatitude(), tut.getLatitude(), tut.getLongitude());
				    distance=Math.round((distance/1000) * 100.0) / 100.0;
				   
				%>


                        <div class="col8-back-colr" style="padding-right: 0px;padding-left: 0px;">

                            <div class="brd-box" style="border: 1px solid #cecece; padding: 20px 20px;">

                                <div class="row">
                                    <div class="col-sm-12 col-md-12" >
                                        <b style="font-weight: 700;"> Tutor Requirement for
                                            <%= ld.getSubject() %> in
                                                <%= ld.getCls() %>
                                        </b>
                                    </div>

                                </div>
                                <p class="enq-desc" style="color: #736a6a;font-size: 90.5%;">Posted
                                    <%=posttime%> <%=time_desc%>| ENQ ID:
                                        <%= ld.getEnq_id() %>
                                </p>
                                <br>




                                <div>
                                    <b>Area/Pincode:</b> <%=ld.getArea()%> <b>(<%=distance%> KM away)</b></div>

                                <div>
                                    <b>Approx. Parents Budget: </b>
                                    <%= ld.getFees() %>
                                </div>

                                <table class="table-responsive" style="border:none;">
                                    <tr>
                                        <td>
                                            <b>Posted By:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                <%= ld.getName() %>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Gender Preference:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                <%= ld.getSex_pref() %>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Interested in:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                                <%= ld.getTeaching_mode() %>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>When Parents will Start:</b>
                                        </td>
                                        <td>
                                            <span style="font-size:85%;">
                                               <%if(ld.getStart_time()!=null){ %> <%= ld.getStart_time() %><%}else{%>N.A<%} %>
                                            </span>
                                        </td>
                                    </tr>

                                </table>



                                                                <div>
                                    <b>Parents Message: </b>
                                    <%if(ld.getParentsrequirements()!=null){%><%= ld.getParentsrequirements() %><%}else{ %>N.A<%} %>
                                </div>
                                <br>

                                <div>
                                    <b>Total Views:</b>
                                    <%if(ld.getViewed_by()!=null){  %>
                                        <%=ld.getViewed_by().size()%> tutors Viewed
                                            <%}   else{ %> Be the first One to get details
                                                <%} %>
                                </div>

                            </div>

                            <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
                                <div class="row">
                                    <div class="col-md-6">

                                      <%if(!ld.getStatus().equals("Cancelled")){ 
                                        if(ts.getContacts_viewed()==null||!ts.getContacts_viewed().contains(ld.getEnq_id())) {
                                             if(pl!=null&&pl.getContact_views()>0&&pl.getExpirytimestamp()>System.currentTimeMillis()){%>                     
                                                <button class="btn " onClick="getid(this.id)" style="background-color: #00bcd4; color: white;margin-top: -15px;" id="<%=ld.getEnq_id()%>" data-target="#confirm" data-toggle="modal"
                                            href="#confirm">Get Contact Details</button>
                                            <%}else{ %>
                                        <button class="btn " style="background-color:#00bcd4; color: white;margin-top: -15px;" data-target="#plans" data-toggle="modal"
                                            href="#plans">Get Contact Details</button>
                                            <%} }else{%>
                                            <span >You viewed this enquiry</span>
                                            <%}}else{ %>
                                            <span >Closed</span>
                                            <%} %>
                                        <a href="whatsapp://send?text=Hey,Checkout%20this%20Home%20Tuition%20Requirement,I%20think%20you%20might%20be%20a%20right%20match%20for%20this.%20https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=<%=ld.getEnq_id()%>" data-toggle="tooltip" title="share on whatsapp">
                                            <i class="fab fa-whatsapp fa-2x text-success" style="margin-left: 7px; color:#25d366"></i>
                                        </a>
                                        <div class="fb-share-button" style="display:inline;margin-left: 7px;" data-href="https://developers.facebook.com/docs/plugins/"
                                            data-layout="button_count" data-size="small" data-mobile-iframe="true">
                                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=<%=ld.getEnq_id()%>" data-toggle="tooltip" title="Share on facebook">
                                                <i class="fab fa-facebook-square fa-2x"> </i>
                                            </a>
                                        </div>

                                        <a href="https://twitter.com/share?url=https://www.gharpeshiksha.com/enquirycontactdetails.jsp?id=<%=ld.getEnq_id()%>&amp;text=Have%20a%20look%20at%20this%20Home%20Tuition%20Enquiry&amp;hashtags=gharpeshiksha"
                                            target="_blank" data-toggle="tooltip" title="Share on Twitter">
                                            <i class="fab fa-twitter fa-2x" style="margin-left: 7px;color: #00bcd4;"> </i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#emailModal" id="<%=ld.getEnq_id()%>" onClick="getidforemail(this.id)" target="_blank" data-toggle="tooltip" title="Share via email">
                                            <i class="fas fa-envelope fa-2x text-dark" style="margin-left: 7px;color:grey"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#messageModal" target="_blank" id="<%=ld.getEnq_id()%>" onClick="getidformsg(this.id)" data-toggle="tooltip" title="Share via text message">
                                            <i class="fas fa-mobile fa-2x" style="margin-left: 7px;color:grey; margin-top:5px"></i>
                                        </a>
                                    </div>


                                </div>
                            </div>
                         </div>
                            <br>
                            
                        
                            <% } %>
                       
                </div>
                <!-- Main row ends here-->


    </section>



                                <!-- Modal -->
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

    
    </div>
    <!--copy rights end here-->
    
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

    <!-- The Modal -->
    <div class="modal fade" id="messageModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header" style="background-color:#afafaf">
                    <h4 class="modal-title" style="color:#fff">Message this class to a friend</h4>
                    <button type="button" class="close" data-dismiss="modal" style="margin-top:-20px">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="container">
                        <div class="row form-group">
                            <div class="col-sm-4">
                                <label for="friendNumber">
                                    Enter your Friend Number
                                </label>
                            </div>
                            <form action="/shareclass" method="post" >
                            <div class="col-sm-8">
                            <input type="hidden" name="sharevia" value="message">
                            <input type="hidden" name="enq_id" id="idforphone">
                                 <input type="text" class="form-control" name="contact" id="friendNumber" maxlength="10" pattern="[6789][0-9]{9}" placeholder="Friend's Phone Number">
                            <br><br>
                            <center><button type="submit" class="btn btn-primary" >SEND</button></center>
                    
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>



        </div>
    </div>
    
    <!--modal end-->
    
    
    <!--modal two-->
    <!-- The Modal -->
    <div class="modal fade" id="emailModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header" style="background-color:#afafaf">
                    <h4 class="modal-title" style="color:#fff">Email this class to a friend</h4>
                    <button type="button" class="close" data-dismiss="modal" style="margin-top:-20px">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="container">
                           <form action="/shareclass" method="post" >
                          <div class="row form-group">
                            <div class="col-sm-4">
                                <label for="friendNumber">
                                    Your Friend's Name
                                </label>
                            </div>
                            <div class="col-sm-8">
                            <input type="hidden" name="sharevia" value="email">
                            <input type="hidden" name="enq_id" id="idforemail">
                                <input type="text" class="form-control" required name="friendname" id="friendNumber" >
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-sm-4">
                                <label for="friendNumber">
                                    Your Friend's Email:
                                </label>
                            </div>
                            <div class="col-sm-8">
                                <input type="email" required class="form-control" name="email" id="friendNumber" >
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-sm-4">
                                <label for="friendNumber">
                                    Your Note
                                </label>
                            </div>
                            <div class="col-sm-8">
                                <textarea class="form-control" name="note" rows="5" col="160"></textarea>
                            </div>
                        </div>
                    <br><br>
                    <center><button type="submit" class="btn btn-primary" >SEND</button></center>
                    </form>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>



        </div>
    </div>
        
    
    
    <!--modal end-->
    <!--tooltip js-->
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>


<!-- Modal -->
<div id="confirm" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Are you sure?</h4>
      </div>
      <div class="modal-body">
    You want to view contact details of this enquiry. One contact view will be deducted from your Remaining Contact Views : <strong style="color:blue;"><%if(pl!=null)out.print(pl.getContact_views());%></strong>  </div>
      <div class="modal-footer">
      <form method="post" action="/contactview"><input type="hidden" id="confirmid" name="enq_id" ><button type="submit" class="btn btn-default" >Yes, I understood</button></form>
  <br><button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


</body>

</html>

<%}else{
	response.sendRedirect("https://gharpeshiksha.com/tutor-section.jsp");
} %>