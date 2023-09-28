package cscho.java.basic;

class StudentInfo{
	int eng = 0;
	int kor = 0;
	String name = "";
	public int hap() {
		return eng+kor;
	}
	public int avg() {
		return (eng+kor)/2;
	}
}

public class MyBook2 {

	public static void main(String[] args) {
		StudentInfo st1 = new StudentInfo();
		StudentInfo st2 = new StudentInfo();
		st1.name = "홍길동";
		st2.name = "이순신";
		st1.eng = 100;
		st1.kor = 90;
		st2.eng = 80;
		st2.kor = 70;
		System.out.println(st1.name+"="+st1.avg());
		System.out.println(st2.name+"="+st2.avg());
	}

}
