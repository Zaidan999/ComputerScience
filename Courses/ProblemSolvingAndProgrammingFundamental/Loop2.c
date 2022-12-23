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
	printf ("%d \n", j);
	++j;
	}

printf ("\n");

	int l=11;
	while (l-- > 0){
	printf ("%d ", l);
	}

printf ("\n");

	int k=11;
	while (--k > 0){
	printf ("%d ", k);
	}

printf ("\n");

	char ch;
	while((ch = getchar() ) != 'q'){
	printf("The input character: %c \n", ch);
	}

return 0;
}