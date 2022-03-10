#ifndef CMAKEHELLO_OPERATIONS_HPP
#define CMAKEHELLO_OPERATIONS_HPP
namespace MathFirst {

    class Operations {
    public:
        int sum(const int &a, const int &b);
        int mult(const int &a, const int &b);
        int div(const int &a, const int &b);
        int sub(const int &a, const int &b);
        
    };

}

namespace MathSecond {

    class Operations {
    public:
        int mod(const int &a, const int &b);
    };

}
#endif //CMAKEHELLO_OPERATIONS_HPP

