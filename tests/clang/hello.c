#include <stdio.h>

int hoge(int a, int b) { return a + b; }

int main() {
    printf("result: %d\n", hoge(1, 1));
    puts("hello world");
    return hoge(1, 9);
}

