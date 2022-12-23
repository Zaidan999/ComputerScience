#include<stdio.h>
int main ()
{

int f;
printf ("odd: ");
for (f=0 ; f<=10 ; f+=2)
{
printf ("%d ", f);
}

printf("\n");

int h;
printf ("even: ");
for (h=1 ; h<=10 ; h+=2)
{
printf ("%d ", h);
}

return 0;
}