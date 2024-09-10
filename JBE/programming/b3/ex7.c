#include<stdio.h>
#include <string.h>

int main()
{
    const int VALID_PASSWORD = 12345;
    int password, count = 0;

    while (count < 3)
    {
        printf("Enter the password: ");
        scanf("%d", &password);
        if (password == VALID_PASSWORD)
        {
            printf("Login Success\n");
            return 1;
        }
        else
        {
            printf("Invalid Password\n");
            count++;
        }
    }
   
   printf("You have exceeded 3 incorrect attempts\n");
    
    
    return 0;
}