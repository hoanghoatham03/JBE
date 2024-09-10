
#include <stdio.h>
#include <math.h>

int main()
{
    int nums[10] = {2,4,6,82,3,7,23,100,15,0};
    int i, j, prime;

    for(i = 0; i < 10; i++)
    {
        prime = 1;
        if(nums[i] == 0 || nums[i] == 1)
        {
            continue;
        }
        for(j = 2; j <= sqrt(nums[i]); j++)
        {
            if(nums[i] % j == 0)
            {
                prime = 0;
                break;
            }
        }
        if(prime)
        {
            printf("%d\n", nums[i]);
        }
    }

    return 0;
}