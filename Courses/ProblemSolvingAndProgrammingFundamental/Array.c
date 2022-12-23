#include<stdio.h>

int main () {

char arr[]={'Z','A','I','D','A','N'};

printf ("Memory: %d\n", sizeof(arr));
printf ("Memory for one char: %d\n", sizeof(arr[0]));

for (int i=0; i<sizeof(arr)/sizeof(arr[0]); i++){
printf ("%c\t", arr[i]);
}

return 0;
}