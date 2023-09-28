package cscho.java.basic;

class JavaView{
	public void viewName() {
		System.out.println("자바프로젝트");
	}
	public String viewSeoul() {
		return "강남";
	}
}
class OracleView extends JavaView{
	public void viewName() {
		System.out.println("오라클프로젝트");
	}
	public String viewBusan() {
		return "부산";
	}
	public void viewAll() {
		System.out.println(Math.ceil(9.1));
		super.viewName();
		viewName();
	}
}
public class OverWriteTest {

	public static void main(String[] args) {
		OracleView ov = new OracleView();
		//ov.viewName();
		//System.out.println(ov.viewBusan()+"/"+ov.viewSeoul());
		JavaView jv = new JavaView();
		
		//jv.viewName();
		//System.out.println(jv.viewSeoul());
		ov.viewAll();
	}

}
