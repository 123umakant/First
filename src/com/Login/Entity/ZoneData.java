package com.Login.Entity;


import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

	@Entity
	public class ZoneData {
		@Id long timestamp;
		@Index String Zone;
		@Index double lat;
		@Index double lon;	
		@Index int redius_area;
		@Index String course;
		@Index int paidteachercount;
		@Index int nonpaidteachercount;
		
		
		public long getTimestamp() {
			return timestamp;
		}
		public void setTimestamp(long timestamp) {
			this.timestamp = timestamp;
		}
		public double getLat() {
			return lat;
		}
		public void setLat(double lat) {
			this.lat = lat;
		}
		
		
		
		public int getPaidteachercount() {
			return paidteachercount;
		}
		public void setPaidteachercount(int paidteachercount) {
			this.paidteachercount = paidteachercount;
		}
		public int getNonpaidteachercount() {
			return nonpaidteachercount;
		}
		public void setNonpaidteachercount(int nonpaidteachercount) {
			this.nonpaidteachercount = nonpaidteachercount;
		}
		public String getCourse() {
			return course;
		}
		public void setCourse(String course) {
			this.course = course;
		}
		public String getZone() {
			return Zone;
		}
		public void setZone(String zone) {
			Zone = zone;
		}
		
		public double getLon() {
			return lon;
		}
		public void setLon(double lon) {
			this.lon = lon;
		}
		public int getRedius_area() {
			return redius_area;
		}
		public void setRedius_area(int redius_area) {
			this.redius_area = redius_area;
		}
		
		public ZoneData(){
			
		}
		public ZoneData(String zone, double lat, double lon, int redius_area) {
			super();
			this.timestamp=System.currentTimeMillis();
			this.Zone = zone;
			this.lat = lat;
			this.lon = lon;	
			this.redius_area = redius_area;
		}
		public ZoneData(String zone, double lat, double lon, int redius_area,
				String course,int paidteachercount,int nonpaidteachercount) {
			super();
			this.timestamp=System.currentTimeMillis();
			this.Zone = zone;
			this.lat = lat;
			this.lon = lon;
			this.redius_area = redius_area;
			this.course = course;
			this.paidteachercount=paidteachercount;
			this.nonpaidteachercount=nonpaidteachercount;
		}
		
		
	}
