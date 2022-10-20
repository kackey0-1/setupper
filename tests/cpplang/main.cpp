#include <iostream>
#include <iterator>
#include "sample.h"
#include "car.h"

// 名前空間
using namespace std;

int main() {
//     std::cout << "HelloWorld." << std::endl;
//     cout << "Hello World!!" << endl;
//     int a;
//     キーボードから入力した数値をそのまま出力
//     cin >> a;
//     cout << "a=" << a << endl;

//     string s, t;
//     t = "input string value is \"";
//     cout << "input string: ";
//     cin >> s;
//     cout << t+s << "\"." << endl;

//     CSample obj;
//     int num;
//     cout << "INPUT NUMBER: " << endl;
//     cin >> num;
//     obj.set(num);
//     cout
//         << "input number: "
//         << obj.get()
//         << endl;
    CSample s;
    s.a = 1;
    // s.b = 2
    s.func1();

    int num;
    cout << "input number: " << endl;
    cin >> num;
    printf("got number: %d\n", num);

    CCar c; // コンストラクタの処理(自動的に呼び出される）
    c.supply(10); // 燃料補給
    c.move(); // 移動
    c.move(); // 移動
    // デストラクタの処理(自動的に呼び出される）
    int *p = 0;
    int i;
    p = new int[10]; // int型10個分の領域を動的確保
    for (i=0; i<10; ++i)
    {
        p[i] = i;
        cout << p[i] << endl;
    }
    delete [] p; // 動的に確保した領域を解放
    return 0;
}

