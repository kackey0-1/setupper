#include <stdio.h>

int hoge(int a, int b) { return a + b; }

int main() {
    printf("result: %d", hoge(1, 1));
    return hoge(1, 9);
}

