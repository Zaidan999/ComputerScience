#include<stdio.h>
#include<conio.h>
int add(int a, int b) {return a+b}
int sub(int a, int b) {return a-b}
int mlt(int a, int b) {return a*b}
int div(int a, int b) {return a/b}

void mian () {
int p, q;
printf ("\n Enter two integer numbers: \n");
scanf ("%d", &p);
scanf ("%d", &q);

printf ("\n\t %d + %d = %d", p, q, add(p,q));
printf ("\n\t %d - %d = %d", p, q, sub(p,q));
printf ("\n\t %d * %d = %d", p, q, mlt(p,q));
printf ("\n\t %d / %d = %d", p, q, div(p,q));

getch ();
}