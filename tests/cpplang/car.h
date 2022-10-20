#ifndef __CAR_H_
#define __CAR_H_

class CCar {
    public:
        // constructor
        CCar();
        // destractor
        ~CCar();
        void move();
        void supply(int fuel);
    private:
        int m_fuel;
        int m_migration;
};

#endif // __CAR_H_

