#include <stdio.h>
int main()
{
    char operator;
    double first, second;

    printf("Mau operasi apa (+, -, *,/): ");
    scanf("%c", &operator);

    printf("masukan dua angka yang mau dioperasikan: ");
    scanf("%lf %lf", &first, &second);

    switch (operator) {
    case '+':
        printf("%.1lf + %.1lf = %.1lf", first, second, first + second);
        break;
    case '-':
        printf("%.1lf - %.1lf = %.1lf", first, second, first - second);
        break;
    case '*':
        printf("%.1lf * %.1lf = %.1lf", first, second, first * second);
        break;
    case '/':
        printf("%.1lf / %.1lf = %.1lf", first, second, first / second);
        break;

    default:
        printf("Error! operator is not correct");
    }

    return 0;
}