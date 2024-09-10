#include<stdio.h>

int main()
{
    int i, n = 12345;

    for(i = 1; i <= 5; i++)
    {
        printf("%d\n",n);
        n /= 10;
    }
    
    return 0;
}
