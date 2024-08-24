#include<stdio.h>
#include<math.h>

int main()
{
    float x1, x2, y1, y2, distance;

    printf("Enter the coordinates of point 1: ");
    scanf("%f %f", &x1, &y1);
    
    printf("Enter the coordinates of point 2: ");
    scanf("%f %f", &x2, &y2);

    // distance = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
    distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

    printf("Distance between the points: %.2f", distance);
    
    return 0;
}