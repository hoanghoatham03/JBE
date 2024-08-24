#include<stdio.h>
#include<math.h>

int main(){
    float num1, num2, sub;

    printf("Enter two numbers: ");
    scanf("%f %f", &num1, &num2);

    sub = fabs(num1 - num2);

    if(sub == num1 || sub == num2){
        printf("Difference is equal to value %f\n", sub);
    }else{
        printf("Difference is not equal to any of the values entered \n");
    }
    
    return 0;
}