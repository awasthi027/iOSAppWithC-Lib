#include <exception>
#include <stdexcept>
#include <iostream>
#include "Operations.hpp"


int Math::Operations::sum(const int &a, const int &b){
    return a + b;
}

int Math::Operations::mult(const int &a, const int &b){
    return a * b;
}

int Math::Operations::div(const int &a, const int &b){
    if(b == 0){
        throw std::overflow_error("Divide by zero exception");
    }
    return a/b;
}

int Math::Operations::sub(const int &a, const int &b){
    return a - b;
}
