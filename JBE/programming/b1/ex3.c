#include<stdio.h>

const float DA = 0.12;
const float HRA = 150;
const float TA = 120;
const float Others = 450;
const float PF = 0.14;
const float IT = 0.15;
int main()
{
    float basic_salary = 12000;
    float tax = (basic_salary * PF) + (basic_salary * IT);
    float net_salary = basic_salary + (basic_salary * DA) + HRA + TA + Others - tax;

    printf("Net Salary: %.2f", net_salary);
    
    return 0;
}