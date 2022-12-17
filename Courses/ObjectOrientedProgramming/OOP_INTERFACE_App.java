package Interface;

public class App {
	public static void main (String args[]) {
		InstitutionFoundation Acd = new AIU();
		Acd.Welcoming();
		Acd.name("ALBUKHARY INTERNATIONAL UNIVERSITY");
		System.out.println("Popularity: "+AcademicInstitution.popularity(100));
		Acd.vision("To be number one of recommended institution in Malaysia");
		Acd.mission("Increase Academic quality and open application from all over the world");
		Acd.Student(300);
		Acd.Lecturer(55);
		Acd.School(5);
		Acd.Building(8, "white");
		InstitutionFoundation Ins = new UUM();
		Ins.name("\nUNIVERSITI UTARA MALAYSIA");
		System.out.println("Popularity: "+AcademicInstitution.popularity(90));
		Ins.vision("To be number one of the best university in Southeast Asia");
		Ins.mission("Build effective learning and teaching; and develop academic quality");
		Ins.Student(6000);
		Ins.Lecturer(720);
		Ins.School(16);
		Ins.Building(25, "white and green");
	}
}
