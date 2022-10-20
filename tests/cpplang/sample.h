#ifndef _SAMPLE_H_
#define _SAMPLE_H_

class CSample
{
    public:
        int a;
    private:
        int b;
    public:
        void setB(int num);
        int getB();
        void func1();
    private: 
        void func2();
        void set(int num);
        int get();
    private:
        int m_num;
};
#endif // _SAMPLE_H_

