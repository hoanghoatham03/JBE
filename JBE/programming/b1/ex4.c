#include<stdio.h>

int main()
{
    int num, digit1, digit2, digit3, sum;

    printf("Enter a 3-digit number: ");
    scanf("%d", &num);

    digit3 = num % 10;
    num = num / 10;
    digit2 = num % 10;
    digit1 = num / 10;
    sum = digit1 + digit2 + digit3;
    
    printf("Sum of digits: %d", sum);

    return 0;
}