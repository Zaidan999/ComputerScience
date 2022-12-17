package Interface;

public class UUM implements InstitutionFoundation{
	
	public void name(String name) {
		System.out.println(name);
	}
	
	public void Student(int stdTot) {
		System.out.println("Total of students: "+stdTot+" students");
	}

	public void Building(int bldTot, String bldColor) {
		System.out.println("Total of building: "+bldTot+" buildings");
		System.out.println("Building colors: "+bldColor);
	}

	public void Lecturer(int lctTot) {
		System.out.println("Total of lecturers: "+lctTot+" lecturers");
	}

	public void School(int schTot) {
		System.out.println("Total of School: "+schTot+"schools");
	}

	public void vision(String vision) {
		System.out.println("The Institution vision is: "+vision);
	}

	public void mission(String mission) {
		System.out.println("The Institution mission is: "+mission);
	}


}
