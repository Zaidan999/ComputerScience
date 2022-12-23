#include<stdio.h>

int main ()
{

printf("This program is created to show a simple statement from 3 numbers. \n");
printf("\n");

int first;
int second;
int third;
printf("Enter first number: ");
scanf("%d", &first);
printf("Enter second number: ");
scanf("%d", &second);
printf("Enter third number: ");
scanf("%d", &third);

printf("\n");

if (first > second && first > third) {
	printf ("%d greater than %d, and %d \n", first, second, third);
	}
else if (first < second && first < third) {
	printf ("%d less than %d, and %d \n", first, second, third);
	}
else if (first > second && first < third) {
	printf ("%d greater than %d, but less than  %d \n", first, second, third);
	}
else if (first < second && first > third) {
	printf ("%d less than %d, but greater than  %d \n", first, second, third);
	}
else if (first == second && first < third) {
	printf ("%d equal to %d, but less than  %d \n", first, second, third);
	}
else if (first < second && first == third) {
	printf ("%d less than %d, but equal to %d \n", first, second, third);
	}
else if (first == second && first > third) {
	printf ("%d equal to %d, but greater than %d \n", first, second, third);
	}
else if (first > second && first == third) {
	printf ("%d greater than %d, but equal to %d \n", first, second, third);
	}
else {
	printf ("%d, %d, and %d are equal \n", first, second, third);
	}

printf("\n");
printf("Be smarter everyday!");
printf("\n");

return 0;
}