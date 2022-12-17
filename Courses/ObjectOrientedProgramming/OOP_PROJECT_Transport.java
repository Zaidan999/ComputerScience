package Transport;

abstract class Transport {
	//Input all the requirements to create teh application
	private String id;
	private String name;
	private float fare;
	private int distance;
	private int seatCapacity;
	private float discount;
	private float TotalFareWithTax;
	private float DiscountedFare;
	private float ServiceChargeCheck;
	private float TotalFare;
	
	//Abstract Method to count the Bill
	abstract float TotalFareWithTax();
	abstract float Discount();
	abstract float DiscountedFare();
	abstract float ServiceChargeCheck();
	abstract float totalFare();
	
	//Getter and Setter of variables
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getFare() {
		return fare;
	}
	public void setFare(float fare) {
		this.fare = fare;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getSeatCapacity() {
		return seatCapacity;
	}
	public void setSeatCapacity(int seatCapacity) {
		this.seatCapacity = seatCapacity;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public float getTotalFareWithTax() {
		return TotalFareWithTax;
	}
	public void setTotalFareWithTax(float totalFareWithTax) {
		TotalFareWithTax = totalFareWithTax;
	}
	public float getDiscountedFare() {
		return DiscountedFare;
	}
	public void setDiscountedFare(float discountedFare) {
		DiscountedFare = discountedFare;
	}
	public float getServiceChargeCheck() {
		return ServiceChargeCheck;
	}
	public void setServiceChargeCheck(float serviceChargeCheck) {
		ServiceChargeCheck = serviceChargeCheck;
	}
	public float getTotalFare() {
		return TotalFare;
	}
	public void setTotalFare(float totalFare) {
		TotalFare = totalFare;
	}
	
	public void printBill() {
		//Method to print the Booking Bill
		System.out.println("-==================================-");
		System.out.println("Transportation Bill");
		System.out.println("------------------------------------");
		System.out.println("Transport ID		: " + getId());
		System.out.println("Passenger Name		: " + getName());
		System.out.println("Distance (km)		: " + getDistance());
		System.out.println("Seat(s) Capacity	: " + getSeatCapacity());
		System.out.println("Fare (RM)		: " + getFare());
		System.out.println("------------------------------------");
		System.out.println("Discount (RM)		: " + getDiscount());
		System.out.println("Service Charge (RM)	: " + getServiceChargeCheck());
		System.out.println("Total Fare (RM)		: " + getTotalFare());
		System.out.println("-==================================-");
		System.out.println("Thank you...");
		System.out.println("-==================================-");
	}
	
}
