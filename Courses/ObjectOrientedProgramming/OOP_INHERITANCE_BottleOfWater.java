package bottle;

public class BottleOfWater extends Bottle{
	public int Water;
	
	public BottleOfWater(int height, String color, int Water) {	
		super (height, color);
		this.Water=Water;
	}
	
	public void fillUp (int increment) {
		Water -= increment;
	}

	public void drinkUp (int decrement) {
		Water += decrement;
	}
	
	public String toString() {
		System.out.println("A bottle is created\n");
		return (super.toString()+"\nThe water in it is "+Water+"cm");
	}
}

