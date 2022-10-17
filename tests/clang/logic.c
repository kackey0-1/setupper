#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("##### WHILE LOOP #####\n");
    int num1 = 0;
    while (num1 < 5) {
        printf("%d\n", num1);
        num1++;
    }
    do {
        printf("%d\n", num1);
        num1++;
    } while (num1 < 10);


    printf("##### FOR LOOP #####\n");
    int i;
    for (i = 1; i <= 5; i++) {
        // i++ = ++i = i=i+1 = i+=1
        // i-- = --i = i=i-1 = i-=1
        printf("%d", i);
    }
    printf("\n");

    printf("##### SWITCH #####\n");
    int num2;
    printf("1~3の値を入力してください: \n");
    // scanf("%d", &num);
    num2 = rand();
    switch (num2) {
        case 1:
            printf("one\n");
            break;
        case 2:
            printf("two\n");
            break;
        case 3:
            printf("three\n");
            break;
        default:
            printf("不適切な値: %d\n", num2);
            break;
    }

    printf("##### IF #####\n");
    // and=&& or=|| not=!
    int a;
    printf("input number: \n");
    // scanf("%d", &a);
    a = rand();    
    if (a > 0) {
        printf("%d > 0\n", a);
    } else if (a == 0) {
        printf("%d = 0\n", a);
    } else {
        printf("%d > 0\n", a);
    }

    return 0;
}
