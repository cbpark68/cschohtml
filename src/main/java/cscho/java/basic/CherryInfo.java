package cscho.java.basic;

public class CherryInfo {
	final static String name = "체리";
	static int price =5000;
	static void discount() {
		price = price - (price/10);
	}
}
