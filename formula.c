// This C code provides interface for assembly program which calculates |a-b|/(e*(c+d)^2)

// Extention needed to link assembly code with this
#include <stdio.h>

// Declaration of external function to calculate formula 
extern float formula(float a, float b, float c, float d, float e); 
// Function prototype
float formula(float a, float b, float c, float d, float e);      
// Values 
float a=1.0, b=0.0, c=1.0, d=0.0, e=1.0;


int main()
      {
       printf("%f\n", formula(a,b,c,d,e));
       return 0;
      }
