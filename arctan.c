// This C code provides interface for assembly program which calculates arctan(x) 

// Extention needed to link assembly code with this 
#include <stdio.h>

// Declaration of function from assembly file
extern float _arctan(float a); 
// Function prototype
float arctan(float a);
void flush(void);

int main() {

    float a;
    int b;
    int result;

    printf("enter x value:\n");
    while((result = scanf("%f",&a)) != 1 || getchar() != '\n'){
        printf("invalid value\n");
        printf("enter x value:\n");
        flush();
    }

    printf("enter number of digits in result (max 9):\n");
    while((result = scanf("%i",&b)) != 1 || getchar() != '\n' || b < 0 || b>9){
        printf("invalid value\n");
        flush();
        printf("enter number of digits in result (max 9):\n");
    }
    printf("result arctan(x):\n");
    printf("%.*f\n",b,sum(a));
    return 0;
}

// Functon for cleaning input buffer
void flush(){
    int c;
    while((c=getchar()) != '\n' && c != EOF);
    return;
}
