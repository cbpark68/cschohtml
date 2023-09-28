package cscho.java.basic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Study25 {

	public static void main(String[] args) {
		Map<String,Integer> map1 = new HashMap<>();
		map1.put("kor", 77);
		map1.put("eng", 56);
		map1.put("kor", 49);
		int sum = 0;
		String data = "";
		Iterator<String> keys = map1.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
			sum += map1.get(key);
			if(map1.get(key)<60)
				data += key + ",";
		}
		double avg = Math.round((double)sum / map1.size());
		System.out.println(avg+"/"+data.substring(0,data.length()-1));
		
		List<String> list1 = new ArrayList<>();
		list1.add("60");
		list1.add("70");
		list1.add("80");
		sum = 0;
		for(int i=0;i<list1.size();i++) {
			sum += Integer.parseInt(list1.get(i));
		}
		avg = (double)sum/list1.size();
		System.out.println(avg);
	}

}
