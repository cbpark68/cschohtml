package cscho.java.basic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Study26 {

	public static void main(String[] args) {
		List<Map> list = new ArrayList<>();

		Map<String, String> map = new HashMap<>();
		map.put("title", "1111");
		map.put("pass", "1111");
		map.put("name", "1111");
		list.add(map);
		map = new HashMap<>();
		map.put("title", "2222");
		map.put("pass", "2222");
		map.put("name", "2222");
		list.add(map);
		System.out.println(list);
	}

}
