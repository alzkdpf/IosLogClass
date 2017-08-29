//
//  LogUtil.m
//  Created by Michael L on 2017. 8. 28..
//  Copyright © 2017년. All rights reserved.
//

#import "LogUtil.h"

@implementation LogUtil
+ (NSString *)log:(NSString *)str, ...;
{
    NSString *output = @"";
    va_list args;
    va_start(args, str);
    output = [[NSString alloc] initWithFormat:str arguments:args];
    va_end(args);
    
    return output;
}

@end
