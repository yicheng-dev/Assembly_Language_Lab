#include <stdio.h>
int main(){
    int x1=(1<<31)-1;
    int y1=1;
    int sum_x1_y1=x1+y1;
    int diff_x1_y1=x1-y1;
    int diff_y1_x1=y1-x1;

    unsigned int x2=(1<<31)-1;
    unsigned int y2=1;
    unsigned int sum_x2_y2=x2+y2;
    unsigned int diff_x2_y2=x2-y2;
    unsigned int diff_y2_x2=y2-x2;
}
