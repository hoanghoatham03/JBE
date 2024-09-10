// An ISBN consists of exactly 10 digits. The rightmost digit is the 
// check digit. The check digit is validated modulo 11. 
// • multiply each digit from the first to the ninth by a weight from 10 to 2 
// respectively (the first digit by 10, the second by 9,..., the ninth by 2). 
// • the sum of the products plus the check digit should be divisible without 
// remainder by 11. 
// • if there is a remainder, the whole number is not a valid ISBN.
#include <stdio.h>
#include <math.h>

int main()
{
    int ISBN[10] = {0,0,0,3,1,9,4,8,7,6};
    int i, sum = 0;

    for(i = 0; i < 9; i++)
    {
        sum += ISBN[i] * (10 - i);
    }

    if((sum + ISBN[9]) % 11 == 0)
    {
        printf("Valid ISBN\n");
    }
    else
    {
        printf("Invalid ISBN\n");
    }
    
    return 0;
}