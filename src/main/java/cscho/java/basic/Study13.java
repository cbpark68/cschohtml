package cscho.java.basic;

import java.util.Calendar;

public class Study13 {

	public static void main(String[] args) {
		myAge1(1999);
		System.out.println(myAge2(1999));
	}
	public static void myAge1(int yy) {
		Calendar cal = Calendar.getInstance();
		int cyy = cal.get(Calendar.YEAR);
		System.out.println("사용자 나이는 "+(cyy-yy)+"입니다.");
	}
	public static int myAge2(int yy) {
		Calendar cal = Calendar.getInstance();
		int cyy = cal.get(Calendar.YEAR);
		return cyy - yy;
	}
}
