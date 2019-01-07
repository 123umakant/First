package com.Login.Entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class ZoneData2 {
	@Id String Zone;
	@Index double lat;
	@Index double lon;	
	@Index int radius_area;
	public String getZone() {
		return Zone;
	}
	public void setZone(String zone) {
		Zone = zone;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public int getRadius_area() {
		return radius_area;
	}
	public void setRadius_area(int radius_area) {
		this.radius_area = radius_area;
	}
	public ZoneData2(String zone, double lat, double lon, int radius_area) {
		super();
		Zone = zone;
		this.lat = lat;
		this.lon = lon;
		this.radius_area = radius_area;
	}
	
	public ZoneData2()
	{
		
	}
	
	
}
