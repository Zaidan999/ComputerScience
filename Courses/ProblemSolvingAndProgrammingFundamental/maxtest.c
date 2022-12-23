#include<stdio.h>

int main ()

{
int a;
int b;
printf("Enter first number: ");
scanf("%d", &a);
printf("Enter second number: ");
scanf("%d", &b);

//var = (condition) ? out true : out false;

int max;
max = (a>b) ? a:b;
printf("Max value: %d", max);

return 0;
}