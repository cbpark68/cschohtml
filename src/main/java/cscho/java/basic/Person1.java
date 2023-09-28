package cscho.java.basic;

public class Person1 {
	int age;
	public String name;
	private int height;
	private int weight;

	public int getHeight() {
		return this.height;
	}
	public void setHeight(int height) {
		if(height < 0 || 300 < height)
			height = 0;
		this.height = height;
	}
	public int getWeight() {
		return this.weight;
	}
	public void setWeight(int weight) {
		if(weight < 0 || 200 < weight)
			weight = 0;
		this.weight = weight;
	}
}
