  <%@page import = "java.util.*" %>
 <%@ page import="com.Login.Entity.*" %>
      <%@ page import="static com.Login.database.OfyService.*"%>
      <%@ page import="java.util.List"%>
      <%@ page import="java.util.Iterator"%>
         <%
        
        int pagenum=Integer.parseInt(request.getParameter("pagenum"));
                    %>
            <%  
ofy().clear();
List<Lead> leads=ofy().load().type(Lead.class).order("-enq_id").offset((pagenum-1)*3).limit(3).list();
Iterator<Lead> itr=leads.iterator();

TutorDetail tut=ofy().load().type(TutorDetail.class).id(1234567890L).now();

%>
                    <%  while (itr.hasNext()) {
				Lead ld = itr.next(); 
				
				   
				%>
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
                                        <%= ld.getEnq_id() %>
                                </p>
                                <br>




                                <div>
                                    <b>Area/Pincode:</b> <%=ld.getArea()%> <b>(abc> KM away)</b></div>

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