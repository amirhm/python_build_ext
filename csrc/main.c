#include "main.h"

int _sum(int a, int b)
{
    return (a+b);
}

void _sum_vec(float* in1, float* in2, float* out, int n)
{
    
    for(int i = 0;i <n;i++)
        out[i] = in1[i] + in2[i];
}

