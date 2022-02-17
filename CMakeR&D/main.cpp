
#include <iostream>

#include "lib/math/operations.hpp"

#ifndef CMAKEMACROSAMPLE
    #define CMAKEMACROSAMPLE "NO SYSTEM NAME"
#endif

auto sum(int a, int b){
        return a + b;
}

int main() {

	std::cout<<"Hello CMake!"<<std::endl;
	
	std::cout<<"Sum of 3 + 4 :"<<sum(3, 4)<<std::endl;
    
    
    math::operations op;
    int sum = op.sum(3, 4);
    
    std::cout<<"Hello CMake!"<<std::endl;
            std::cout<<CMAKEMACROSAMPLE<<std::endl;
}
