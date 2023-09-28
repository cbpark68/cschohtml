package cscho.java.basic;

public class Car2 {
	 int speed;
	 String carName;

	public  void speedUp() {
		speed++;
	}
	public  void speedDown() {
		speed--;
		if(speed < 0)
			stop();
	}
	public  void stop() {
		speed = 0;
	}
	public static void main(String[] args) {
		Car2 car2 = new Car2();
		Car2 grand = new Car2();
		car2.carName = "소나타";
		car2.speed = 100;
		car2.speedUp();
		car2.speedUp();
		System.out.println("속도는 "+car2.speed);
		car2.speed = 2;
		car2.speedDown();
		car2.speedDown();
		car2.speedDown();
		car2.speedDown();
		car2.speedDown();
		car2.speedDown();
		System.out.println("속도는 "+car2.speed);
		grand.carName = "그랜져";
		grand.speed = 100;
		grand.speedUp();
		grand.speedUp();
		System.out.println("속도는 "+grand.speed);
	}

}
