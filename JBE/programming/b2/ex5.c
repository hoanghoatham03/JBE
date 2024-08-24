#include<stdio.h>

int main()
{
    char letter;

    printf("Enter a letter: ");
    scanf(" %c", &letter);

    switch(letter) {
        case 'b':
        case 'B':
            printf("Basic\n");
            break;
        case 'c':
        case 'C':
            printf("Cobol\n");
            break;
        case 'f':
        case 'F':
            printf("Fortran\n");
            break;
        case 'p':
        case 'P':
            printf("Pascal\n");
            break;
        case 'v':
        case 'V':
            printf("Visual C++\n");
            break;
}
    return 0;
}