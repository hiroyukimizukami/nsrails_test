//
//  JpPluscNSRailsTestUser.h
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSRails.h"

@interface JpPluscNSRailsTestUser : NSRRemoteObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* passwd;
@property (nonatomic, strong) NSString* gender;

@end
