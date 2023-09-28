package cscho.java.basic;

import java.util.Calendar;

public class CalTest1 {

	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
	
		//cal.add(Calendar.MONTH, 2);
		cal.set(2023, 8, 25);
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int date = cal.get(Calendar.DATE);
		
		System.out.println(year+"/"+month+"/"+date);

		int week = cal.get(Calendar.DAY_OF_WEEK);
		int last_day = cal.getActualMaximum(Calendar.DATE);
		String str="";
		switch(week) {
		case 1: str="일";break;
		case 2: str="월";break;
		case 3: str="화";break;
		case 4: str="수";break;
		case 5: str="목";break;
		case 6: str="금";break;
		case 7: str="토";break;
		}
		System.out.println(week+"/"+last_day+"/"+str);
	}

}
