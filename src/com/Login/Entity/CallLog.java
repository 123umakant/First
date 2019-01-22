package com.Login.Entity;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;
@Entity
public class CallLog {
	@Id long id; 
	String calldate;
	@Index String src;
	@Index String dst;
    @Index float duration;
    @Index String disposition;
    @Index @Load Ref<EmployeeAccount> employee; 
    
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCalldate() {
		return calldate;
	}
	public void setCalldate(String calldate) {
		this.calldate = calldate;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getDst() {
		return dst;
	}
	public void setDst(String dst) {
		this.dst = dst;
	}
	public float getDuration() {
		return duration;
	}
	public void setDuration(float duration) {
		this.duration = duration;
	}
	public String getDisposition() {
		return disposition;
	}
	public void setDisposition(String disposition) {
		this.disposition = disposition;
	}
	
	
	public CallLog(String calldate, String src, String dst,
			float duration, String disposition, Ref<EmployeeAccount> employee) {
		super();
		this.id = System.currentTimeMillis();
		this.calldate = calldate;
		this.src = src;
		this.dst = dst;
		this.duration = duration;
		this.disposition = disposition;
		this.employee = employee;
	}
	
	public CallLog() {
		super();
	}
}