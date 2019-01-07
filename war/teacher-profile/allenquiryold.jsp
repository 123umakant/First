
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
List<Lead> leads=ofy().load().type(Lead.class).order("-enq_id").offset((pagenum-1)*100).limit(100).list();
Iterator<Lead> itr=leads.iterator();
//TutorServices ts=ofy().load().type(TutorServices.class).id(((Long)session.getAttribute("tutor")).longValue()).now();
//TutorDetail tutor=ofy().load().type(TutorDetail.class).id(((Long)session.getAttribute("tutor")).longValue()).now();				 						
//Plans pl=ofy().load().type(Plans.class).filter("tutor", Ref.create(tutor)).first().now();



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
                         <div class="row">
            	<div class="col-md-3 col-xs-4"><b style="font-weight: 700;">Posted By: </b>  </div>
                 <div class="col-xs-8 col-md-9 "> <%= ld.getName() %></div>

          
          </div>

          <div class="row">
          	<div class=" col-md-3 col-xs-4"><b style="font-weight: 700;">Area/Pincode:</b> </div>
          	<div class="col-xs-8 col-md-9"><%= ld.getArea() %> <strong><%= ld.getSubject() %>(3.5 km away)</strong></div>
      
          </div> 

          <div class="row">
          	<div class="col-md-3 col-xs-4"><b style="font-weight: 700;">Gender Preference:</b>  
          	</div>
          	<div class="col-xs-8 col-md-9"><%= ld.getSex_pref() %></div>

          </div>

          <div class="row">
          	<div class="col-md-3 col-xs-4">
          		<b style="font-weight: 700;">Approx. Parents Budget:</b>
          	</div>
             <div class="col-xs-8 col-md-9"><%= ld.getFees() %></div>


          </div>

          <div class="row">
          	<div class="col-md-3 col-xs-4">
          		<b style="font-weight: 700;">Parents Message:</b>
          	</div>
          	<div class="col-xs-8 col-md-9"><%= ld.getParentsrequirements() %></div>

          </div> 


          <div class="row">
          	<div class="col-md-3 col-xs-4">
          		<b style="font-weight: 700;">When Parents will Start:</b>
          	</div>
          	<div class="col-xs-8 col-md-9"> <%= ld.getStart_time() %></div>

          </div> 

          <div class="row">
          	<div class="col-md-3 col-xs-4"><b style="font-weight: 700;">Total Views:</b></div>
          	<div class="col-xs-8 col-md-9"><a href=""><%if(ld.getViewed_by()!=null){  %><%=ld.getViewed_by().size()%> Views <%}   else{ %> Be the first One to get details <%} %>  </a></div> 
          </div>
          
      </div>

                 <div style="border-right: 1px solid #cecece; 
                 border-left: 1px solid #cecece;  border-bottom: 1px solid #cecece;
                  padding: 10px;">
               <div class="row">
                   <div class=" col-xs-6 col-sm-6 col-md-6">
                   	
                  	<button class="btn " style="background-color: #00bcd4; color: white;">Apply & Get Details</button>    	
                   </div>
                   

               </div></div>  <br><br>
</div>
<% } %>
	</div>
	</div> <!-- Main row ends here-->


</section>
		

  
