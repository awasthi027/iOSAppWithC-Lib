//
//  ServiceGen1.m
//  ServiceGen1
//
//  Created by Ashish Awasthi on 2/21/22.
//

#import "ServiceGen1.h"
#include "Operations.hpp"


@implementation ServiceGen1

 Math::Operations op;

- (NSString *)messageFromLib {
   
    int sum = op.sum(10, 12);
    int mult = op.mult(10, 12);
    int div = op.div(10, 12);
    int sub = op.sub(10, 12);
    return [NSString stringWithFormat:@"Gen First\nOperation on values(10, 12),\nSum:- %d, \nMult:- %d, \nDiv:- %d, \nSub:- %d,",sum,mult,div,sub];
}

@end


//Math::Operations op;
//
//- (NSInteger )sum:( NSInteger)a second: (NSInteger)b {
//    int sum = op.sum(a, b);
//    return sum;
//}
