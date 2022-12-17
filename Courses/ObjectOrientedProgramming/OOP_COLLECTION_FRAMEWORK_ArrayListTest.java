package Collection;
import java.util.*;

public class ArrayListTest {
	public static void main (String args[]) {
		System.out.println("ArrayList test");
		System.out.println("++++++++++++++\n");
		
		System.out.println("BCS Female Student List:");
		ArrayList<String> student = new ArrayList<String>();
		student.add("Pica");
		student.add("Soe Popo");
		student.add("Anisa");
		
		Iterator<String> itr = student.iterator();
		while (itr.hasNext()) {
			System.out.println(itr.next());
		}
	}
}
		
