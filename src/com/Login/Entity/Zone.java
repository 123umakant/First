package com.Login.Entity;


import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
@Entity
public class Zone {

		@Id long timestamp;
		String Zone;
		double lat;
		double lon;	
		public long getTimestamp() {
			return timestamp;
		}
		public void setTimestamp(long timestamp) {
			this.timestamp = timestamp;
		}
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
		public Zone(long timestamp, String zone, double lat, double lon) {
			super();
			this.timestamp = timestamp;
			Zone = zone;
			this.lat = lat;
			this.lon = lon;
		}
		public Zone()
		{
			
       }
		
		
		
		
		
		
		
		

}
