package Formula;

import java.io.IOException;
import java.text.ParseException;

public class Distance {

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
	

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	/* :: This function converts decimal degrees to radians : */

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	private static double deg2rad(double deg) {

		return (deg * Math.PI / 180.0);

	}

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	/* :: This function converts radians to decimal degrees : */

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
	private static double rad2deg(double rad) {

		return (rad * 180 / Math.PI);

	}

	
	
}
