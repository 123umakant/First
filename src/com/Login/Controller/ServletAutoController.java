package com.Login.Controller;

import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.Entity.Plans;
import com.Login.Entity.ServiceData;

public class ServletAutoController extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		long fromtimestamp=System.currentTimeMillis()-(20*86400000);
		long totimestamp =fromtimestamp+86400000;
		
		
		
		List<Plans> list= ofy().load().type(Plans.class).filter("id >=",fromtimestamp).filter("id<",totimestamp).list();
		Iterator<Plans> itr=list.iterator();
	    while(itr.hasNext())
	    {
	    	Plans value= itr.next();
	    	
	    	ServiceData obj=new ServiceData(value.getTutor().get().getContact(), "");
	    	ofy().save().entity(obj).now();
	    	
	    }
		
		List<Plans> list1=ofy().load().type(Plans.class).filter("expirytimestamp <",System.currentTimeMillis()).list();
	    Iterator<Plans> itr2=list1.iterator();
	    while(itr2.hasNext())
	    {
	    Plans value1= itr2.next();
	    ServiceData sd= ofy().load().type(ServiceData.class).filter("tutor_contact", value1.getTutor().get().getContact()).first().now();
	    if(sd!=null)
	    {
	    ofy().delete().entity(sd).now();
	   
	    }
}
}
}