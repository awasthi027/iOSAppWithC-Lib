#include <exception>
#include <stdexcept>
#include <iostream>
#include "Operations.hpp"

extern "C" __attribute__((visibility("default"))) int addNumber(int number) {
    return 10 + number;
}

int MathFirst::Operations::sum(const int &a, const int &b){
    return a + b;
}

int MathFirst::Operations::mult(const int &a, const int &b){
    return a * b;
}

int MathFirst::Operations::div(const int &a, const int &b){
    if(b == 0){
        throw std::overflow_error("Divide by zero exception");
    }
    return a/b;
}

int MathFirst::Operations::sub(const int &a, const int &b){
    return a - b;
}

int MathSecond::Operations::mod(const int &a, const int &b){
    return a % b;
}
