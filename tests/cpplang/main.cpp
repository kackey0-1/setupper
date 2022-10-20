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
    return 0;
}

