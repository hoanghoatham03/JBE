#include <stdio.h>

int main()
{
    int num1, num2, i, sum = 0;

    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);

    num1 > num2 ? num1 : num2;
    i = num1%2 == 0 ? num1 + 1 : num1 + 2;
    for(i; i < num2; i += 2)
    {
        sum += i;
    }

    printf("Sum of all odd numbers between %d and %d is %d\n", num1, num2, sum);
    
    return 0;
    
}