package Collection;
import java.util.*;

public class LinkedListTest {
	public static void main (String args[]) {
		System.out.println("LinkedList test");
		System.out.println("++++++++++++++\n");
		
		System.out.println("AIU Schools List:");
		LinkedList <String> aiu = new LinkedList<String>();
		aiu.add("School of Computing and Informaitcs");
		aiu.add("School of Business and Social Sciences");
		aiu.add("School of Education and Human Sciences");
		
		for(int i=0; i<aiu.size(); i++)
			System.out.println((i+1) + ". " + aiu.get(i));
	}
}
