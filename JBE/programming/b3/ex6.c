#include<stdio.h>

int main()
{
    int num, i;

    printf("Enter a number between 2 and 9: ");
    scanf("%d", &num);

    if(num < 2 || num > 9)
    {
        printf("Invalid input\n");
        return 1;
    }
    
    for(i = 1; i <= 10; i++)
    {
        printf("%d x %d = %d\n", num, i, num*i);
    }

    return 0;
}