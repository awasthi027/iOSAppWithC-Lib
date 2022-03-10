#include "HelloWorld.hpp"
#include <TargetConditionals.h>

extern "C" __attribute__((visibility("default"))) int addNumber(int number) {
    return 10 + number;
}
