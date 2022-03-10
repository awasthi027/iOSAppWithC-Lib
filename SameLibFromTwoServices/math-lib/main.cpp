
#include <iostream>

#include "lib/math/Operations.hpp"

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
    
    std::cout<<"Calculate Sum from  MathFirst Lib:"<<sum<<std::endl;
    
//    math::operations ops;
//    int mod = ops.mod(3, 4);
    
//    std::cout<<"Calculate Mod from MathSecond Lib:"<<mod<<std::endl;
    
    std::cout<<"Hello CMake!"<<std::endl;
            std::cout<<CMAKEMACROSAMPLE<<std::endl;
}
