package cscho.java.basic;

public class AppleInfo {
	String name = "사과";
	int price = 3000;

	void discount() {
		price = price - (price/10);
	}
}
