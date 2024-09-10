
#include<stdio.h>
#include<math.h>

int main()
{
    int nums[10] = {1,3,5,7,3,7,33,101,15,1};
    int i;

    for(i = 0; i < 10; i++)
    {
        if(nums[i] % 2 == 0)
        {
            printf("Not all elements are odd\n");
            return 0;
        }
    }

    printf("All elements are odd\n");
    return 0;
}