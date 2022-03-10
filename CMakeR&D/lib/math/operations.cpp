#include <exception>
#include <stdexcept>
#include <iostream>
#include "operations.hpp"


int math::operations::sum(const int &a, const int &b){
    return a + b;
}
int math::operations::mult(const int &a, const int &b){
    return a * b;
}
int math::operations::div(const int &a, const int &b){
    if(b == 0){
        throw std::overflow_error("Divide by zero exception");
    }
    return a/b;
}
int math::operations::sub(const int &a, const int &b){
    return a - b;
}

int math::operations::mod(const int &a, const int &b) {
    return a % b;
}

