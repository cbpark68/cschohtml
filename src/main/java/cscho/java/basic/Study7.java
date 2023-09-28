package cscho.java.basic;

public class Study7 {

	public static void main(String[] args) {
		int price = 999;
		String lvl = "저가";
		if(price > 1000)
			lvl = "고가";
		System.out.println(lvl);
		
		int num = 0;
		if(num%2 == 0)
			num += 10;
		else if(num%2 == 1)
			num += 20;
		else
			num = -10;
		System.out.println(num);
		
		boolean b = false;
		System.out.println(!b);
		int a = 10;
		int bb = 10;
		int speed = 10;
		if(a>bb)
			speed += 10;
		else if(a<bb)
			speed += 20;
		else
			speed = 0;
		
		System.out.println(speed);
		
		int admission = 10000;
		int age = 7;
		if(1<=age&&age<=13)
			admission = (int)(admission*0.5);
		else if(age>=70)
			admission = (int)(admission-(admission*.025));
		else
			admission = 10000;
		System.out.println("손님나이는 "+age+"세로 입장료는 "+admission+"입니다.");
		
		for(int i=1;i<=3;i++)
			System.out.println("포도 "+i+"송이");
		
		for(int i=1;i<=10;i++) {
			for(int j=1;j<=i;j++) {
				System.out.print("+");
			}
			System.out.println();
		}
		
		for(int i=101,j=1;i<=1000;i++,j++) {
			System.out.print(i+" ");
			if(j%3==0)
				System.out.print("\n");
		}
		
		for(int i=1;i<=31;i++) {
			String zero = "";
			if(i<10)
				zero = "0";
			System.out.print(zero+i+"일 ");
			if(i%7 == 0)
				System.out.print("\n");
		}
		System.out.println();

		int[] nums = new int[] {10,20};
		int sum = 0;
		for(int i=0;i<nums.length;i++) {
			sum += nums[i];
		}
		System.out.println(sum+" "+sum/nums.length);
	}

}
