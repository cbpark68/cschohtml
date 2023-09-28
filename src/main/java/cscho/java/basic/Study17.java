package cscho.java.basic;

class TvInfo{
		String color;
		String size;
		String price;
		static String maker = "";
}

public class Study17 {

	public static void main(String[] args) {
		TvInfo tv1 = new TvInfo();
		TvInfo tv2 = new TvInfo();

		tv1.color = "blue";
		tv1.size = "30";
		tv1.price = "1000000";
		tv1.maker = "삼성";
		
		tv2.color = "red";
		tv2.size = "50";
		tv2.price = "2000000";
		tv2.maker = "엘지";
		
		tv1 = tv2;
		
		System.out.println("tv1="+tv1.color+"-"+tv1.size+"-"+tv1.price+"-"+tv1.maker);
		System.out.println("tv2="+tv2.color+"-"+tv2.size+"-"+tv2.price+"-"+tv2.maker);

	}

}
