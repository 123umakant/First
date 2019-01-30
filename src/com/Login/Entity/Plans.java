package com.Login.Entity;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

@Entity
public class Plans {
	@Id long id;
	@Index @Load Ref<TutorDetail> tutor;
	@Index String plan;
	@Index int amount;
	@Index int period; //in months
	@Index int credit_count; 
	@Index int contact_views; 
	@Index String lastconversation_with; //name of client who had last conversation
	@Index String expiry_date;
	@Index long expirytimestamp;
    
	
	
	public int getContact_views() {
		return contact_views;
	}

	public void setContact_views(int contact_views) {
		this.contact_views = contact_views;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getExpirytimestamp() {   
		return expirytimestamp+86400000L;  //add 24 hour to give day end timestamp of expirydate 
	}

	public void setExpirytimestamp(long expirytimestamp) {
		this.expirytimestamp = expirytimestamp;
	}

	public int getCredit_count() {
		return credit_count;
	}

	public void setCredit_count(int credit_count) {
		this.credit_count = credit_count;
	}

	public String getLastconversation_with() {
		return lastconversation_with;
	}

	public void setLastconversation_with(String lastconversation_with) {
		this.lastconversation_with = lastconversation_with;
	}

	public Ref<TutorDetail> getTutor() {
		return tutor;
	}

	public void setTutor(Ref<TutorDetail> tutor) {
		this.tutor = tutor;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public String getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	
	public Plans(Ref<TutorDetail> tutor, String plan, int amount, int period,
			String expiry_date,int contact_views,long expirytimestamp) {
		super();
		this.id=System.currentTimeMillis();
		this.tutor = tutor;
		this.plan = plan;
		this.amount = amount;
		this.period = period;
		this.expiry_date = expiry_date;
		this.contact_views=contact_views;
		this.expirytimestamp=expirytimestamp;
	}

	  public Plans()
	    {
		  
	    }

}
