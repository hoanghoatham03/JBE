#include<stdio.h>
#include <string.h>
int main()
{
    int month, day;
    char monthName[10];

    printf("Enter the month: ");
    scanf("%d", &month);

    switch(month){
        case 1:
            strcpy(monthName, "January");
            day = 31;
            break;
        case 2:
            strcpy(monthName, "February");
            day = 28;
            break;
        case 3:
            strcpy(monthName, "March");
            day = 31;
            break;
        case 4:
            strcpy(monthName, "April");
            day = 30;
            break;
        case 5:
            strcpy(monthName, "May");
            day = 31;
            break;
        case 6:
            strcpy(monthName, "June");
            day = 30;
            break;
        case 7:
            strcpy(monthName, "July");
            day = 31;
            break;
        case 8:
            strcpy(monthName, "August");
            day = 31;
            break;
        case 9:
            strcpy(monthName, "September");
            day = 30;
            break;
        case 10:
            strcpy(monthName, "October");
            day = 31;
            break;
        case 11:
            strcpy(monthName, "November");
            day = 30;
            break;
        case 12:   
            strcpy(monthName, "December");
            day = 31;
            break;
        default:
            printf("Invalid month\n");
            return 1;

    }

    if (day = 28)
    {
        printf("The month of %s has %d days or %d days\n", monthName, day,day+1);
    }
    else
    {
        printf("The month of %s has %d days\n", monthName, day);
    }
    
    return 0;

}