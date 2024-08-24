#include<stdio.h>

int main()
{
    float salary;
    int age;
    
    printf("Enter your age: ");
    scanf("%d", &age);
    printf("Enter your salary: ");
    scanf("%f", &salary);
    printf("Your age is %d and your salary is %.2f", age, salary);

    return 0;
}