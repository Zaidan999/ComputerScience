#include<stdio.h>
int main ()
{
int i;
for (i=1; i<=10; i++)
{
printf ("%d ", i);
}

printf ("\n");

int j=1;
while (j<=10)
{
printf ("%d \t\t   %d \n", j, j);
++j;
}

int k;
for (k=1; k<=10; k++)
{
printf ("%d ", k);
}


return 0;
}