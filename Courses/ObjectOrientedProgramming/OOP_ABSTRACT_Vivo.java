package Abstraction;

public class Vivo extends Phone {
	int charge = 24;
	int connection;
	
	Vivo() {
		System.out.println("\nSmartphone Brand: Samsung");
	}
	
	public void getCharge() {
		System.out.println("Phone is charged: "+charge+"%");
		System.out.println("Phone is charging: "+(charge+15)+"%");
	}

	public void getConnection(int connection) {
		this.connection = connection;
		System.out.println("Internet connection speed: "+connection+"Mbps");
			System.out.println("Enchancing the connection: "+(connection+8)+"Mbps");
	}

}
