package cscho.java.basic;

class Person11{
	private int age;
	public String name;
	protected int height;
	private int weight;
	public void setAge(int age) {
		this.age = age;
	}
	public int getAge() {
		return this.age;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getWeight() {
		return this.weight;
	}
}
public class Study20 {

	public static void main(String[] args) {
		Person11 p1 = new Person11();
		p1.setAge(11);
		p1.name = "홍기롱";
		p1.height = 170;
		p1.setWeight(70);
		System.out.println(p1.height+"/"+p1.getWeight()+"/"+p1.getAge());
	}

}
