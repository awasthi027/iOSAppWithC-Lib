#import "OperationsIOS.h"
#include "Operations.hpp"

@implementation OperationsIOS

Math::Operations op;

- (NSInteger )sum:( NSInteger)a second: (NSInteger)b {
    int sum = op.sum(a, b);
    return sum;
}
- (NSInteger )mult:( NSInteger)a second: (NSInteger)b {
    int sum = op.mult(a, b);
    return sum;
}
- (NSInteger )div:( NSInteger)a second: (NSInteger)b {
    int sum = op.div(a, b);
    return sum;
}
- (NSInteger )sub:( NSInteger)a second: (NSInteger)b {
    int sum = op.sub(a, b);
    return sum;
}

@end

