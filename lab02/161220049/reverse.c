#include <stdio.h>
void xor_swap(int *x,int *y){
    *y=*x ^ *y;
    *x=*x ^ *y;
    *y=*x ^ *y;
}

void reverse_array(int a[],int len){
    int left,right=len-1;
    while (left<right)
	{
    	    xor_swap(&a[left],&a[right]);
	    left++;
	    right--;
	}
}

int main(){
    int a[]={1,2,3,4,5,6,7};
    reverse_array(a,7);
    int i;
    for (i=0;i<7;i++)
        printf("%d",a[i]);
    printf("\n");
}
