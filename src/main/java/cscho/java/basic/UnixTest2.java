package cscho.java.basic;

import java.util.Calendar;

public class UnixTest2 {

	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		cal.set(2023, 8, 14);
		long a1 = cal.getTimeInMillis();
		cal.set(2023, 8, 13);
		long a2 = cal.getTimeInMillis();
		long a3 = (a1 - a2)/1000;
		long a4 = a3 / (60*60*24);
		System.out.println(date_diff("2023-9-14","2023-9-13"));

	}
	
	public static long date_diff(String sdate,String edate) {
		long rslt = 0;
		Calendar cal = Calendar.getInstance();
		String[] sd =sdate.split("-");
		String[] ed =edate.split("-");
		int yy1 = Integer.parseInt(sd[0]);
		int mm1 = Integer.parseInt(sd[1])-1;
		int dd1 = Integer.parseInt(sd[2]);
		int yy2 = Integer.parseInt(ed[0]);
		int mm2 = Integer.parseInt(ed[1])-1;
		int dd2 = Integer.parseInt(ed[2]);
		cal.set(yy1, mm1, dd1);
		long a1 = cal.getTimeInMillis();
		cal.set(yy2, mm2, dd2);
		long a2 = cal.getTimeInMillis();
		long a3 = (a1 - a2)/1000;
		rslt = a3 / (60*60*24);
		return rslt;
	}

}
