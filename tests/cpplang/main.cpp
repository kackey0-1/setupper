#include <iostream>
#include <iterator>
#include "sample.h"

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
    CSample obj;
    int num;
    cout << "INPUT NUMBER: " << endl;
    cin >> num;
    obj.set(num);
    cout
        << "input number: "
        << obj.get()
        << endl;
    return 0;
}

