#define _USE_MATH_DEFINES
#include<stdio.h>
#include<math.h>

int main()
{
    float radius= 5.0;
    float perimeter = 2 * M_PI * radius;
    float area = M_PI * radius * radius;

    printf("Perimeter: %.2f, Area: %.2f", perimeter, area);	
    
    return 0;
}