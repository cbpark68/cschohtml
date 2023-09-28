package cscho.java.basic;

public class Study8 {
	public static void main(String[] args) {
		String subject = "    Html,mysql,java      ";
		System.out.println(subject);
		subject = subject.replace("mysql","oracle");
		System.out.println(subject);
		System.out.println(subject.length());
		subject = subject.trim();
		System.out.println(subject);
		System.out.println(subject.length());
		System.out.println(subject.substring(12));
		System.out.println(subject.charAt(5));
		System.out.println(subject.substring(5,6));
		int idx = subject.indexOf("java");
		if(idx > -1)
			System.out.println("존재함");
		else
			System.out.println("존재안함");
		String[] ss = subject.split(",");
		System.out.println(ss[1]);
		
		String title="프로그램 입문";
		String content="를 이용하여 완성한다.";
		if(title.indexOf("자바") > -1 && content.indexOf("자바") > -1){
			System.out.println("둘다 존재");
		}else if(title.indexOf("자바") > -1 || content.indexOf("자바") > -1){
			System.out.println("하나만 존재");
		}else {
			System.out.println("둘다 부재");
		}
		String jumsu = "eng:70,kor:80,math:90";
		String[] arr = jumsu.split(",");
		for(int i=0;i<arr.length;i++) {
			String[] str = arr[i].split(":");
			System.out.println(str[1]);
		}
		
		String str = "java";
		for(int i=0;i<str.length();i++) {
			for(int j=0;j<i;j++) {
				System.out.print(" ");
			}
			System.out.println(str.substring(i,i+1));
		}
		int a = 0;
		int b = 0;
		System.out.println(a+" "+b);
		b = ++a;
		System.out.println(a+" "+b);
	}
}
