
#define _USE_MATH_DEFINES
#include <stdio.h>
#include <math.h>

double calculate_area(double radius)
{
    return M_PI * radius * radius;
}

double calculate_perimeter(double radius)
{
    return 2 * M_PI * radius;
}

int main()
{
    double radius, area, perimeter;

    printf("Enter the radius of the circle: ");
    scanf("%lf", &radius);

    area = calculate_area(radius);
    perimeter = calculate_perimeter(radius);    

    printf("Area: %.2lf\n", area);
    printf("Perimeter: %.2lf\n", perimeter);

    return 0;
}
