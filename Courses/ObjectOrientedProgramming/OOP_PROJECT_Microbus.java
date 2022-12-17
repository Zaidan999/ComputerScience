package Transport;
import java.util.Scanner;

public class Microbus extends Transport{

	@Override
	float TotalFareWithTax() {
		//Method for Total Fare Calculation with Tax
		setTotalFareWithTax ((float) ((getFare()*getSeatCapacity()*getDistance())+0.03*(getFare()*getSeatCapacity()*getDistance())));
		return getTotalFareWithTax();
	}
	
	@Override
	float Discount() {
		//Method to check the discount
		if (getTotalFareWithTax() > 100) {
			setDiscount((float) (getTotalFareWithTax()*0.15)); 
		}
		else {
			setDiscount(0);
		}
		return getDiscount();
	}
	
	@Override
	float DiscountedFare() {
		//Method to add the discount into the total fare with tax
		setDiscountedFare(getTotalFareWithTax()-getDiscount());
		return getDiscountedFare();
	}

	@Override
	float ServiceChargeCheck() {
		//Method to check the Service Charge
		if (getDiscountedFare() >= 95) {
			setServiceChargeCheck(0);
		}
		else {
			setServiceChargeCheck((float) (getDiscountedFare()*0.05));
		}
		return getServiceChargeCheck();
	}
	
	float totalFare() {
		//Method to add Service Charge into the Discounted Fare
		setTotalFare(getServiceChargeCheck() + getDiscountedFare());
		//At this point, we have the Total Fare after Tax, Discount, and Service Charge
		return getTotalFare();
	}
	
	public void bookMicrobus() {
		//User Input of Transport ID, Name, Seat capacity, Distance, and Fare to book the MICROBUS
		Scanner sc = new Scanner (System.in);
		System.out.println("-==================================-");
		System.out.println("-----------   Microbus   -----------");
		System.out.println("-==================================-");
		System.out.print("Input Transport ID	: ");
		this.setId(sc.nextLine());
		System.out.print("Input Your Name		: ");
		this.setName(sc.nextLine());
		System.out.print("Input Seat(s) capacity	: ");
		this.setSeatCapacity(sc.nextInt());
		System.out.print("Input Distance (km)	: ");
		this.setDistance(sc.nextInt());
		System.out.print("Input Fare (RM)		: ");
		this.setFare(sc.nextFloat());
		System.out.println("-==================================-");
		sc.close();
		
		this.TotalFareWithTax();
		this.Discount();
		this.DiscountedFare();
		this.ServiceChargeCheck();
		this.totalFare();
		this.getServiceChargeCheck();
		this.getTotalFare();
		this.printBill();
	}


}
