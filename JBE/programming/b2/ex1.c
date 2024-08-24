#include<stdio.h>

int main(){
    float num1, num2, product;

    printf("Enter two numbers: ");
    scanf("%f %f", &num1, &num2);

    product = num1 * num2;

    if(product >= 1000){
        printf("The product is equal or greater than 1000\n");
    }else{
        printf("The product is less than 1000\n");
    }
    
    return 0;
}