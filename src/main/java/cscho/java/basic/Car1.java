package cscho.java.basic;

public class Car1 {
	static int speed;
	static String carName;

	public static void speedUp() {
		speed++;
	}
	public static void speedDown() {
		speed--;
		if(speed < 0)
			stop();
	}
	public static void stop() {
		speed = 0;
	}
	public static void main(String[] args) {
		Car1.speed = 100;
		Car1.speedUp();
		Car1.speedUp();
		System.out.println("속도는 "+Car1.speed);
		Car1.speed = 2;
		Car1.speedDown();
		Car1.speedDown();
		Car1.speedDown();
		Car1.speedDown();
		Car1.speedDown();
		Car1.speedDown();
		System.out.println("속도는 "+Car1.speed);
	}

}
