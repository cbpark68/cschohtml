package cscho.java.basic;

public class MyFruit2 {
	int kor = 0;
	int eng = 0;
	int sum = 0;

	int sum() {
		sum = kor+eng;
		return sum;
	}
	

	public static void main(String[] args) {
		MyFruit2 mf = new MyFruit2();
		mf.kor = 80;
		mf.eng = 100;
		System.out.println(mf.sum());
		AppleInfo f = new AppleInfo();
		System.out.println(f.name);
		System.out.println(f.price);
		f.discount();
		System.out.println(f.price);
	}
}
