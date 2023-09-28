package cscho.java.basic;

import java.util.Scanner;

public class Study6 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("단을 입력해주세요>>");
		int dan=0;
		dan = s.nextInt();
		for(int i=1;i<10;i++) {
			System.out.println(dan+"*"+i+"="+dan*i);
		}
		System.out.print("별 출력 갯수>>");
		int cnt = 0;
		cnt = s.nextInt();
		for(int i=0;i<cnt;i++) {
			System.out.print("*");
		}
	}

}
