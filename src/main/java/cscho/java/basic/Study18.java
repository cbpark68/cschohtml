package cscho.java.basic;

public class Study18 {
	int eng = 90;
	int kor = 80;

	public Study18() {
		System.out.println("--생성자--");
	}
	public Study18(String msg) {
		System.out.println(msg);
	}
	public Study18(int eng,int kor) {
		this.kor = kor;
		this.eng = eng;
	}
	public static void main(String[] args) {
		Study18 s = new Study18("어서오세요");
		s.sum();
		s.sum("88");
		s.sum(88,99);
	}
	public void sum() {
		System.out.println(eng+kor);
	}
	public void sum(int math) {
		System.out.println(eng+kor+math);
	}
	public void sum(String math) {
		System.out.println(eng+kor+Integer.parseInt(math));
	}
	public void sum(int math,int sci) {
		System.out.println(eng+kor+math+sci);
	}

}
