package com.Login.Controller;

import static com.Login.database.OfyService.ofy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.Login.Entity.Lead;
import com.Login.Entity.MemberSubjects;
import com.Login.Entity.TutorDetail;

public class MatchingTutorController extends HttpServlet {

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{

String enq_i = req.getParameter("id");

System.out.println(enq_i);

long enq_id = Long.parseLong(enq_i);

Lead ld = ofy().load().type(Lead.class).id(enq_id).now();

double latitude = ld.getLatitude();
double longitude = ld.getLongitude();
String course = ld.getCourse();
String subject = ld.getSubject();
String sex_pref = ld.getSex_pref();

/*double latitude = Double.parseDouble(latitud);
double longitude = Double.parseDouble(longitud);*/

PrintWriter out = res.getWriter();

int km =2;

double to_latitude = latitude+km*0.008993182000001099 ;
double from_latitude = latitude-km*0.008993182000001099 ;

double to_longitude = longitude+km*0.010258364990164637 ;
double from_longitude = longitude-km*0.010258364990164637 ;

System.out.println(course);
System.out.println(subject);
System.out.println(from_latitude);
System.out.println(to_latitude);

System.out.println(from_longitude);
/*System.out.println(from_longitude);*/

HashMap<Long,Float> hmap = new HashMap<Long,Float>();

JSONObject json = new JSONObject();
JSONArray jsonarray = new JSONArray();

List<MemberSubjects> ms=null;

/*while (hmap.size()<20)
{*/
if(!sex_pref.equals("any"))
{
ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).filter("gender",sex_pref).list();
	System.out.println("Inside If");
}
else
	
 ms = ofy().load().type(MemberSubjects.class).filter("lat >=",from_latitude).filter("lat <",to_latitude).filter("course",course).filter("subject",subject).list();

System.out.println("hello");

Iterator<MemberSubjects> itr = ms.iterator();

while (itr.hasNext())
{
System.out.println("hello again");
MemberSubjects value = itr.next();

if((value.getLng()>from_longitude) && (value.getLng()<to_longitude))
{

float Recent_Pay_Rating = value.getRecentPay_rating();
float Last_Active_Rating = value.getLast_active_rating();
float Last_Sms_Rating = value.getLast_sms_rating();


float total_Rating = Recent_Pay_Rating+Last_Active_Rating+Last_Sms_Rating ;
long tutor_contact = value.getTutor().get().getContact();

System.out.println(total_Rating);
System.out.println(tutor_contact);

hmap.put(tutor_contact,total_Rating);

System.out.println(hmap);
int size = hmap.size();

if(size <20)
{	
km = km+1;	
}

}// End of If
}// End of Inner While 

//}// End of Outer While

for (long contact:hmap.keySet())
{
	
JSONObject js = new JSONObject();	
long tutor_contact = contact;

TutorDetail tut = ofy().load().type(TutorDetail.class).id(contact).now();

String name = tut.getName();
String age = tut.getDob();
String gender = tut.getGender();
String qualification = tut.getQualification();
int experience = tut.getExperience();
String last_login = tut.getLastactivedate();
String area = tut.getArea();

double tutor_latitude = tut.getLatitude();
double tutor_longitude = tut.getLongitude();


double tutor_distance =(distance(latitude,longitude,tutor_latitude,tutor_longitude)/1000);

System.out.println(tutor_distance);

js.put("tutor_contact",tutor_contact);
js.put("tutor_name",name);
js.put("tutor_age",age);
js.put("tutor_gender",gender);
js.put("tutor_qualification", qualification);
js.put("tutor_experience", experience);
js.put("tutor_last_login",last_login);
js.put("tutor_area", area);
js.put("tutor_distance",tutor_distance);

System.out.println("Contact No :" +contact);
	
jsonarray.put(js);

}
	
json.put("tutor_details",jsonarray);

out.print(json.toString());




}// End of Post

public static double distance(double lat1, double lon1, double lat2,
		double lon2) {
	 final int R = 6371; // Radius of the earth

	    double latDistance = Math.toRadians(lat2 - lat1);
	    double lonDistance = Math.toRadians(lon2 - lon1);
	    double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
	            + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
	            * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
	    double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	    double distance = R * c * 1000; // convert to meters

	   
	    return distance;
}














}// End of Class



















/*private static Map<Long, Double> sortByValue(Map<Long, Double> unsortMap,
final boolean order) 
{
	  //for ASCENDING order order=true
	  List<Entry<Long,Double>> list = new LinkedList<>(unsortMap.entrySet());

// Sorting the list based on values 
	  list.sort((o1, o2) -> order ?
o1.getValue().compareTo(o2.getValue()) == 0 ?
o1.getKey().compareTo(o2.getKey()) : o1.getValue().compareTo(o2.getValue()) :
o2.getValue().compareTo(o1.getValue()) == 0 ?
o2.getKey().compareTo(o1.getKey()) : o2.getValue().compareTo(o1.getValue()));
return list.stream().collect(Collectors.toMap(Entry::getKey, Entry::getValue,
(a, b) -> b, LinkedHashMap::new));

}*/




	
	
	
	
	

