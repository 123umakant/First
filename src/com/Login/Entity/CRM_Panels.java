package com.Login.Entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class CRM_Panels {

@Id long id;
@Index long panel_id;
@Index String name;
@Index String department;


public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getPanel_id() {
	return panel_id;
}
public void setPanel_id(long panel_id) {
	this.panel_id = panel_id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}



public CRM_Panels(long id, long panel_id, String name, String department) {
	super();
	this.id = id;
	this.panel_id = panel_id;
	this.name = name;
	this.department = department;
}


public CRM_Panels() {
	
	
}


}
