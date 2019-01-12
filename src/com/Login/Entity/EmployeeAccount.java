package com.Login.Entity;

import java.util.LinkedHashSet;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;

@Entity
public class EmployeeAccount {


@Id long Phone;
String password;
@Index String emp_id;
@Index String name;
@Index String workemail;
@Index long pending_callback;
@Index long not_touched_myclients;
@Index long total_myclients;
@Index long not_interested_clients;
@Index long pending_clients;
@Index long in_process_clients;
@Index long confirm_clients;
@Index long payment_received_clients;
@Index long newregisteredclients;

@Index LinkedHashSet<String> absent_days;
@Index String access_token;
@Index String ip_address;
@Index LinkedHashSet<Long> access_to_panels;
@Index String department;


public long getNewregisteredclients() {
	return newregisteredclients;
}
public void setNewregisteredclients(long newregisteredclients) {
	this.newregisteredclients = newregisteredclients;
}
public String getAccess_token() {
	return access_token;
}
public void setAccess_token(String access_token) {
	this.access_token = access_token;
}
public String getIp_address() {
	return ip_address;
}
public void setIp_address(String ip_address) {
	this.ip_address = ip_address;
}
public LinkedHashSet<String> getAbsent_days() {
	return absent_days;
}
public void setAbsent_days(LinkedHashSet<String> absent_days) {
	this.absent_days = absent_days;
}
public long getNot_touched_myclients() {
	return not_touched_myclients;
}
public void setNot_touched_myclients(long not_touched_myclients) {
	this.not_touched_myclients = not_touched_myclients;
}
public long getNot_interested_clients() {
	return not_interested_clients;
}
public void setNot_interested_clients(long not_interested_clients) {
	this.not_interested_clients = not_interested_clients;
}
public long getPending_clients() {
	return pending_clients;
}
public void setPending_clients(long pending_clients) {
	this.pending_clients = pending_clients;
}
public long getIn_process_clients() {
	return in_process_clients;
}
public void setIn_process_clients(long in_process_clients) {
	this.in_process_clients = in_process_clients;
}
public long getConfirm_clients() {
	return confirm_clients;
}
public void setConfirm_clients(long confirm_clients) {
	this.confirm_clients = confirm_clients;
}
public long getPayment_received_clients() {
	return payment_received_clients;
}
public void setPayment_received_clients(long payment_received_clients) {
	this.payment_received_clients = payment_received_clients;
}
public long getTotal_myclients() {
	return total_myclients;
}
public void setTotal_myclients(long total_myclients) {
	this.total_myclients = total_myclients;
}
public String getWorkemail() {
	return workemail;
}
public long getPending_callback() {
	return pending_callback;
}
public void setPending_callback(long pending_callback) {
	this.pending_callback = pending_callback;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public void setWorkemail(String workemail) {
	this.workemail = workemail;
}
public long getPhone() {
	return Phone;
}
public void setPhone(long phone) {
	Phone = phone;
}
public String getEmp_id() {
	return emp_id;
}
public void setEmp_id(String emp_id) {
	this.emp_id = emp_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


public EmployeeAccount(long phone, String password,String emp_id,String workemail,String name) {
	super();
	this.Phone = phone;
	this.password = password;
	this.emp_id=emp_id;
	this.name=name;
	this.workemail=workemail;
	this.pending_callback=0;
	this.payment_received_clients=0;
	this.not_interested_clients=0;
	this.in_process_clients=0;
	this.absent_days=new LinkedHashSet<String>();
	this.absent_days.add("a");
		
}

public EmployeeAccount(){
	
}
}
