#include<stdio.h>
#include <string.h>

int main()
{
    float salary, endSalary, allowance;
    char grade;

    printf("Enter salary: ");
    scanf("%f", &salary);

    printf("Enter grade: ");
    scanf(" %c", &grade);

    switch(grade){
        case 'A':
            allowance = 300;
            break;
        case 'B':
            allowance = 200;
            break;
        default:
            allowance = 100;
            return 0;
    }

    endSalary = salary + allowance;
    
    printf("The salary is %.2f\n", endSalary);

    return 0;
}