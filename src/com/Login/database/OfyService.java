package com.Login.database;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
import com.Login.Entity.CRM_Panels;
import com.Login.Entity.CallLog;
import com.Login.Entity.EmployeeAbsentRecord;
import com.Login.Entity.EmployeeAccount;
import com.Login.Entity.Feedbacktest;
import com.Login.Entity.FormData;
import com.Login.Entity.Lead;
import com.Login.Entity.LoginTutor;
import com.Login.Entity.Login_Details;
import com.Login.Entity.MemberSubjects;
import com.Login.Entity.Plans;
import com.Login.Entity.ServiceData;
import com.Login.Entity.ServiceFeedback;
import com.Login.Entity.StudentDetail;
import com.Login.Entity.StudentLoginDetails;
import com.Login.Entity.TeacherFollowUp;
import com.Login.Entity.TutorDetail;
import com.Login.Entity.TutorServices;
import com.Login.Entity.Zone;
import com.Login.Entity.Phone;
import com.Login.Entity.Email;
import com.Login.Entity.ZoneData2;
public class OfyService {

	static{
		factory().register(Login_Details.class);
		factory().register(Zone.class);
		factory().register(Feedbacktest.class);
		factory().register(Phone.class);
		factory().register(Email.class);
		factory().register(StudentLoginDetails.class);
		factory().register(StudentDetail.class);
		factory().register(Lead.class);
		factory().register(ZoneData2.class);
		factory().register(ServiceFeedback.class);
		factory().register(FormData.class);
		factory().register(Plans.class);
		factory().register(TutorDetail.class);
		factory().register(LoginTutor.class);
		factory().register(ServiceData.class);
		factory().register(TeacherFollowUp.class);
		factory().register(CRM_Panels.class);
		factory().register(EmployeeAccount.class);
		factory().register(EmployeeAbsentRecord.class);
		factory().register(CallLog.class);
		factory().register(TutorServices.class);
		factory().register(MemberSubjects.class);
	}
	public static Objectify ofy()
	{
		return ObjectifyService.ofy();
	}
	
	public static ObjectifyFactory factory()
	{
		return ObjectifyService.factory();
	}
	
}
