#include <stdio.h>

// declaire proto type
int NUM = 10; // global variable
int max(int, int);
void show(int);
void line();
// function
double avg(double l, double m) {
    double r = (l + m) / 2.0;
    return r;
}
int max(int a, int b) {
    if (a > b) {
        return a;
    }
    return b;
}
void show(int n) {
    printf("Number: %d\n", n);
    return;
}
void line() {
    printf("************************************\n");
}


// local variable

// file separation


int main() {
//     double d = avg(10.0, 128.0);
//     printf("Average: %.2f\n", d);
    int n1 = 4, n2 = 5;
    line();
    show(n1);
    show(n2);
    printf("between 2 numbers, %d is bigger\n", max(n1, n2));
    printf("Global Variables: %d\n", NUM);
    line();
    return 0;
}
 
