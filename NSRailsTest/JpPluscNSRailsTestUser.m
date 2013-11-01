//
//  JpPluscNSRailsTestUser.m
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import "JpPluscNSRailsTestUser.h"
#import "NSRails.h"

@implementation JpPluscNSRailsTestUser

+ (NSString *) remoteModelName
{
    return @"user";
}

+ (NSString *) remoteControllerName
{
    return @"users";
}

@end
