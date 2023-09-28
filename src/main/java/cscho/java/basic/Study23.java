package cscho.java.basic;

import java.util.ArrayList;
import java.util.List;

public class Study23 {

	public static void main(String[] args) {
		List<String> list1 = new ArrayList<>();
		list1.add("50");
		list1.add("60");
		list1.add("70");
		try {
			System.out.println(list1.get(0));
			System.out.println(list1.get(5));
			System.out.println(list1.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
