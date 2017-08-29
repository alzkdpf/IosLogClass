//
//  LogUtil.h
//  Created by Michael L on 2017. 8. 28..
//  Copyright © 2017년. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LogD(fmt,...) [LogUtil d:[LogUtil log:fmt,##__VA_ARGS__]]
#define LogW(fmt,...) [LogUtil w:[LogUtil log:fmt,##__VA_ARGS__]]
#define LogTodo(msg) [LogUtil todoLog:[LogUtil log:@"%s/[%s]:%d\n%@",__FILE__,__FUNCTION__,__LINE__,msg]];

@interface LogUtil : NSObject
+ (NSString *)log:(NSString *)str, ...;
@end