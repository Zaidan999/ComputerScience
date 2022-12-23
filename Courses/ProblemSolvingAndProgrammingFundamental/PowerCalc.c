#include<stdio.h>
int main()
{
int n,p;
long long result = 1;

printf("Enter a base number: ");
scanf("%d", &n);
printf("Enter an exponent number: ");
scanf("%d", &p);

while (p != 0) {
result *= n;
--p;
}
printf("Result = %lld", result);

return 0;
}