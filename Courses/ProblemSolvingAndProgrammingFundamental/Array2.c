#include<stdio.h>

int main (){

int num[5][3];

printf ("Input 15 integers: ");
for (int i=0; i<5; i++){
 for (int j=0; j<3; j++){
	scanf ("%d", &num[i][j]);
}
}

printf ("Your input: ");
for (int i=0; i<5; i++) {
 for (int j=0; j<3; j++){
printf ("%d, ", num[i][j]);
}
}
return 0;
}