package cscho.java.basic;

public class Study22 {

	public static void main(String[] args) {
		int a = 100;
		int b = 0;
		try {
		System.out.println(a/b);
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("kkkkkkk");
		String[] arr = {"11","22"};
		try {
			System.out.println(arr[0]);
			System.out.println(arr[2]);
			System.out.println(arr[1]);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
