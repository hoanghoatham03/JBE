#include<stdio.h>

int main (){
    int num1 = 1, num2 = 1, num3, i;

    printf("%d %d ", num1, num2);
    
    for(i = 2; i < 30; i++)
    {
        num3 = num1 + num2;
        printf("%d ", num3);
        num1 = num2;
        num2 = num3;
    }

    
    return 0;
}