package cscho.java.basic;

public class Sample2 {
	public int eng = 90;
	private int kor = 80;
	static String title = "과목점수";

	public static void hap1(int a,int b) {
		int r = a+b;
		System.out.println("합계="+r);
	}
	
	public static int hap2(int a,int b) {
		int r = a+b;
		return r;
	}

	public static void main(String[] args) {
		int eng = 99;
		int kor = 78;
		hap1(eng,kor);
		int avg = hap2(eng,kor)/2;
		System.out.println("평균="+avg);
		Sample2 s2 = new Sample2();
		System.out.println(s2.kor);
		s2.title = "aaa";
		System.out.println(title);
		s2.title = "bbb";
		System.out.println(title);
	}

}
