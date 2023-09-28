package cscho.java.basic;

class TvControl{
	boolean power = false;
	int channel = 0;
	public void power() {
		power = !power;
	}
	public void channelUp() {
		channel++;
	}
	public void channelDown() {
		channel--;
		if(channel < 0)
			channel = 999;
	}
	@Override
	public String toString() {
		return "TvControl [power=" + power + ", channel=" + channel + "]";
	}
}
public class MyTv {

	public static void main(String[] args) {
		TvControl tv = new TvControl();
		tv.power();
		tv.channel = 2;
		tv.channelDown();
		System.out.println(tv.toString());
		tv.channelUp();
		tv.channelDown();
		tv.channelDown();
		tv.channelDown();
		tv.channelDown();
		System.out.println(tv.toString());
		tv.power();
		System.out.println(tv.toString());
	}

}
