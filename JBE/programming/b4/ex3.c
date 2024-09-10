#include <stdio.h>
#include <math.h>

int main()
{
    int nums[10] = {12,3,6,82,3,7,3,100,15,0};
    int x, i, count = 0;

    printf("Enter a number: ");
    scanf("%d", &x);

    for(i = 0; i < 10; i++)
    {
        if(nums[i] == x)
        {
            count++;
        }
    }

    printf("Number of times %d appears in the array: %d\n", x, count);
    return 0;
}