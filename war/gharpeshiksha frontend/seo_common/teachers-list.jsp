<%@ page import="com.gharpeshiksha.entity.*" %>
<%@ page import="static com.gharpeshiksha.database.OfyService.*,java.util.* " %>
<%@ page import="com.googlecode.objectify.*" %>
<% String cls=request.getParameter("class");
String subject=request.getParameter("subject");
String keyword=request.getParameter("keyword");
double lat=Double.parseDouble(request.getParameter("lat"));
double lng=Double.parseDouble(request.getParameter("lng"));
int radius=Integer.parseInt(request.getParameter("radius"));
String title=request.getParameter("title");

double fromlat,tolat,fromlng,tolng;
fromlat=lat-radius*0.008993182000001099;
tolat=lat+radius*0.008993182000001099;
fromlng=lng-radius*0.010258364990164637;
tolng=lng+radius*0.010258364990164637; 


List<MemberSubjects> list=null;
LinkedHashSet<Long> teacherlist=new LinkedHashSet<Long>();
teacherlist.clear();
int iteration=1;
boolean gotteachers=false;
if(cls.equals("")&&subject.equals(""))
	{ 
	while(true)
	{list=ofy().load().type(MemberSubjects.class).filter("lat >", fromlat).filter("lat <", tolat).order("lat").order("-id").offset((iteration-1)*20).limit(20).list();
     Iterator<MemberSubjects> itr=list.iterator();
     while(itr.hasNext())
     {
    	 MemberSubjects memsub=itr.next();
    	 if(memsub.getLng()>fromlng&&memsub.getLng()<tolng)
    	 {
    		 teacherlist.add(memsub.getTutor().get().getContact());
    		 if(teacherlist.size()>3)
    		 { gotteachers=true;
    		 break;
    		 }
    		 }
     }
    if(list==null||list.isEmpty()||gotteachers)
    {break;
    }else 
    	iteration++;
    
	}
	}
	else if(!cls.equals("")&&subject.equals(""))
	{ 
	while(true)
	{list=ofy().load().type(MemberSubjects.class).filter("lat >", fromlat).filter("lat <", tolat).filter("course", cls).order("lat").order("-id").offset((iteration-1)*20).limit(20).list();
     Iterator<MemberSubjects> itr=list.iterator();
     while(itr.hasNext())
     {
    	 MemberSubjects memsub=itr.next();
    	 if(memsub.getLng()>fromlng&&memsub.getLng()<tolng)
    	 {
    		 teacherlist.add(memsub.getTutor().get().getContact());
    		 if(teacherlist.size()>3)
    		 { gotteachers=true;
    		 break;
    		 }
    		 }
     }
    if(list==null||list.isEmpty()||gotteachers)
    break;
    else 
    	iteration++;
    
	}
	}else if(cls.equals("")&&!subject.equals(""))
	{ 
	while(true)
	{list=ofy().load().type(MemberSubjects.class).filter("lat >", fromlat).filter("lat <", tolat).filter("subject", subject).order("lat").order("-id").offset((iteration-1)*20).limit(20).list();
     Iterator<MemberSubjects> itr=list.iterator();
     while(itr.hasNext())
     {
    	 MemberSubjects memsub=itr.next();
    	 if(memsub.getLng()>fromlng&&memsub.getLng()<tolng)
    	 {
    		 teacherlist.add(memsub.getTutor().get().getContact());
    		 if(teacherlist.size()>3)
    		 { gotteachers=true;
    		 break;
    		 }
    		 }
     }
    if(list==null||list.isEmpty()||gotteachers)
    break;
    else 
    	iteration++;
    
	}
	}else if(!cls.equals("")&&!subject.equals(""))
	{ 
	while(true)
	{list=ofy().load().type(MemberSubjects.class).filter("lat >", fromlat).filter("lat <", tolat).filter("course", cls).filter("subject", subject).order("lat").order("-id").offset((iteration-1)*20).limit(20).list();
     Iterator<MemberSubjects> itr=list.iterator();
     while(itr.hasNext())
     {
    	 MemberSubjects memsub=itr.next();
    	 if(memsub.getLng()>fromlng&&memsub.getLng()<tolng)
    	 {
    		 teacherlist.add(memsub.getTutor().get().getContact());
    		 if(teacherlist.size()>3)
    		 { gotteachers=true;
    		 break;
    		 }
    		 }
     }
    if(list==null||list.isEmpty()||gotteachers)
    break;
    else 
    	iteration++;
    
	}
	}%>

<section style="margin-bottom: 50px;">
		<div class="container " style="width:90%; background-color:#ffffff; box-shadow:0px 1px 1px 0px rgba(0, 0, 0, 0.2);">
			<div class="row">
				<div class="hiw_student">
					<div class="wrapper">
						<center>
							<h3 class="heading-style">List of <%=title%></h3>
						</center>
						<br>
						<div class="container" style="min-height: 370px; width:100%; background-color:#ffffff;">

							<div class="col-md-12" style="margin-bottom:23px;">
						<%for(long phn:teacherlist){
							TutorDetail tut=ofy().load().type(TutorDetail.class).id(phn).now();
							%>
								<div class="col-md-6 ">
									<div class="col-sm-12 margin-on-small heigh-on-medium" style="min-height:290px; border: 1px solid #e2e2e2;
						padding: 12px;margin-bottom:15px;">
										<div class="col-sm-3">
											<img class="img-responsive" src="<%if(tut.getProfile_pic_url()!=null){%><%=tut.getProfile_pic_url()%><%}else{if(tut.getGender().equals("male")){%>../image/default-male.jpg<%}else{%>../image/default-female.jpg<%}} %>" alt="">

										</div>
										<div class="col-sm-9 list-teacher-font">
											<span class="color-black"><%=tut.getName().toUpperCase()%></span>
											<br> <%=title%>
											<br>
											<span class="color-black"> Experience:</span> <%if(tut.getExperience()>0){%><%=tut.getExperience()%> Years<%}else{%><%=tut.getExperience()+1%> Years<%}%>
											<br>
											<span class="color-black">Qualification:</span> <%=tut.getQualification()%>
											<br>
											<span class="color-black">Student Taught:</span> 8
											<br>

										</div>
									</div>
								</div>

                       <%} %>




							</div>
							<style>
								.color-black {
									color: #14bdee !important;
								}
							</style>	

						</div>

						<center>
							<button type="button" class="  btn btn-primary" onclick="showMore()" style="font-size:20px; width:159px;border-radius: 20px; margin-bottom:20px;">
								<span class="caret" style="margin-right:2px; width:10px;height:9px;"></span> Show More</button>
						</center>

					</div>
				</div>
			</div>
		</div>
	</section>
