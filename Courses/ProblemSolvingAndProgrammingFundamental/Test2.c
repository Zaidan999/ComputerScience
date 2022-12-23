#include <stdio.h>
int main()
{
int a=10;
int b=5;
int c;

printf("a = %d \n", a);
printf("b = %d",b);

c=a;
b=a;
b=c;

return 0;
}