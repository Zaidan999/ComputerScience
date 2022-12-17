package Abstraction;

public abstract class Phone {


	public Phone() {
		System.out.println("\nPHONE ACTIVATED");
	}
	
	abstract void getCharge ();
	abstract void getConnection (int connection);
}
