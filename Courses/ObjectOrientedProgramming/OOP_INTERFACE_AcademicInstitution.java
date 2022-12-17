package Interface;

public interface AcademicInstitution {
	default void Welcoming() {
		System.out.println ("Malaysia's most popular University\n");
	}
	static int popularity(int p) {return p/2;}
	void Student (int stdTot);
	void Building (int bldTot, String bldColor);
	void Lecturer (int lctTot);
	void School (int schTot);

}