#include<stdio.h>
#include<math.h>

int main()
{
    int nums[10] = {12,4,6,82,3,7,23,100,15,0};
    int sum = 0, i;

    for (i = 1; i < 10; i++)
    {
        if (nums[i] % 2 != 0)
        {
            sum += nums[i];
        }
        
    }

    printf("Sum of odd numbers: %d\n", sum);
    return 0;
}