#include<stdio.h>
#include <math.h>

int main(){
    float a, b, c, x1, x2, delta;

    printf("Enter a, b, c: ");
    scanf("%f %f %f", &a, &b, &c);

    delta = b*b - 4*a*c;

    if(delta > 0){
        x1 = (-b + sqrt(delta))/(2*a);
        x2 = (-b - sqrt(delta))/(2*a);
        printf("The roots are %.2f and %.2f\n", x1, x2);
    }else if(delta == 0){
        x1 = -b/(2*a);
        printf("The root is %.2f\n", x1);
    }else{
        printf("No real roots\n");
    }
    
    return 0;

}