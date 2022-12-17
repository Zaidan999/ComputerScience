package Collection;
import java.util.*;

public class StackTest {
	public static void main (String args[]) {
		System.out.println("Stack test");
		System.out.println("++++++++++++++\n");
		
		System.out.println("BCS Male Student List:");
		Stack<String> student = new Stack<String>();
		student.push("Zaidan");
		student.push("Azkal");
		student.push("Cahyo");
		student.push("Adi");
		student.push("Golam");
		
		Iterator<String> itr = student.iterator();
		while (itr.hasNext()) {
			System.out.println(itr.next());
		}
	}
}