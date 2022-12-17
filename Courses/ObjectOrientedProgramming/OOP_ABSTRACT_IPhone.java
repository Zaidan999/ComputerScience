package Abstraction;

public class IPhone extends Phone {
	int charge = 20;
	int connection;
	
	IPhone() {
		System.out.println("\nSmartphone Brand: iPhone");
	}
	
	public void getCharge() {
		System.out.println("Phone is charged: "+charge+"%");
		System.out.println("Phone is charging: "+(charge+15)+"%");
	}

	public void getConnection(int connection) {
		this.connection = connection;
		System.out.println("Internet connection speed: "+connection+"Mbps");
			System.out.println("Enchancing the connection: "+(connection+5)+"Mbps");
	}
}
