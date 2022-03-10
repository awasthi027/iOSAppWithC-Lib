//
//  AccessMathLib.m
//  SampleApp
//
//  Created by Ashish Awasthi on 2/21/22.
//

#import "AccessMathLib.h"
#include "Operations.hpp"

@implementation AccessMathLib

MathFirst::Operations opfirst;
MathSecond::Operations opSecond;

//HelloWorld hw;

- (NSString *)operationFromFirstPackage {
    opfirst.sum(10, 12);

    int sum = opfirst.sum(10, 12);
    int mult = opfirst.mult(10, 12);
    int div = opfirst.div(10, 12);
    int sub = opfirst.sub(10, 12);
    return [NSString stringWithFormat:@"First namespace operations on values(10, 12):\n, Sum:- %d, \nMult:- %d, \nDiv:- %d, \nSub:- %d,",sum,mult,div,sub];
   // return  @"";

}
- (NSString *)operationFromSecondPackage {
    int mod = opSecond.mod(10, 12);
    return [NSString stringWithFormat:@"First namespace operations on values(10, 12):\n, Mod:- %d",mod];
   // return @"";
}
@end
