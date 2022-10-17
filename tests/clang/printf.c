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

    /* add sub / */
    printf("############################################################\n");
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

    /* cast data type */
    printf("############################################################\n");
    int i1,i2,j1,j2;
    double d1,d2,e1,e2;
    //  j1,j2に値を代入
    j1 = 3;
    j2 = 3;
    //  d1,d2に値を代入。
    d1 = 1.23;
    d2 = 1.23;
    //  i1,i2にd1,d2の値を代入
    i1 = d1; //  普通に代入
    i2 = (int)d2; //  キャストして代入
    // e1,e2にj1,j2の値を代入
    e1 = j1; //  普通に代入
    e2 = (double)j2; //  キャストして代入
    printf("d1 = %f d2 = %f\n",d1,d2);
    printf("i1 = %d i2 = %d\n",i1,i2);
    printf("j1 = %d j2 = %d\n",j1,j2);
    printf("e1 = %f e2 = %f\n",e1,e2);
}

