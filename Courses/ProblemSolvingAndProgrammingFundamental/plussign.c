#include<stdio.h>

int main () {

int i, j, size;
int VL = 179;
int HZ = 196;
int PL = 197;
int CR = 254;

printf ("Input the plus-sign size: ");
scanf ("%d", &size);

for (i=1; i<=size/2; ++i) {
  for (j=1; j<=(size+1)/2; ++j) {
     printf (" ");
     }
     printf ("%c", VL);
printf ("\n");
}

for (j=1; j<=1; ++j) {
  for (j=1; j<=(size+1)/2; ++j) {
     printf ("%c", HZ);
     }
  if (i=size/2) {
     printf ("%c", PL);
     }
  for (j=1; j<=(size+1)/2; ++j) {
     printf ("%c", HZ);
     } 
}

printf ("\n");

for (i=1; i<=size/2; ++i) {
  for (j=1; j<=(size+1)/2; ++j) {
     printf (" ");
     }
     printf ("%c", VL);
printf ("\n");
}

return 0;
}
