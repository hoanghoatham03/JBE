
#include <stdio.h>
#include <math.h>

int main()
{
    int nums[10] = {12,-4,6,-82,-3,7,23,100,15,0};
    int i, count = 0;

    for(i = 0; i < 10; i++)
    {
        if(nums[i] < 0)
        {
            count++;
        }
    }

    printf("Number of elements less than 0: %d\n", count);
    return 0;
}