package cscho.java.basic;

public class Study15 {

	public static void main(String[] args) {
		int kor = 90;
		int eng = 70;
		mySum(kor,eng);
		myAvg(kor,eng);
		int[] score = new int[] {90,80,70,60,50,40,110,120,150};
		arraySum1(score);
		roomSize(200);
		int aa = 100;
		int bb = 200;
		myCalc(aa,bb,"*");
	}

	public static void myCalc(int a,int b,String c) {
		int result = 0;
		switch(c){
		case "+":result = a+b;break;
		case "-":result = a-b;break;
		case "*":result = a*b;break;
		case "/":result = a/b;break;
		}
		System.out.println(a+c+b+"="+result);
	}
	public static void roomSize(int i) {
		System.out.println(i+"제곱미터는 "+i*0.3025+"평 입니다.");
	}
	public static void arraySum1(int[] a) {
		int sum = 0;
		for(int i=0;i<a.length;i++) {
			sum += a[i];
		}
		System.out.println("총합="+sum);
	}
	public static void mySum(int a, int b) {
		int hap = a + b;
		System.out.println("합계="+hap);
	}
	public static void myAvg(int a, int b) {
		int hap = a + b;
		int avg = hap / 2;
		System.out.println("평균="+avg);
	}
}
