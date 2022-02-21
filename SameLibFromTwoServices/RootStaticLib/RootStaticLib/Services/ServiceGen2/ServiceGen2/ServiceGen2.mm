//
//  ServiceGen2.m
//  ServiceGen2
//
//  Created by Ashish Awasthi on 2/21/22.
//

#import "ServiceGen2.h"
#include "Operations.hpp"

@implementation ServiceGen2

Math::Operations op;

- (NSString *)messageFromLib {
    int sum = op.sum(10, 12);
    int mult = op.mult(10, 12);
    int div = op.div(10, 12);
    int sub = op.sub(10, 12);
    return [NSString stringWithFormat:@"Gen Second:\n Operation on values(10, 12):\n, Sum:- %d, \nMult:- %d, \nDiv:- %d, \nSub:- %d,",sum,mult,div,sub];
}

@end
