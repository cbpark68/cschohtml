package cscho.java.basic;

public class Study21 {

	public static void main(String[] args) {
		System.out.println(UnixTest2.date_diff("2023-9-14","2023-9-13"));
		String color = "bbcc";
		String pattern = ".*a+.*";
		boolean rslt = color.matches(pattern);
		System.out.println(rslt);
		
		String bday = "1968/7-28";
		pattern = "\\d{4}[-|/]\\d{1,2}-\\d{1,2}";
		rslt = bday.matches(pattern);
		System.out.println(rslt);
		
		String str = "공지사항123입니다.";
		pattern = ".*게시판.*";
		rslt = str.matches(pattern);
		System.out.println(rslt);
		int rslt2 = str.indexOf("게시판");
		System.out.println(rslt2);
		String pattern3 = ".*\\d.*";
		rslt = str.matches(pattern3);
		System.out.println(rslt);
		String name = "박철범a";
		pattern = "[A-Za-z가-힣]+";
		rslt = name.matches(pattern);
		System.out.println(rslt);
		String email = "cbpark68@gmail.com";
		pattern = ".+@.+";
		rslt = email.matches(pattern);
		System.out.println(rslt);
	}

}
