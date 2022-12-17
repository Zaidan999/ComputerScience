package Calculator;

public class Display{
	public static void main (String[] args) {
		System.out.println("SIMPLE CALCULATOR");
		System.out.println("~~~~~~~~~~~~~~~~~");
		System.out.println("Simple adding calculation");
		Adding a = new Adding();
		a.add(5, 4, 3);
		a.add(7L, 6L, 5L);
		a.add(5.5, 4.4, 3.3);
		System.out.println("\nSimple substracting calculation");
		Substracting s = new Substracting();
		s.substract(8, 7, 6);
		s.substract(10L, 9L, 8L);
		s.substract(8.8, 7.7, 6.6);
	}
}
