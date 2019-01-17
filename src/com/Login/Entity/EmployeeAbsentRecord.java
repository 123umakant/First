package com.Login.Entity;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

@Entity
public class EmployeeAbsentRecord {
	
@Id long id;
@Index @Load Ref<EmployeeAccount> employee; 
@Index long datetimestamp;
@Index String leavetype;


public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public Ref<EmployeeAccount> getemployee() {
	return employee;
}
public void setemployee(Ref<EmployeeAccount> employee) {
	this.employee = employee;
}
public long getDatetimestamp() {
	return datetimestamp;
}
public void setDatetimestamp(long datetimestamp) {
	this.datetimestamp = datetimestamp;
}
public String getLeavetype() {
	return leavetype;
}
public void setLeavetype(String leavetype) {
	this.leavetype = leavetype;
}

public EmployeeAbsentRecord(Ref<EmployeeAccount> employee,
		long datetimestamp, String leavetype) {
	super();
	this.id =System.currentTimeMillis();
	this.employee = employee;
	this.datetimestamp = datetimestamp;
	this.leavetype = leavetype;
}

public EmployeeAbsentRecord()
{
	
}

}
