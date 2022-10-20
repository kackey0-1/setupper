#include "sample.h"
#include <iostream>

using namespace std;

void CSample::func1()
{
    cout << "func1" << endl;
    a = 1;
    b = 2;
    func2();
}

void CSample::func2()
{
    a = 2;
    b = 3;
    cout << "a=" << a << ", " << "b=" << b << endl;
}

void CSample::setB(int num)
{
    b = num;
}

int CSample::getB()
{
    return b;
}



void CSample::set(int num)
{
    m_num = num;
}

int CSample::get()
{
    return m_num;
}
