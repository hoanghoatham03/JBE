#include<stdio.h>

int main()
{
    int i, n = 0;

    for(i = 1; i <= 5; i++)
    {
        n = 10*n + i;
        printf("%d\n",n);
    }
    
    return 0;
}
