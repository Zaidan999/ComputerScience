#include<stdio.h>
int main (void)
{
//Prime Numbers

int pr, n, count=0;

printf ("input any number: ");
scanf ("%d", &pr);

for ( n = 2; n <= pr/2; n++) {
	if ( pr%n == 0) {
	break;
	}
 }
if (n==1) {
printf ("%d is neither prime nor composite.");
}

else {
if (count==0)
printf ("%d is a prime number.", pr);
else 
printf ("%d is a composite number.", pr);
}


return 0;
}