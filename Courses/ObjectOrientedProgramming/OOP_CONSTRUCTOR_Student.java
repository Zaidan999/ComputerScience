package Student;

public class Student {
	public int id;
	public String name;
	public int age;

	// Default Constructor
	public Student(){  
	System.out.println("New Student");
	this.id = 1;
	this.name = "Zaidan Mufaddhal";
	this.age = 20;
	}

	// parameterized constructor 
	public Student(int i, String n, int a) {
	this.id = i;
	this.name = n;
	this.age = a;
	}

	public void Show() {
	System.out.println("ID :"+this.id);
	System.out.println("Name :"+this.name);
	System.out.println("Age :"+this.age);
	}
}
