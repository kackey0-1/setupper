#include <stdio.h>

void main() {
//     printf("123\n456\n789\n");
//     printf("シングルクオーテーション: \'\n");
//     printf("ダブルクオーテーション: \"\n");
//     printf("\t円マーク: \\\n");
//     printf("\a");

    printf("############################################################\n");
    printf("こんにちは、私の名前は%sです\n年齢は%d際です\n", "山田太郎", 20);
    printf("イニシャルは、%cです\n", 'Y');
    printf("%f + %f = %f\n", 1.2, 2.7, 1.2 + 2.7); 
    printf("10進数 result with 1000: %u\n", 1000);
    printf("8進数  result with 1000: %02o\n", 1000);
    printf("8進数  result with 1000: %06o\n", 1000);
    printf("16進数 result with 1000: %x\n", 1000);
    printf("############################################################\n");

    /* function */
    int a;
    int b = 3;
    int add, sub;
    double avg;
    a = 6;
    add = a + b;
    sub = a -b;
    avg = (a + b) / 2.0;
    printf("%d + %d = %d\n", a, b, add);
    printf("%d - %d = %d\n", a, b, sub);
    printf("%dと%dの平均値: %f\n", a, b, avg);
    printf("%dと%dの平均値: %.2f\n", a, b, avg);

}

