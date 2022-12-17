package Abstraction;

public class App {
	public static void main (String args[]) {
		Phone Ip = new IPhone();
		Ip.getCharge();
		Ip.getConnection(32);
		Phone Vi = new Vivo();
		Vi.getCharge();
		Vi.getConnection(40);
	}
}
