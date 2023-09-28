package cscho.java.basic;

public class Study9 {

	public static void main(String[] args) {
		System.out.println(Math.ceil(98.2));
		System.out.println(Math.ceil(98.21232));
		System.out.println(Math.ceil(98.9));

		System.out.println(Math.floor(98.2));
		System.out.println(Math.floor(98.21232));
		System.out.println(Math.floor(98.9));

		System.out.println(Math.round(98.2));
		System.out.println(Math.round(98.5));
		System.out.println(Math.round(98.9));

		System.out.println(Math.rint(98.2));
		System.out.println(Math.rint(98.5));
		System.out.println(Math.rint(98.9));

		System.out.println(Math.abs(-7));
		System.out.println(Math.abs(7));

		System.out.println(Math.pow(10, 2));
		System.out.println(Math.pow(10, 3));

		System.out.println(Math.sqrt(100));
		System.out.println(Math.sqrt(25));

		System.out.println(Math.max(100, 10));
		System.out.println(Math.min(100, 10));

		int s1 = 80;
		int s2 = 90;
		int s3 = 100;
		System.out.println(Math.max(s1, Math.max(s2, s3)));

		double avg = 86.27;
		System.out.println(Math.ceil(avg));
		System.out.println(Math.floor(avg));
		System.out.println((int) Math.floor(avg));
		System.out.println(Math.round(Math.floor(avg)));

		System.out.println(Math.random());

		double r1 = Math.random();
		System.out.println(r1);
		System.out.println(r1 * 100);
		System.out.println((int) (r1 * 100));

		System.out.print("\n\n");

		for (int i = 0; i < 6; i++) {
			System.out.println((int) (Math.random() * 45) + 1);
		}
	}

}
