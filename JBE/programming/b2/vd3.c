#include<stdio.h>

int main()
{
    int YearsWithUs;
    float bizDone;

    printf("Enter YearsWithUs: ");
    scanf("%d", &YearsWithUs);
    printf("Enter bizDone: ");
    scanf("%f", &bizDone);

    if(YearsWithUs >=10 && bizDone >5000000){
        
            printf("Classified as an MVS\n");
       
    }else{
        printf("A Little more effort required\n");
    }
    
    return 0;
}