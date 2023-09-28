package cscho.java.basic;

public class MyCar {
	int maxSpeed;
	String carName;
	String carColor;
	
	public MyCar(String name,int speed) {
		this.carName = name;
		this.maxSpeed = speed;
	}

	public MyCar(String name,int speed, String color) {
		this.carName = name;
		this.maxSpeed = speed;
		this.carColor = color;
	}

	
	public void maxSpeedUpdate(int speed) {
		this.maxSpeed += speed;
	}
	public static void main(String[] args) {
		MyCar car1 = new MyCar("소나타",100);
		MyCar car2 = new MyCar("그랜저",200,"black");
		System.out.println(car1.carName+"/"+car1.carColor+"/"+car1.maxSpeed);
		System.out.println(car2.carName+"/"+car2.carColor+"/"+car2.maxSpeed);
		car1.maxSpeedUpdate(-20);
		System.out.println(car1.carName+"/"+car1.carColor+"/"+car1.maxSpeed);
	}

}
