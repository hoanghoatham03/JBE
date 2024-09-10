//  Write a program to calculate the factorial of an integer

#include <stdio.h>
#include <math.h>

long long factorial(int n)
{
    long long result = 1;
    int i;
    for(i = 1; i <= n; i++)
    {
        result *= i;
    }
    return result;
}

int main()
{
    int n, i;

    printf("Enter an integer: ");
    scanf("%d", &n);

    if(n < 0)
    {
        printf("Factorial of negative number doesn't exist.");
    }
    else
    {
        printf("Factorial of %d = %lld", n, factorial(n));
    }


    return 0;
}