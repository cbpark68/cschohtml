package cscho.java.basic;

abstract class sound {
	abstract void cry();
}

class Cat extends sound {

	@Override
	void cry() {
		System.out.println("야옹");
	}

}

class Dog extends sound {

	@Override
	void cry() {
		System.out.println("멍멍");
	}

}

public class Abst2 {
	public static void main(String[] args) {
		Cat cat = new Cat();
		Dog dog = new Dog();
		cat.cry();
		dog.cry();
	}
}
