#include<stdio.h>
int main ()
{

int f=1;
while (f<=10)
{
printf ("%d (odd) \n", f);
f+=1;

printf ("%d (even) \n", f);
f+=1;
}

int n;
printf ("enter number: ");
scanf("%d", &n);

if (num % 2 == 0)
printf("% is even.", n);
else
printf("% is odd.", n);

return 0;
}