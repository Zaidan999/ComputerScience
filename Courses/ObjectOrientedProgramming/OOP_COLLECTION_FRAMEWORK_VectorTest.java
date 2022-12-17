package Collection;
import java.util.*;

public class VectorTest {
	public static void main(String args[]) {
		System.out.println("Vector test");
		System.out.println("++++++++++++++\n");
		
		System.out.println("BCS Myanmar Student List:");
		Vector<String> std = new Vector<String>();
		std.add ("Kyi Lin Khant");
		std.add ("Yoon Thiri Ko");
		std.add ("Soe Po Po Aung");
		
		for(int i=0; i<std.size(); i++)
			System.out.println((i+1) + ". " + std.get(i));
	}
}
