#include<stdio.h>
int main(void)
{
//problem 1: Vocal and Consonant

char vc;
printf("type any alphabet: ");
scanf("%c", &vc);


if ((vc=='A')||(vc=='I')||(vc=='U')||(vc=='E')||(vc=='O')||
	(vc=='a')||(vc=='i')||(vc=='u')||(vc=='e')||(vc=='o'))
	{
	printf("%c is a vocal alphabet \n", vc);
	}

else if ((vc=='Q')||(vc=='W')||(vc=='R')||(vc=='T')||(vc=='Y')||(vc=='P')||(vc=='S')||(vc=='D')||(vc=='F')
||(vc=='G')||(vc=='H')||(vc=='J')||(vc=='K')||(vc=='L')||(vc=='Z')||(vc=='X')||(vc=='C')||(vc=='V')||(vc=='B')||(vc=='N')||(vc=='M')||
(vc=='q')||(vc=='w')||(vc=='r')||(vc=='t')||(vc=='y')||(vc=='p')||(vc=='s')||(vc=='d')||(vc=='f')
||(vc=='g')||(vc=='h')||(vc=='j')||(vc=='k')||(vc=='l')||(vc=='z')||(vc=='x')||(vc=='c')||(vc=='v')||(vc=='b')||(vc=='n')||(vc=='m'))
	{
	printf("%c is a consonant alphabet \n", vc);
	}
else {
	printf("%c is not an alphabet character", vc);
	}

return 0;
}