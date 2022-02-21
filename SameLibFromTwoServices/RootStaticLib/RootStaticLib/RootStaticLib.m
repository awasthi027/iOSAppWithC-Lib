//
//  RootStaticLib.m
//  RootStaticLib
//
//  Created by Ashish Awasthi on 2/21/22.
//

#import "RootStaticLib.h"
#import <ServiceGen2/ServiceGen2.h>
#import <ServiceGen1/ServiceGen1.h>

@implementation RootStaticLib

- (NSString *)messageFromService:(ServiceType) serviceType {
    NSString * meaage = @"";
    switch (serviceType) {
        case Gen1: {
            ServiceGen1 *obj = [ServiceGen1 new];
            meaage = [obj messageFromLib];
        }
            break;
            
        case Gen2: {
            ServiceGen2 *obj = [ServiceGen2 new];
            meaage = [obj messageFromLib];
        }
            break;
            
    }
    return  meaage;
}
@end
