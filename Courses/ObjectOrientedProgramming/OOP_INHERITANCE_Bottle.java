package bottle;

public class Bottle {
	public int height;
	public String color;

	public Bottle(int height, String color) {
		this.height=height;
		this.color=color;
	}

	public String toString() {
		return ("Its height is "+height+"cm\nIts color is "+color);
	}
}