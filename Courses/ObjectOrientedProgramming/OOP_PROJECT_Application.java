package Transport;
import java.util.Scanner;

public class Application {
	//Main Method
	public static void main(String args[]) {
		//Main Menu
		Scanner input = new Scanner (System.in);
		System.out.println("Welcome to RTransCorp Booking System");
		System.out.println("-==================================-");
		System.out.println("Book your transportation: ");
		System.out.println("1. Car");
		System.out.println("2. Microbus");
		System.out.println("Enter '1' or '2': ");
		int book = input.nextInt();
		
		//Action taken onto the User Input (Bus or Microbus)
		switch (book) {
		case 1:  
			Car car = new Car();
			car.bookCar();
			break;
		case 2: 
			Microbus microbus = new Microbus();
			microbus.bookMicrobus();
			break;
		default:
			System.out.println("Sorry wrong input!");  
			break;
		}
		input.close();
	}
}
