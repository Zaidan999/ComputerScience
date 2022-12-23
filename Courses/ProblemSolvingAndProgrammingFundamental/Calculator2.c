#include <stdio.h>
int main()
{
	char operator;
	int first;
	int second;
	
	printf("Choose operation (+, -, *, /): ");
	scanf("%c", &operator);

	printf("Insert first number: ");
	scanf("%d", &first);

	printf("Insert second number: ");
	scanf("%d", &second);

	switch (operator)
	{
	case '+':
		printf("%d + %d = %d", first, second, first + second);
		break;
	case '-':
		printf("%d - %d = %d", first, second, first - second);
		break;
	case '*':
		printf("%d * %d = %d", first, second, first * second);
		break;
	case '/':
		printf("%d / %d = %.1d", first, second, first / second);
		break;

	default:
		printf("Invalid operation");
	}

	return 0;
}