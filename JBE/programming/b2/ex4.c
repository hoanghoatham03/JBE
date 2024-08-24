#include<stdio.h>

int main()
{
    float marks;
    char grade;

    printf("Enter your marks: ");
    scanf("%f", &marks);
    
    if (marks > 75)
    {
       grade = 'A';
    }
    else if ( marks>60)
    {
        grade = 'B';
    }
    else if (marks > 45)
    {
        grade = 'C';
    }
    else if (marks > 35)
    {
        grade = 'D';
    }
    else
    {
        grade = 'E';
    }

    printf("Your grade is: %c\n", grade);

    return 0;
}
