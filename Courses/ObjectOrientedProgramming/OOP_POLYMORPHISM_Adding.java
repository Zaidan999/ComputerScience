package Calculator;

public class Adding {
	int a, b, c;
	long d, e, f;
	double g, h, i;

	public void add (int a, int b, int c){
		this.a=a;
		this.b=b;
		this.c=c;
		System.out.println("Adding three numbers (int):"+a+"+"+b+"+"+c+"="+(a+b+c));
	}
	public void add (long d, long e, long f){
		this.d=d;
		this.e=e;
		this.f=f;
		System.out.println("Adding three numbers (long):"+d+"+"+e+"+"+f+"="+(d+e+f));
	}
	public void add (double g, double h, double i){
		this.g=g;
		this.h=h;
		this.i=i;
		System.out.println("Adding three numbers (double):"+g+"+"+h+"+"+i+"="+(g+h+i));
	}
}
