#include <stdio.h>

int main()
{
    int nums[10] = {12,4,6,82,3,7,23,100,15,0};
    int max = nums[0], min = nums[0], i;
    
    for (i = 1; i < 10; i++)
    {
        if (nums[i] > max)
        {
            max = nums[i];
        }
        if (nums[i] < min)
        {
            min = nums[i];
        }
    }

    printf("Max: %d\nMin: %d\n", max, min);

    return 0;
}