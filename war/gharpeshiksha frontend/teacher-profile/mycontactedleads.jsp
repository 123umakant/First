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

TutorDetail tut=ofy().load().type(TutorDetail.class).id(((Long)session.getAttribute("tutor")).longValue()).now();
TutorServices ts=ofy().load().type(TutorServices.class).id(tut.getContact()).now();
Plans pl = ofy().load().type(Plans.class).filter("tutor", Ref.create(tut)).first().now();

List<ContactViewRecord> cvrlist=ofy().load().type(ContactViewRecord.class).filter("tut_contact", tut.getContact()).list();
Collections.reverse(cvrlist);
Iterator<ContactViewRecord> cvritr=cvrlist.iterator();

%>



                <div class=" col-xs-12 col-sm-12 col-md-12" style="padding-right: 0px;padding-left: 0px;">


                    <%  while (cvritr.hasNext()) {
                    	ContactViewRecord cvr=cvritr.next();
                    	if(cvr.getEnq_id()==null)
                    		continue;
				Lead ld = ofy().load().type(Lead.class).id(Long.parseLong(cvr.getEnq_id())).now(); 
				
				if(ld==null)
					continue;
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
                                <p class="enq-desc" style="color: #736a6a;font-size: 90.5%;"> ENQ ID:
                                        <%= ld.getEnq_id() %>
                                </p>
                                <br>



                                <div>
                                    <b>Posted On:</b> <%=ld.getDate()%></div>
                                <div>
                                    <b>Contact Viewed On:</b> <%=cvr.getDate_n_time()%></div>
   
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

                                

                            </div>

                            <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
                                <div class="row">
                                    <div class="col-md-6">

                                      
                                            
                                           <% //EnquiryTeacherFeedback feedback=cvr.getFeedback().get();
                                           if(cvr.getFeedback()!=null)
                                           { EnquiryTeacherFeedback feedback=cvr.getFeedback().get();%>
                                        	<span ><b>Your Feedback:</b> <%=feedback.getCurrent_status()%></span><br>
                                        	<span ><b>Action from GharPeShiksha:</b>
                                        	 <%if(feedback.getCurrent_status().equals("Information mentioned in lead is incorrect")||feedback.getCurrent_status().equals("Parents are not genuine"))
                                        	 {ReversalLog log=ofy().load().type(ReversalLog.class).filter("feedback", Ref.create(feedback)).first().now();
                                        	 if(log!=null){
                                        	 %>Contact View Reversal given<%}else{
                                        	 if(feedback.getAction_done()==null){%>
                                        	 Pending
                                        	 <%}else{%>
                                        	 Feedback Processed
                                        	 <%}%>
                                        	 
                                        	 <%}}else{%>Not Required<%}%></span>
                                        	   
                                           <%}else{%>
                                        <button class="btn " onclick="getenqinfo(this.id)" id="<%=ld.getEnq_id()%>" style="background-color: #00bcd4; color: white;margin-top: -15px;" data-target="#feedback" data-toggle="modal"
                                            href="#feedback">Give Feedback</button>   
                                           <%}%>                                           
                                       
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
    
    <script>
function getenqinfo(clicked_id)
{ 
document.getElementById("confirmid").value = clicked_id;
var xhttp = new XMLHttpRequest();
xhttp.open("POST", "/getenquiryinfo", true);
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhttp.send("enq_id="+clicked_id);
xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
 	 var obj = this.responseText;
 		var obj1=JSON.parse(obj);

 	 document.getElementById("enq_id1").innerHTML = obj1.enq_id;
 	 document.getElementById("studentname").innerHTML = obj1.studentname;
 	 document.getElementById("address").innerHTML = obj1.address;
 	 document.getElementById("cls").innerHTML = obj1.cls;
 	 document.getElementById("subject").innerHTML = obj1.subject;
 	 document.getElementById("postedon").innerHTML = obj1.postedon;
 	    }
};
return false;
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





</body>

</html>

<%}else{
	response.sendRedirect("https://gharpeshiksha.com/tutor-section.jsp");
} %>