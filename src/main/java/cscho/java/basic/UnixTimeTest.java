package cscho.java.basic;

import java.util.Calendar;

public class UnixTimeTest {

	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		System.out.println(cal.getTimeInMillis());
		int hap = 0;
		for(int i=0;i<10000000;i++) {
			hap += i;
		}
		Calendar cal2 = Calendar.getInstance();
		System.out.println(cal2.getTimeInMillis());

		long aa = cal.getTimeInMillis();
		cal.setTimeInMillis(aa);
		System.out.println(cal.get(Calendar.YEAR));
		
		cal.set(2023, 8, 14);
		long a2 = cal.getTimeInMillis();
		long a3 = a2 - aa;
		System.out.println(a3);
		long a4 = (a3/1000) / (60*60*24);
		System.out.println(a4);
	}

}
