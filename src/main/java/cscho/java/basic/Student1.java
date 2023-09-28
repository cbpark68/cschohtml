package cscho.java.basic;

public class Student1 extends Person1{
	
	public static void main(String[] args) {

		Person1 s1 = new Person1();
		s1.age = 30;
		s1.name = "홍길동";
		s1.setHeight(180);
		s1.setWeight(90);
		System.out.println(s1.getHeight());
		System.out.println(s1.getWeight());
	}

}
