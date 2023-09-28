package cscho.java.basic;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Study24 {

	public static void main(String[] args) {
		Map<String,String> map1 = new HashMap<>();
		map1.put("a","10");
		map1.put("b","11");
		map1.put("c","12");
		Iterator<String> keys = map1.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
			System.out.println(map1.get(key));
		}
		
		Map<String,Integer> map2 = new HashMap<>();
		map2.put("kor", 100);
		map2.put("eng", 90);
		map2.put("math", 80);
		Iterator<String> keys2 = map2.keySet().iterator();
		int sum = 0;
		while(keys2.hasNext()) {
			sum += map2.get(keys2.next());
		}
		System.out.println(sum+"/"+(sum/map2.size()));
	}


}
