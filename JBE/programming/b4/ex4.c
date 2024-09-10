
#include <stdio.h>
#include <math.h>

int main()
{
    int nums[10] = {12,4,6,82,3,7,23,100,15,0};
    int i;

    for(i = 0; i < 10; i++)
    {
        if(nums[i] % 3 == 0 || nums[i] % 5 == 0)
        {
            printf("%d\n", nums[i]);
        }
    }

    return 0;
}