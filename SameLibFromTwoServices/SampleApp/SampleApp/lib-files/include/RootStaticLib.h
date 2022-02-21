//
//  RootStaticLib.h
//  RootStaticLib
//
//  Created by Ashish Awasthi on 2/21/22.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    Gen1,
    Gen2,
} ServiceType;
@interface RootStaticLib : NSObject

- (NSString *)messageFromService:(ServiceType) serviceType;
@end
