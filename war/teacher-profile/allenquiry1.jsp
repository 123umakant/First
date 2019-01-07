
<%@page import = "java.util.*" %>
<%@page import = "java.security.*" %>
<%@page import = "com.gharpeshiksha.entity.*" %>
<%@page import = "com.googlecode.objectify.*" %>
<%@page import = "static com.gharpeshiksha.database.OfyService.*" %>

	<section class="user-profile">
		
		<%int pagenum=Integer.parseInt(request.getParameter("pagenum"));
                    %>
		
<%  
ofy().clear();
List<Lead> leads=ofy().load().type(Lead.class).order("-enq_id").offset((pagenum-1)*5).limit(5).list();
Iterator<Lead> itr=leads.iterator();
%>

		
          
		<div class=" col-xs-12 col-sm-12 col-md-12" style="padding-right: 25px;">


			<%  while (itr.hasNext()) {
				Lead ld = itr.next(); 
				long currenttime = System.currentTimeMillis();
				long enqtime   = currenttime-ld.getTimestamp();
				long posttime = 0;
				
				String duration="";
				
				if (enqtime <3600000) {
					 posttime = (enqtime/60000);
					duration="minutes";
				}
				else if ((enqtime>=3600000) && (enqtime<86400000)) {
					
					 posttime = (enqtime/3600000);
						duration="hours";
						
				}
				
				else {
					
					 posttime = (enqtime/86400000);
						duration="days";						
				}
				%>
			
			
			<div class="col8-back-colr">
		   
               <div class="brd-box" style="border: 1px solid #cecece; padding: 20px 20px;">

            <div class="row">
            	<div class="col-sm-12 col-md-12"> <b style="font-weight: 700;"> Tutor Requirement for <%= ld.getSubject() %> in <%= ld.getCls() %></b></div>

            </div>
            <p class="enq-desc" style="color: #736a6a;font-size: 90.5%;">Posted <%=posttime%> <%=duration%> ago | ENQ ID:<%= ld.getEnq_id() %></p><br> 
                  
          
          
         
         <div> <b>Area/Pincode:</b> <%= ld.getArea() %> <strong>(3.5 km away)</strong> </div>
         
            <div> <b>Approx. Parents Budget: </b> <%= ld.getFees() %></div>
            
         <table class="table-responsive" style="border:none;">
                        <tr><td ><b>Posted By:</b></td>
                <td  ><span style="font-size:85%;"><%= ld.getName() %> </span></td>
           	</tr>
                      <tr><td ><b>Gender Preference:</b></td>
                <td  ><span style="font-size:85%;"><%= ld.getSex_pref() %> </span></td>
           	</tr>       
                         <tr><td ><b>When Parents will Start:</b></td>
                <td  ><span style="font-size:85%;"> <%= ld.getStart_time() %> </span></td>
           	</tr>       
                    
                       </table>
          <!--  Styling for modal start -->
          <style>
.no-break
{ white-space:nowrap; }
.glyphicon-ok{color:green;}
</style>




                       
                       
         <!--  Styling for modal ends --> 


   
         <div> <b>Parents Message: </b>  <%= ld.getParentsrequirements() %></div><br>

          <div> <b>Total Views:</b> <%if(ld.getViewed_by()!=null){  %><%=ld.getViewed_by().size()%> Views <%}   else{ %> Be the first One to get details <%} %></div>
          
      </div>

                 <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
               <div class="row">
                   <div class=" col-xs-6 col-sm-6 col-md-6">
                   	
                  	<button class="btn " style="background-color: #00bcd4; color: white;" data-target="#plans" data-toggle="modal" href="#plans" >Apply & Get Details</button>    	
                   </div>
                   

               </div></div>  <br><br>
</div>
<% } %>
	</div>

<!-- Modal -->
<div id="plans" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">
    <!-- Modal content-->	
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title text-center" style="color:#006e96"><img src="../image/view.png" /></h3>
      </div>
      
     
    
   
      
      <div class="modal-body">
         <div class="container">   
      
         <div class="row row-content">
      <div class="col-md-4 no-break text-center"><div class="glyphicon glyphicon-ok" ></div>Students Contact View</div>   
      <div class="col-md-4 no-break text-center"><div class="glyphicon glyphicon-ok" ></div>No Commission</div>
      <div class="col-md-4 no-break text-center"><div class="glyphicon glyphicon-ok" ></div>Email,SMS Alerts</div>
     
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
                            <i class="fa fa-desktop"></i>
                            <h3>Bronze Plan</h3>
                        </div>
                       
                         
                        <div class="panel-body text-center">
                            <p><strong style="color:#337ab7;font-size:32px;  font-family:  " class="no-break no-family">&#x20B9; 3000</strong></p>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i>20 Student Contact Views</li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <strong>Validity:</strong> 180 days</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><strong>Response:</strong> Standard</li>
                            <li class="list-group-item"><i class="fa fa-check"></i>-</li>  
                            <li class="list-group-item"><i class="fa fa-check"></i>-</li>  
                      </ul>
                        <div class="panel-footer">
                            <a  class="btn btn-lg btn-block btn-primary" href="payment.jsp?amt=3000&tut_id=10868">BUY NOW</a>
                        </div>
                    </div>
                </div>
                <!-- /item -->

                <!-- item -->
                <div class="col-md-4 text-center">
                    <div class="panel panel-warning panel-pricing">
                        <div class="panel-heading">
                            <i class="fa fa-desktop"></i>
                            <h3>Gold Plan</h3>
                        </div>
                        <div class="panel-body text-center">
                            <p><strong style="color:#f0ad4e;font-size:32px;" class="no-break">  &#8377 4000</strong></p>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i>30 Student Contact Views</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><strong>Validity:</strong> 180 days</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><strong>Response:</strong> X 3 times</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><div class="no-break"><div class="glyphicon glyphicon-ok" ></div>Suggested Tutor Tag</div></li>  
                            <li class="list-group-item"><i class="fa fa-check"></i>-</li>  
                        </ul>
                        <div class="panel-footer">
                            <a class="btn btn-lg btn-block btn-warning" href="payment.jsp?amt=4000&tut_id=10868">BUY NOW</a>
                        </div>
                    </div>
                </div>
                <!-- /item -->

                <!-- item -->
                <div class="col-md-4 text-center">
                    <div class="panel panel-success panel-pricing">
                        <div class="panel-heading">
                            <i class="fa fa-desktop"></i>
                            <h3>Platinum Plan</h3>
                        </div>
                        <div class="panel-body text-center">
                            <p><strong style="color:#449d44;font-size:32px;" class="no-break">  &#8377 5000</strong></p>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i>40 Student Contact Views</li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <strong>Validity:</strong> 180 days</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><strong>Response:</strong> X 7 times</li>
                            <li class="list-group-item"><i class="fa fa-check"></i><div class="no-break"><div class="glyphicon glyphicon-ok" ></div>Suggested Tutor Tag</div></li>  
                            <li class="list-group-item"><i class="fa fa-check"></i><div class="no-break"><div class="glyphicon glyphicon-ok" ></div>15 Minutes early notification</div></li>  
             </ul>
                        <div class="panel-footer">
                            <a class="btn btn-lg btn-block btn-success" href="payment.jsp?amt=5000&tut_id=10868">BUY NOW</a>
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
        Need Help? Call <strong style="color:#008bcf">7065-8065-65</strong> Mon to Sat, 10am to 7pm or Mail us <strong style="color:#008bcf">info@gharpeshiksha.com</strong>
      </div>
    </div>

  </div>
</div>

</section>
		



